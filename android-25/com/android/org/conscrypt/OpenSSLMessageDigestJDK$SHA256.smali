.class public Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;
.super Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.source "OpenSSLMessageDigestJDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256"
.end annotation


# static fields
.field private static final EVP_MD:J

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 182
    const-string/jumbo v0, "sha256"

    #@3
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;->EVP_MD:J

    #@9
    .line 183
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;->EVP_MD:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    #@e
    move-result v0

    #@f
    sput v0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;->SIZE:I

    #@11
    .line 181
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
    .line 185
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;->EVP_MD:J

    #@2
    sget v2, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;->SIZE:I

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/OpenSSLMessageDigestJDK;)V

    #@8
    .line 184
    return-void
.end method
