.class public final enum Landroid/net/NetworkInfo$State;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/NetworkInfo$State;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/NetworkInfo$State;

.field public static final enum whitelist CONNECTED:Landroid/net/NetworkInfo$State;

.field public static final enum whitelist CONNECTING:Landroid/net/NetworkInfo$State;

.field public static final enum whitelist DISCONNECTED:Landroid/net/NetworkInfo$State;

.field public static final enum whitelist DISCONNECTING:Landroid/net/NetworkInfo$State;

.field public static final enum whitelist SUSPENDED:Landroid/net/NetworkInfo$State;

.field public static final enum whitelist UNKNOWN:Landroid/net/NetworkInfo$State;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/NetworkInfo$State;
    .registers 6

    .line 75
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    filled-new-array/range {v0 .. v5}, [Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 77
    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "SUSPENDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    new-instance v0, Landroid/net/NetworkInfo$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 75
    invoke-static {}, Landroid/net/NetworkInfo$State;->$values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkInfo$State;->$VALUES:[Landroid/net/NetworkInfo$State;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
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

    .line 75
    const-class v0, Landroid/net/NetworkInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public static whitelist values()[Landroid/net/NetworkInfo$State;
    .registers 1

    .line 75
    sget-object v0, Landroid/net/NetworkInfo$State;->$VALUES:[Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, [Landroid/net/NetworkInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo$State;

    return-object v0
.end method
