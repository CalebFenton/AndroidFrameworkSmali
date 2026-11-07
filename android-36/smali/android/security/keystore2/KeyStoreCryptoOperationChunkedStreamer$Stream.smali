.class interface abstract Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Stream"
.end annotation


# virtual methods
.method public abstract blacklist finish([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract blacklist update([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method
