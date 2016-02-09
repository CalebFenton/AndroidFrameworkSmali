.class public Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    #@0
    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 269
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@5
    .line 270
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    #@7
    .line 268
    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@2
    return-object v0
.end method

.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    #@2
    return-object v0
.end method
