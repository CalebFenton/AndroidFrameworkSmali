.class public interface abstract Lorg/apache/xpath/ExtensionsProvider;
.super Ljava/lang/Object;
.source "ExtensionsProvider.java"


# virtual methods
.method public abstract greylist elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract greylist extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract greylist extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract greylist functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method
