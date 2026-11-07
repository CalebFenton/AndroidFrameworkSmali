.class final enum Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;
.super Ljava/lang/Enum;
.source "AsconEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist DecAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist DecData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist DecFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist EncAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist EncData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist EncInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum blacklist Uninitialized:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;
    .registers 9

    .line 39
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    filled-new-array/range {v0 .. v8}, [Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncInit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncAad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 44
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncFinal"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecInit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecAad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecFinal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 39
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->$values()[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;
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

    .line 39
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;
    .registers 1

    .line 39
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->$VALUES:[Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-object v0
.end method
