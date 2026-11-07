.class public Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA512;
.super Landroid/security/keystore2/AndroidKeyStoreHmacSpi;
.source "AndroidKeyStoreHmacSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreHmacSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA512"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;-><init>(I)V

    .line 71
    return-void
.end method
