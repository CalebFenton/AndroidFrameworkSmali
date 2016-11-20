.class abstract Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;
.super Lcom/android/org/conscrypt/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "RSAPKCS1Padding"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "evpMdRef"    # J

    #@0
    .prologue
    .line 281
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V

    #@6
    .line 280
    return-void
.end method


# virtual methods
.method protected final configureEVP_PKEY_CTX(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 286
    const/4 v0, 0x1

    #@1
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    #@4
    .line 285
    return-void
.end method
