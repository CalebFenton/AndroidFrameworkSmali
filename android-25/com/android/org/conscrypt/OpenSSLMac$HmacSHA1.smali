.class public Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA1"
.end annotation


# static fields
.field private static final EVP_MD:J

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "sha1"

    #@3
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->EVP_MD:J

    #@9
    .line 166
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->EVP_MD:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    #@e
    move-result v0

    #@f
    sput v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->SIZE:I

    #@11
    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 169
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->EVP_MD:J

    #@2
    sget v2, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->SIZE:I

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JILcom/android/org/conscrypt/OpenSSLMac;)V

    #@8
    .line 168
    return-void
.end method
