/*
* Controllo se un allegato si riferisca sempre a una foglia dell'albero delle risorse
*/
CREATE OR REPLACE FUNCTION media_is_resource_a_leaf ()
  RETURNS trigger AS $$
    DECLARE
      resource_tb record;
    BEGIN
        IF NEW.resource_id IS NOT NULL THEN
        /*WITH RECURSIVE tree AS (
          SELECT resource.id FROM resource WHERE id = NEW.resource_id
          UNION ALL

          SELECT r.id
          FROM resource r JOIN tree p ON p.id = r.parent
        ) SELECT * INTO resource_tb FROM tree WHERE id != NEW.resource_id;*/
        SELECT resource.id INTO resource_tb WHERE resource.parent = NEW.resource_id;
        IF resource_tb IS NOT NULL THEN
          RAISE EXCEPTION 'media_is_resource_a_leaf (%). resource_id is not a leaf', NEW.resource_id
            USING HINT = 'Please check your resource table';
        END IF;
      RETURN NEW;
    END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER media_is_resource_a_leaf_trigger
  BEFORE INSERT OR UPDATE
  ON attachment
  FOR EACH ROW EXECUTE PROCEDURE media_is_resource_a_leaf();
