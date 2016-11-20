.class public final Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;
.super Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1RSAPSS"
.end annotation


# static fields
.field private static final EVP_MD:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 520
    const-string/jumbo v0, "sha1"

    #@3
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;->EVP_MD:J

    #@9
    .line 519
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 522
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;->EVP_MD:J

    #@2
    const-string/jumbo v2, "SHA-1"

    #@5
    const/16 v3, 0x14

    #@7
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;-><init>(JLjava/lang/String;I)V

    #@a
    .line 521
    return-void
.end method
