.class public final enum Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
.super Ljava/lang/Enum;
.source "AsconEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsconParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum blacklist ascon128:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum blacklist ascon128a:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum blacklist ascon80pq:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .registers 3

    .line 32
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon80pq"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon128a"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon128"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 32
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$values()[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
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

    .line 32
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-object v0
.end method
