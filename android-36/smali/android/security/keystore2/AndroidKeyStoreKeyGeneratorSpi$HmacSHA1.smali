.class public Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA1"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 89
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;-><init>(I)V

    .line 90
    return-void
.end method
