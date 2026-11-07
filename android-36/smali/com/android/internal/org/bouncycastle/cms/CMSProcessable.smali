.class public interface abstract Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;
.super Ljava/lang/Object;
.source "CMSProcessable.java"


# virtual methods
.method public abstract blacklist getContent()Ljava/lang/Object;
.end method

.method public abstract blacklist write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method
