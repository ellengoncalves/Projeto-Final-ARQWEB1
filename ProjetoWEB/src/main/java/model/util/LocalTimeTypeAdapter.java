package model.util;

import java.lang.reflect.Type;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class LocalTimeTypeAdapter implements 
    JsonSerializer<LocalTime>, JsonDeserializer<LocalTime> {

    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");

    @Override
    public LocalTime deserialize(JsonElement json, Type type, 
                                 JsonDeserializationContext context) 
            throws JsonParseException {
        return LocalTime.parse(json.getAsString(), formatter);
    }

    @Override
    public JsonElement serialize(LocalTime time, Type type, 
                                 JsonSerializationContext context) {
        return new JsonPrimitive(time.format(formatter));
    }
}