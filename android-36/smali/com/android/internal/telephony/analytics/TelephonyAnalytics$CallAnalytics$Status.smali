.class final enum Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;
.super Ljava/lang/Enum;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

.field public static final enum blacklist FAILURE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

.field public static final enum blacklist SUCCESS:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;


# instance fields
.field public blacklist value:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;
    .registers 2

    .line 228
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->SUCCESS:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->FAILURE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    filled-new-array {v0, v1}, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 229
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    const/4 v1, 0x0

    const-string v2, "Success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->SUCCESS:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    .line 230
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    const/4 v1, 0x1

    const-string v2, "Failure"

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->FAILURE:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    .line 228
    invoke-static {}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->$values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->$VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

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

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput-object p3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->value:Ljava/lang/String;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 228
    const-class v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;
    .registers 1

    .line 228
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->$VALUES:[Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics$Status;

    return-object v0
.end method
