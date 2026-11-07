.class final Lcom/android/org/conscrypt/EvpMdRef$SHA1;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/EvpMdRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHA1"
.end annotation


# static fields
.field static final blacklist EVP_MD:J

.field static final blacklist JCA_NAME:Ljava/lang/String; = "SHA-1"

.field static final blacklist OID:Ljava/lang/String; = "1.3.14.3.2.26"

.field static final blacklist SIZE_BYTES:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 117
    const-string v0, "sha1"

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    .line 118
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
