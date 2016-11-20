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
.field public static final CONTENT_EXCEPTION_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 1640
    const-string/jumbo v0, "content://com.android.calendar/events"

    #@8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    .line 1639
    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #@e
    .line 1648
    const-string/jumbo v0, "content://com.android.calendar/exception"

    #@11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    .line 1647
    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    #@17
    .line 1667
    const/16 v0, 0x18

    #@19
    new-array v0, v0, [Ljava/lang/String;

    #@1b
    .line 1668
    const-string/jumbo v1, "account_name"

    #@1e
    aput-object v1, v0, v3

    #@20
    .line 1669
    const-string/jumbo v1, "account_type"

    #@23
    aput-object v1, v0, v4

    #@25
    .line 1670
    const-string/jumbo v1, "cal_sync1"

    #@28
    aput-object v1, v0, v5

    #@2a
    .line 1671
    const-string/jumbo v1, "cal_sync2"

    #@2d
    aput-object v1, v0, v6

    #@2f
    .line 1672
    const-string/jumbo v1, "cal_sync3"

    #@32
    aput-object v1, v0, v7

    #@34
    .line 1673
    const-string/jumbo v1, "cal_sync4"

    #@37
    const/4 v2, 0x5

    #@38
    aput-object v1, v0, v2

    #@3a
    .line 1674
    const-string/jumbo v1, "cal_sync5"

    #@3d
    const/4 v2, 0x6

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 1675
    const-string/jumbo v1, "cal_sync6"

    #@43
    const/4 v2, 0x7

    #@44
    aput-object v1, v0, v2

    #@46
    .line 1676
    const-string/jumbo v1, "cal_sync7"

    #@49
    const/16 v2, 0x8

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 1677
    const-string/jumbo v1, "cal_sync8"

    #@50
    const/16 v2, 0x9

    #@52
    aput-object v1, v0, v2

    #@54
    .line 1678
    const-string/jumbo v1, "cal_sync9"

    #@57
    const/16 v2, 0xa

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 1679
    const-string/jumbo v1, "cal_sync10"

    #@5e
    const/16 v2, 0xb

    #@60
    aput-object v1, v0, v2

    #@62
    .line 1680
    const-string/jumbo v1, "allowedReminders"

    #@65
    const/16 v2, 0xc

    #@67
    aput-object v1, v0, v2

    #@69
    .line 1681
    const-string/jumbo v1, "allowedAttendeeTypes"

    #@6c
    const/16 v2, 0xd

    #@6e
    aput-object v1, v0, v2

    #@70
    .line 1682
    const-string/jumbo v1, "allowedAvailability"

    #@73
    const/16 v2, 0xe

    #@75
    aput-object v1, v0, v2

    #@77
    .line 1683
    const-string/jumbo v1, "calendar_access_level"

    #@7a
    const/16 v2, 0xf

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 1684
    const-string/jumbo v1, "calendar_color"

    #@81
    const/16 v2, 0x10

    #@83
    aput-object v1, v0, v2

    #@85
    .line 1685
    const-string/jumbo v1, "calendar_timezone"

    #@88
    const/16 v2, 0x11

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 1686
    const-string/jumbo v1, "canModifyTimeZone"

    #@8f
    const/16 v2, 0x12

    #@91
    aput-object v1, v0, v2

    #@93
    .line 1687
    const-string/jumbo v1, "canOrganizerRespond"

    #@96
    const/16 v2, 0x13

    #@98
    aput-object v1, v0, v2

    #@9a
    .line 1688
    const-string/jumbo v1, "calendar_displayName"

    #@9d
    const/16 v2, 0x14

    #@9f
    aput-object v1, v0, v2

    #@a1
    .line 1689
    const-string/jumbo v1, "canPartiallyUpdate"

    #@a4
    const/16 v2, 0x15

    #@a6
    aput-object v1, v0, v2

    #@a8
    .line 1690
    const-string/jumbo v1, "sync_events"

    #@ab
    const/16 v2, 0x16

    #@ad
    aput-object v1, v0, v2

    #@af
    .line 1691
    const-string/jumbo v1, "visible"

    #@b2
    const/16 v2, 0x17

    #@b4
    aput-object v1, v0, v2

    #@b6
    .line 1667
    sput-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    #@b8
    .line 1701
    const/16 v0, 0xd

    #@ba
    new-array v0, v0, [Ljava/lang/String;

    #@bc
    .line 1702
    const-string/jumbo v1, "_sync_id"

    #@bf
    aput-object v1, v0, v3

    #@c1
    .line 1703
    const-string/jumbo v1, "dirty"

    #@c4
    aput-object v1, v0, v4

    #@c6
    .line 1704
    const-string/jumbo v1, "mutators"

    #@c9
    aput-object v1, v0, v5

    #@cb
    .line 1705
    const-string/jumbo v1, "sync_data1"

    #@ce
    aput-object v1, v0, v6

    #@d0
    .line 1706
    const-string/jumbo v1, "sync_data2"

    #@d3
    aput-object v1, v0, v7

    #@d5
    .line 1707
    const-string/jumbo v1, "sync_data3"

    #@d8
    const/4 v2, 0x5

    #@d9
    aput-object v1, v0, v2

    #@db
    .line 1708
    const-string/jumbo v1, "sync_data4"

    #@de
    const/4 v2, 0x6

    #@df
    aput-object v1, v0, v2

    #@e1
    .line 1709
    const-string/jumbo v1, "sync_data5"

    #@e4
    const/4 v2, 0x7

    #@e5
    aput-object v1, v0, v2

    #@e7
    .line 1710
    const-string/jumbo v1, "sync_data6"

    #@ea
    const/16 v2, 0x8

    #@ec
    aput-object v1, v0, v2

    #@ee
    .line 1711
    const-string/jumbo v1, "sync_data7"

    #@f1
    const/16 v2, 0x9

    #@f3
    aput-object v1, v0, v2

    #@f5
    .line 1712
    const-string/jumbo v1, "sync_data8"

    #@f8
    const/16 v2, 0xa

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 1713
    const-string/jumbo v1, "sync_data9"

    #@ff
    const/16 v2, 0xb

    #@101
    aput-object v1, v0, v2

    #@103
    .line 1714
    const-string/jumbo v1, "sync_data10"

    #@106
    const/16 v2, 0xc

    #@108
    aput-object v1, v0, v2

    #@10a
    .line 1701
    sput-object v0, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    #@10c
    .line 1630
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
