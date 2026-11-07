.class final enum Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
.super Ljava/lang/Enum;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UsapPoolRefillAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field public static final enum blacklist DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field public static final enum blacklist IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field public static final enum blacklist NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    .registers 3

    .line 132
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v1, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v2, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-string v1, "DELAYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 134
    new-instance v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 135
    new-instance v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 132
    invoke-static {}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->$values()[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->$VALUES:[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

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

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
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

    .line 132
    const-class v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->$VALUES:[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    invoke-virtual {v0}, [Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    return-object v0
.end method
