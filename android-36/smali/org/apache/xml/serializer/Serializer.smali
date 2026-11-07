.class public interface abstract Lorg/apache/xml/serializer/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# virtual methods
.method public abstract greylist asContentHandler()Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist asDOM3Serializer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist getOutputFormat()Ljava/util/Properties;
.end method

.method public abstract greylist getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract greylist getWriter()Ljava/io/Writer;
.end method

.method public abstract greylist reset()Z
.end method

.method public abstract greylist setOutputFormat(Ljava/util/Properties;)V
.end method

.method public abstract greylist setOutputStream(Ljava/io/OutputStream;)V
.end method

.method public abstract greylist setWriter(Ljava/io/Writer;)V
.end method
