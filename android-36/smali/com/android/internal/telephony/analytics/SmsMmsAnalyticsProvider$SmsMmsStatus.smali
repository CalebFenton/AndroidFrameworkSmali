.class final enum Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;
.super Ljava/lang/Enum;
.source "SmsMmsAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmsMmsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

.field public static final enum blacklist FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

.field public static final enum blacklist SUCCESS:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;


# instance fields
.field public final blacklist value:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;
    .registers 2

    .line 95
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->SUCCESS:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    filled-new-array {v0, v1}, [Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 96
    new-instance v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    const/4 v1, 0x0

    const-string v2, "Success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->SUCCESS:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    const/4 v1, 0x1

    const-string v2, "Failure"

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->$values()[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->$VALUES:[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

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

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    const-class v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;
    .registers 1

    .line 95
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->$VALUES:[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    return-object v0
.end method
