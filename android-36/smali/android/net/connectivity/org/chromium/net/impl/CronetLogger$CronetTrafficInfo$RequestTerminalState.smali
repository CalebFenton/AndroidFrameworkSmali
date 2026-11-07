.class public final enum Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestTerminalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public static final enum blacklist CANCELLED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public static final enum blacklist ERROR:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field public static final enum blacklist SUCCEEDED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 3

    .line 194
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    filled-new-array {v0, v1, v2}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 195
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 196
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 197
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    const-string v1, "CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 194
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->$values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

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

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
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

    .line 194
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 1

    .line 194
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0
.end method
