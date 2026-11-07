.class public final Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase$ServiceStateAnalyticsTable;
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
    name = "ServiceStateAnalyticsTable"
.end annotation


# static fields
.field public static final blacklist DEVICE_STATUS:Ljava/lang/String; = "DeviceStatus"

.field public static final blacklist LOG_DATE:Ljava/lang/String; = "LogDate"

.field public static final blacklist RAT:Ljava/lang/String; = "RAT"

.field public static final blacklist RELEASE_VERSION:Ljava/lang/String; = "ReleaseVersion"

.field public static final blacklist SLOT_ID:Ljava/lang/String; = "SlotID"

.field public static final blacklist TABLE_NAME:Ljava/lang/String; = "ServiceStateLogs"

.field public static final blacklist TIME_DURATION:Ljava/lang/String; = "TimeDuration"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
