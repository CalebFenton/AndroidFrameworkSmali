.class public final enum Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
.super Ljava/lang/Enum;
.source "AsconDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsconParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

.field public static final enum blacklist AsconHash:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

.field public static final enum blacklist AsconHashA:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    .registers 2

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->AsconHash:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->AsconHashA:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    filled-new-array {v0, v1}, [Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    const-string v1, "AsconHash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->AsconHash:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    const-string v1, "AsconHashA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->AsconHashA:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    .line 25
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->$values()[Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    return-object v0
.end method
