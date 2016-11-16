.class public Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;
.super Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.source "AndroidKeyStoreHmacSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;-><init>(I)V

    #@4
    .line 42
    return-void
.end method
