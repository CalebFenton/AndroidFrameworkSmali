.class interface abstract Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationStreamer.java"


# virtual methods
.method public abstract blacklist doFinal([BII[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract blacklist getConsumedInputSizeBytes()J
.end method

.method public abstract blacklist getProducedOutputSizeBytes()J
.end method

.method public abstract blacklist update([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method
