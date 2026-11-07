.class final enum Landroid/uwb/RangingSession$State;
.super Ljava/lang/Enum;
.source "RangingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/uwb/RangingSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/uwb/RangingSession$State;

.field public static final enum blacklist ACTIVE:Landroid/uwb/RangingSession$State;

.field public static final enum blacklist CLOSED:Landroid/uwb/RangingSession$State;

.field public static final enum blacklist IDLE:Landroid/uwb/RangingSession$State;

.field public static final enum blacklist INIT:Landroid/uwb/RangingSession$State;


# direct methods
.method private static synthetic blacklist $values()[Landroid/uwb/RangingSession$State;
    .registers 4

    .line 63
    sget-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    sget-object v2, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    sget-object v3, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    filled-new-array {v0, v1, v2, v3}, [Landroid/uwb/RangingSession$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Landroid/uwb/RangingSession$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    .line 73
    new-instance v0, Landroid/uwb/RangingSession$State;

    const-string v1, "IDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    .line 78
    new-instance v0, Landroid/uwb/RangingSession$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    .line 83
    new-instance v0, Landroid/uwb/RangingSession$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    .line 63
    invoke-static {}, Landroid/uwb/RangingSession$State;->$values()[Landroid/uwb/RangingSession$State;

    move-result-object v0

    sput-object v0, Landroid/uwb/RangingSession$State;->$VALUES:[Landroid/uwb/RangingSession$State;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/uwb/RangingSession$State;
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

    .line 63
    const-class v0, Landroid/uwb/RangingSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession$State;

    return-object v0
.end method

.method public static blacklist values()[Landroid/uwb/RangingSession$State;
    .registers 1

    .line 63
    sget-object v0, Landroid/uwb/RangingSession$State;->$VALUES:[Landroid/uwb/RangingSession$State;

    invoke-virtual {v0}, [Landroid/uwb/RangingSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/uwb/RangingSession$State;

    return-object v0
.end method
