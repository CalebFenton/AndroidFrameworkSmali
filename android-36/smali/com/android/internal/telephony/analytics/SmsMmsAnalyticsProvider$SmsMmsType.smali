.class final enum Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;
.super Ljava/lang/Enum;
.source "SmsMmsAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmsMmsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

.field public static final enum blacklist MMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

.field public static final enum blacklist MMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

.field public static final enum blacklist SMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

.field public static final enum blacklist SMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;


# instance fields
.field public final blacklist value:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;
    .registers 4

    .line 83
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    sget-object v2, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    sget-object v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 84
    new-instance v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    const/4 v1, 0x0

    const-string v2, "SMS Outgoing"

    const-string v3, "SMS_OUTGOING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    const/4 v1, 0x1

    const-string v2, "SMS Incoming"

    const-string v3, "SMS_INCOMING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    const/4 v1, 0x2

    const-string v2, "MMS Outgoing"

    const-string v3, "MMS_OUTGOING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    const/4 v1, 0x3

    const-string v2, "MMS Incoming"

    const-string v3, "MMS_INCOMING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->$values()[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->$VALUES:[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

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

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83
    const-class v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;
    .registers 1

    .line 83
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->$VALUES:[Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    return-object v0
.end method
