.class final enum Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;
.super Ljava/lang/Enum;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

.field public static final enum blacklist NORMAL_CALL:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

.field public static final enum blacklist SOS_CALL:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;


# instance fields
.field public blacklist value:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;
    .registers 2

    .line 238
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->NORMAL_CALL:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->SOS_CALL:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    filled-new-array {v0, v1}, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 239
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    const/4 v1, 0x0

    const-string v2, "Normal Call"

    const-string v3, "NORMAL_CALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->NORMAL_CALL:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    .line 240
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    const/4 v1, 0x1

    const-string v2, "SOS Call"

    const-string v3, "SOS_CALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->SOS_CALL:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    .line 238
    invoke-static {}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->$values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->$VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
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

    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 244
    iput-object p3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->value:Ljava/lang/String;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 238
    const-class v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;
    .registers 1

    .line 238
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->$VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$CallType;

    return-object v0
.end method
