.class public final Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;
.super Ljava/lang/Object;
.source "TelephonyAnalyticsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase$ServiceStateAnalyticsTable;,
        Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase$SmsMmsAnalyticsTable;,
        Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase$CallAnalyticsTable;
    }
.end annotation


# static fields
.field public static final blacklist DATE_FORMAT:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const-string v0, "yyyy-MM-dd"

    .line 32
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
