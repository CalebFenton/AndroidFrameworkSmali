.class final enum Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;
.super Ljava/lang/Enum;
.source "XoodyakDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field public static final enum blacklist ModeHash:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field public static final enum blacklist ModeKeyed:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    .registers 2

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeKeyed:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    filled-new-array {v0, v1}, [Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const-string v1, "ModeHash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const-string v1, "ModeKeyed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeKeyed:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    .line 40
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->$values()[Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;
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

    .line 40
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    return-object v0
.end method
