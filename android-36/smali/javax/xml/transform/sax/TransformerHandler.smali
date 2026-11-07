.class public interface abstract Ljavax/xml/transform/sax/TransformerHandler;
.super Ljava/lang/Object;
.source "TransformerHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;


# virtual methods
.method public abstract whitelist test-api getSystemId()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getTransformer()Ljavax/xml/transform/Transformer;
.end method

.method public abstract whitelist test-api setResult(Ljavax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setSystemId(Ljava/lang/String;)V
.end method
