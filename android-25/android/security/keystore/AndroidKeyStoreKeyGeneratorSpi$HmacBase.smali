.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacBase;
.super Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HmacBase"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "keymasterDigest"    # I

    #@0
    .prologue
    .line 66
    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@3
    move-result v0

    #@4
    .line 64
    const/16 v1, 0x80

    #@6
    invoke-direct {p0, v1, p1, v0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    #@9
    .line 63
    return-void
.end method
