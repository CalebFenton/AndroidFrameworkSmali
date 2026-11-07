.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HmacBase"
.end annotation


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 4
    .param p1, "keymasterDigest"    # I

    .line 81
    nop

    .line 83
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    .line 81
    const/16 v1, 0x80

    invoke-direct {p0, v1, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    .line 84
    return-void
.end method
