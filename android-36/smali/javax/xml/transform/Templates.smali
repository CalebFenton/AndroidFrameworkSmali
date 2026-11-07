.class public interface abstract Ljavax/xml/transform/Templates;
.super Ljava/lang/Object;
.source "Templates.java"


# virtual methods
.method public abstract whitelist test-api getOutputProperties()Ljava/util/Properties;
.end method

.method public abstract whitelist test-api newTransformer()Ljavax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method
