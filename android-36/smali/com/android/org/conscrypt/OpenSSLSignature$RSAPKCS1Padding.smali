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
.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "evpMdRef"    # J

    .line 279
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature-IA;)V

    .line 280
    return-void
.end method


# virtual methods
.method protected final blacklist configureEVP_PKEY_CTX(J)V
    .registers 4
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 286
    return-void
.end method
