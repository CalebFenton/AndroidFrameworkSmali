.class public final Landroid/provider/CalendarContract$Calendars;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Calendars"
.end annotation


# static fields
.field public static final whitelist CALENDAR_LOCATION:Ljava/lang/String; = "calendar_location"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "calendar_displayName"

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist NAME:Ljava/lang/String; = "name"

.field public static final greylist-max-o SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 26

    .line 772
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 804
    nop

    .line 805
    const-string v0, "content://com.android.calendar/enterprise/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Calendars;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 833
    const-string v24, "cal_sync9"

    const-string v25, "cal_sync10"

    const-string v1, "account_name"

    const-string v2, "account_type"

    const-string v3, "_sync_id"

    const-string v4, "dirty"

    const-string/jumbo v5, "mutators"

    const-string/jumbo v6, "ownerAccount"

    const-string/jumbo v7, "maxReminders"

    const-string v8, "allowedReminders"

    const-string v9, "canModifyTimeZone"

    const-string v10, "canOrganizerRespond"

    const-string v11, "canPartiallyUpdate"

    const-string v12, "calendar_location"

    const-string v13, "calendar_timezone"

    const-string v14, "calendar_access_level"

    const-string v15, "deleted"

    const-string v16, "cal_sync1"

    const-string v17, "cal_sync2"

    const-string v18, "cal_sync3"

    const-string v19, "cal_sync4"

    const-string v20, "cal_sync5"

    const-string v21, "cal_sync6"

    const-string v22, "cal_sync7"

    const-string v23, "cal_sync8"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
