.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$EC;
.super Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 109
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;-><init>(I)V

    .line 110
    return-void
.end method
