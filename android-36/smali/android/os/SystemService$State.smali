.class public final enum Landroid/os/SystemService$State;
.super Ljava/lang/Enum;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/SystemService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/SystemService$State;

.field public static final enum greylist-max-o RESTARTING:Landroid/os/SystemService$State;

.field public static final enum greylist-max-o RUNNING:Landroid/os/SystemService$State;

.field public static final enum greylist-max-o STOPPED:Landroid/os/SystemService$State;

.field public static final enum greylist-max-o STOPPING:Landroid/os/SystemService$State;


# direct methods
.method private static synthetic blacklist $values()[Landroid/os/SystemService$State;
    .registers 4

    .line 38
    sget-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    sget-object v1, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    sget-object v3, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    filled-new-array {v0, v1, v2, v3}, [Landroid/os/SystemService$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 39
    new-instance v0, Landroid/os/SystemService$State;

    const/4 v1, 0x0

    const-string/jumbo v2, "running"

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    .line 40
    new-instance v0, Landroid/os/SystemService$State;

    const/4 v1, 0x1

    const-string/jumbo v2, "stopping"

    const-string v3, "STOPPING"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    .line 41
    new-instance v0, Landroid/os/SystemService$State;

    const/4 v1, 0x2

    const-string/jumbo v2, "stopped"

    const-string v3, "STOPPED"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    .line 42
    new-instance v0, Landroid/os/SystemService$State;

    const/4 v1, 0x3

    const-string/jumbo v2, "restarting"

    const-string v3, "RESTARTING"

    invoke-direct {v0, v3, v1, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    .line 38
    invoke-static {}, Landroid/os/SystemService$State;->$values()[Landroid/os/SystemService$State;

    move-result-object v0

    sput-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    invoke-static {}, Landroid/os/SystemService;->-$$Nest$sfgetsStates()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/os/SystemService$State;
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

    .line 38
    const-class v0, Landroid/os/SystemService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/SystemService$State;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/os/SystemService$State;
    .registers 1

    .line 38
    sget-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    invoke-virtual {v0}, [Landroid/os/SystemService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/SystemService$State;

    return-object v0
.end method
