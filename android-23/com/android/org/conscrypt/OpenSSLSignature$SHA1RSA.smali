.class public final Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;
.super Lcom/android/org/conscrypt/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1RSA"
.end annotation


# static fields
.field private static final EVP_MD:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 226
    const-string/jumbo v0, "SHA1"

    #@3
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;->EVP_MD:J

    #@9
    .line 225
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;->EVP_MD:J

    #@2
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V

    #@8
    .line 227
    return-void
.end method
