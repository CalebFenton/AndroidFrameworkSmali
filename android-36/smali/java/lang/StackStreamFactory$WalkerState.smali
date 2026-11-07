.class final enum Ljava/lang/StackStreamFactory$WalkerState;
.super Ljava/lang/Enum;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WalkerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/StackStreamFactory$WalkerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/StackStreamFactory$WalkerState;

.field public static final enum blacklist CLOSED:Ljava/lang/StackStreamFactory$WalkerState;

.field public static final enum blacklist NEW:Ljava/lang/StackStreamFactory$WalkerState;

.field public static final enum blacklist OPEN:Ljava/lang/StackStreamFactory$WalkerState;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/StackStreamFactory$WalkerState;
    .registers 3

    .line 103
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->NEW:Ljava/lang/StackStreamFactory$WalkerState;

    sget-object v1, Ljava/lang/StackStreamFactory$WalkerState;->OPEN:Ljava/lang/StackStreamFactory$WalkerState;

    sget-object v2, Ljava/lang/StackStreamFactory$WalkerState;->CLOSED:Ljava/lang/StackStreamFactory$WalkerState;

    filled-new-array {v0, v1, v2}, [Ljava/lang/StackStreamFactory$WalkerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StackStreamFactory$WalkerState;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/StackStreamFactory$WalkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackStreamFactory$WalkerState;->NEW:Ljava/lang/StackStreamFactory$WalkerState;

    .line 105
    new-instance v0, Ljava/lang/StackStreamFactory$WalkerState;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/StackStreamFactory$WalkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackStreamFactory$WalkerState;->OPEN:Ljava/lang/StackStreamFactory$WalkerState;

    .line 106
    new-instance v0, Ljava/lang/StackStreamFactory$WalkerState;

    const-string v1, "CLOSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/StackStreamFactory$WalkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/StackStreamFactory$WalkerState;->CLOSED:Ljava/lang/StackStreamFactory$WalkerState;

    .line 103
    invoke-static {}, Ljava/lang/StackStreamFactory$WalkerState;->$values()[Ljava/lang/StackStreamFactory$WalkerState;

    move-result-object v0

    sput-object v0, Ljava/lang/StackStreamFactory$WalkerState;->$VALUES:[Ljava/lang/StackStreamFactory$WalkerState;

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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/lang/StackStreamFactory$WalkerState;
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

    .line 103
    const-class v0, Ljava/lang/StackStreamFactory$WalkerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/StackStreamFactory$WalkerState;

    return-object v0
.end method

.method public static blacklist values()[Ljava/lang/StackStreamFactory$WalkerState;
    .registers 1

    .line 103
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->$VALUES:[Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {v0}, [Ljava/lang/StackStreamFactory$WalkerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackStreamFactory$WalkerState;

    return-object v0
.end method
