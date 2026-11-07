.class final enum Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;
.super Ljava/lang/Enum;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

.field public static final enum blacklist APM:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

.field public static final enum blacklist CELLULAR_OOS_WITH_IWLAN:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

.field public static final enum blacklist IN_SERVICE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

.field public static final enum blacklist NO_NETWORK_COVERAGE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

.field public static final enum blacklist SIM_ABSENT:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;
    .registers 5

    .line 620
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->APM:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->CELLULAR_OOS_WITH_IWLAN:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->NO_NETWORK_COVERAGE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    sget-object v3, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->SIM_ABSENT:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    sget-object v4, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->IN_SERVICE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 621
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    const-string v1, "APM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->APM:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 622
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    const-string v1, "CELLULAR_OOS_WITH_IWLAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->CELLULAR_OOS_WITH_IWLAN:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 623
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    const-string v1, "NO_NETWORK_COVERAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->NO_NETWORK_COVERAGE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 624
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    const-string v1, "SIM_ABSENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->SIM_ABSENT:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 625
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    const-string v1, "IN_SERVICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->IN_SERVICE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    .line 620
    invoke-static {}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->$values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->$VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

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

    .line 620
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 620
    const-class v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;
    .registers 1

    .line 620
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->$VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$DeviceStatus;

    return-object v0
.end method
