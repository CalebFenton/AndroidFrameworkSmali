.class public final Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;
.super Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384RSA"
.end annotation


# static fields
.field private static final EVP_MD:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 315
    const-string/jumbo v0, "sha384"

    #@3
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;->EVP_MD:J

    #@9
    .line 314
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 317
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;->EVP_MD:J

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;-><init>(J)V

    #@5
    .line 316
    return-void
.end method
