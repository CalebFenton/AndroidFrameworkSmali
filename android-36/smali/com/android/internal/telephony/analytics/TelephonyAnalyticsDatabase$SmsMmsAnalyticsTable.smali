.class public final Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase$SmsMmsAnalyticsTable;
.super Ljava/lang/Object;
.source "TelephonyAnalyticsDatabase.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsMmsAnalyticsTable"
.end annotation


# static fields
.field public static final blacklist COUNT:Ljava/lang/String; = "Count"

.field public static final blacklist FAILURE_REASON:Ljava/lang/String; = "FailureReason"

.field public static final blacklist LOG_DATE:Ljava/lang/String; = "LogDate"

.field public static final blacklist RAT:Ljava/lang/String; = "RAT"

.field public static final blacklist RELEASE_VERSION:Ljava/lang/String; = "ReleaseVersion"

.field public static final blacklist SLOT_ID:Ljava/lang/String; = "SlotID"

.field public static final blacklist SMS_MMS_STATUS:Ljava/lang/String; = "SmsMmsStatus"

.field public static final blacklist SMS_MMS_TYPE:Ljava/lang/String; = "SmsMmsType"

.field public static final blacklist TABLE_NAME:Ljava/lang/String; = "SmsMmsDataLogs"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
