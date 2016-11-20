.class public interface abstract Lcom/google/common/graphics/ImageFactory;
.super Ljava/lang/Object;
.source "ImageFactory.java"


# virtual methods
.method public abstract createImage(II)Lcom/google/common/graphics/GoogleImage;
.end method

.method public abstract createImage(IIZ)Lcom/google/common/graphics/GoogleImage;
.end method

.method public abstract createImage([BII)Lcom/google/common/graphics/GoogleImage;
.end method

.method public abstract createUnscaledImage(Ljava/lang/String;)Lcom/google/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
