.class public final Lcom/android/org/conscrypt/HpkeSuite;
.super Ljava/lang/Object;
.source "HpkeSuite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/HpkeSuite$KEM;,
        Lcom/android/org/conscrypt/HpkeSuite$KDF;,
        Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    }
.end annotation


# static fields
.field public static final blacklist AEAD_AES_128_GCM:I = 0x1

.field public static final blacklist AEAD_AES_256_GCM:I = 0x2

.field public static final blacklist AEAD_CHACHA20POLY1305:I = 0x3

.field public static final blacklist KDF_HKDF_SHA256:I = 0x1

.field public static final blacklist KEM_DHKEM_X25519_HKDF_SHA256:I = 0x20


# instance fields
.field private final blacklist mAead:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

.field private final blacklist mKdf:Lcom/android/org/conscrypt/HpkeSuite$KDF;

.field private final blacklist mKem:Lcom/android/org/conscrypt/HpkeSuite$KEM;


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "kem"    # I
    .param p2, "kdf"    # I
    .param p3, "aead"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->forId(I)Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mKem:Lcom/android/org/conscrypt/HpkeSuite$KEM;

    .line 66
    invoke-static {p2}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->forId(I)Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mKdf:Lcom/android/org/conscrypt/HpkeSuite$KDF;

    .line 67
    invoke-static {p3}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->forId(I)Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mAead:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist convertAead(I)Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    .registers 3
    .param p1, "aead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->forId(I)Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertKdf(I)Lcom/android/org/conscrypt/HpkeSuite$KDF;
    .registers 3
    .param p1, "kdf"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-static {p1}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->forId(I)Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertKem(I)Lcom/android/org/conscrypt/HpkeSuite$KEM;
    .registers 3
    .param p1, "kem"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {p1}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->forId(I)Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAead()Lcom/android/org/conscrypt/HpkeSuite$AEAD;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mAead:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    return-object v0
.end method

.method public blacklist getKdf()Lcom/android/org/conscrypt/HpkeSuite$KDF;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mKdf:Lcom/android/org/conscrypt/HpkeSuite$KDF;

    return-object v0
.end method

.method public blacklist getKem()Lcom/android/org/conscrypt/HpkeSuite$KEM;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mKem:Lcom/android/org/conscrypt/HpkeSuite$KEM;

    return-object v0
.end method

.method public blacklist name()Ljava/lang/String;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeSuite;->mKem:Lcom/android/org/conscrypt/HpkeSuite$KEM;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/HpkeSuite;->mKdf:Lcom/android/org/conscrypt/HpkeSuite$KDF;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/HpkeSuite;->mAead:Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->name()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
