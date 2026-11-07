.class public final enum Landroid/net/NetworkInfo$DetailedState;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/NetworkInfo$DetailedState;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist BLOCKED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist CONNECTED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist CONNECTING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist FAILED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist IDLE:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist SCANNING:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

.field public static final enum whitelist VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/NetworkInfo$DetailedState;
    .registers 13

    .line 87
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    filled-new-array/range {v0 .. v12}, [Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 90
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 92
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "SCANNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 94
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 96
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "AUTHENTICATING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 98
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "OBTAINING_IPADDR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 100
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 102
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "SUSPENDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 104
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 106
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "DISCONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 108
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 110
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "BLOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 112
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "VERIFYING_POOR_LINK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 114
    new-instance v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "CAPTIVE_PORTAL_CHECK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$DetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 87
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->$values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkInfo$DetailedState;->$VALUES:[Landroid/net/NetworkInfo$DetailedState;

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

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
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

    .line 87
    const-class v0, Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static whitelist values()[Landroid/net/NetworkInfo$DetailedState;
    .registers 1

    .line 87
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->$VALUES:[Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, [Landroid/net/NetworkInfo$DetailedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method
