.class public final Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;
.super Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NONE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    #@4
    .line 41
    return-void
.end method


# virtual methods
.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 4
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 48
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;

    #@2
    .line 49
    invoke-super {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@5
    move-result-object v1

    #@6
    .line 50
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;->getGroupSizeBits()I

    #@9
    move-result v2

    #@a
    .line 48
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;)V

    #@e
    return-object v0
.end method
