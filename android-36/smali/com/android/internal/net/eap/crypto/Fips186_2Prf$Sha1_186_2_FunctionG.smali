.class Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;
.super Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;
.source "Fips186_2Prf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/crypto/Fips186_2Prf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sha1_186_2_FunctionG"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/eap/crypto/Fips186_2Prf-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist finish()V
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;->processBlock()V

    .line 109
    return-void
.end method
