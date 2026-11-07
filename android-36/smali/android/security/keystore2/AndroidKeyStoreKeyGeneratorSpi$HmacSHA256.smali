.class public Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;-><init>(I)V

    .line 102
    return-void
.end method
