.class public final enum Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestFailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public static final enum blacklist NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public static final enum blacklist OTHER:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field public static final enum blacklist UNKNOWN:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 3

    .line 201
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    filled-new-array {v0, v1, v2}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 202
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->UNKNOWN:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 203
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    const-string v1, "NETWORK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 204
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 201
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->$values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

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

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
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

    .line 201
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 1

    .line 201
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-object v0
.end method
