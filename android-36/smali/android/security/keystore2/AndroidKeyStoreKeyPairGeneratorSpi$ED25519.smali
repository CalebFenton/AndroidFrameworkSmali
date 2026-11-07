.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$ED25519;
.super Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ED25519"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 135
    const/16 v0, 0x4b4

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;-><init>(I)V

    .line 136
    return-void
.end method
