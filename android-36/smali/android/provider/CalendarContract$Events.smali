.class public final Landroid/provider/CalendarContract$Events;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final whitelist CONTENT_EXCEPTION_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final greylist-max-o DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static greylist-max-r PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

.field public static final greylist-max-r SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 25

    .line 1752
    nop

    .line 1753
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 1802
    nop

    .line 1803
    const-string v0, "content://com.android.calendar/enterprise/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 1810
    nop

    .line 1811
    const-string v0, "content://com.android.calendar/exception"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 1831
    const-string/jumbo v23, "sync_events"

    const-string/jumbo v24, "visible"

    const-string v1, "account_name"

    const-string v2, "account_type"

    const-string v3, "cal_sync1"

    const-string v4, "cal_sync2"

    const-string v5, "cal_sync3"

    const-string v6, "cal_sync4"

    const-string v7, "cal_sync5"

    const-string v8, "cal_sync6"

    const-string v9, "cal_sync7"

    const-string v10, "cal_sync8"

    const-string v11, "cal_sync9"

    const-string v12, "cal_sync10"

    const-string v13, "allowedReminders"

    const-string v14, "allowedAttendeeTypes"

    const-string v15, "allowedAvailability"

    const-string v16, "calendar_access_level"

    const-string v17, "calendar_color"

    const-string v18, "calendar_timezone"

    const-string v19, "canModifyTimeZone"

    const-string v20, "canOrganizerRespond"

    const-string v21, "calendar_displayName"

    const-string v22, "canPartiallyUpdate"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 1867
    const-string/jumbo v12, "sync_data9"

    const-string/jumbo v13, "sync_data10"

    const-string v1, "_sync_id"

    const-string v2, "dirty"

    const-string/jumbo v3, "mutators"

    const-string/jumbo v4, "sync_data1"

    const-string/jumbo v5, "sync_data2"

    const-string/jumbo v6, "sync_data3"

    const-string/jumbo v7, "sync_data4"

    const-string/jumbo v8, "sync_data5"

    const-string/jumbo v9, "sync_data6"

    const-string/jumbo v10, "sync_data7"

    const-string/jumbo v11, "sync_data8"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
