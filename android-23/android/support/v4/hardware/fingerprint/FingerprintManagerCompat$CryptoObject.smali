.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 109
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    #@6
    .line 110
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    #@8
    .line 111
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    #@a
    .line 108
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 116
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    #@6
    .line 117
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    #@8
    .line 118
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    #@a
    .line 115
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 122
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    #@6
    .line 123
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    #@8
    .line 124
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    #@a
    .line 121
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    #@2
    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    #@2
    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    #@2
    return-object v0
.end method
