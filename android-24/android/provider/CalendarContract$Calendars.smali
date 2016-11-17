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
.field public static final CALENDAR_LOCATION:Ljava/lang/String; = "calendar_location"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "calendar_displayName"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 693
    const-string/jumbo v0, "content://com.android.calendar/calendars"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 720
    const/16 v0, 0x19

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    .line 721
    const-string/jumbo v1, "account_name"

    #@10
    const/4 v2, 0x0

    #@11
    aput-object v1, v0, v2

    #@13
    .line 722
    const-string/jumbo v1, "account_type"

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    .line 723
    const-string/jumbo v1, "_sync_id"

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 724
    const-string/jumbo v1, "dirty"

    #@22
    const/4 v2, 0x3

    #@23
    aput-object v1, v0, v2

    #@25
    .line 725
    const-string/jumbo v1, "mutators"

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 726
    const-string/jumbo v1, "ownerAccount"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 727
    const-string/jumbo v1, "maxReminders"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 728
    const-string/jumbo v1, "allowedReminders"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 729
    const-string/jumbo v1, "canModifyTimeZone"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    .line 730
    const-string/jumbo v1, "canOrganizerRespond"

    #@47
    const/16 v2, 0x9

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 731
    const-string/jumbo v1, "canPartiallyUpdate"

    #@4e
    const/16 v2, 0xa

    #@50
    aput-object v1, v0, v2

    #@52
    .line 732
    const-string/jumbo v1, "calendar_location"

    #@55
    const/16 v2, 0xb

    #@57
    aput-object v1, v0, v2

    #@59
    .line 733
    const-string/jumbo v1, "calendar_timezone"

    #@5c
    const/16 v2, 0xc

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 734
    const-string/jumbo v1, "calendar_access_level"

    #@63
    const/16 v2, 0xd

    #@65
    aput-object v1, v0, v2

    #@67
    .line 735
    const-string/jumbo v1, "deleted"

    #@6a
    const/16 v2, 0xe

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 736
    const-string/jumbo v1, "cal_sync1"

    #@71
    const/16 v2, 0xf

    #@73
    aput-object v1, v0, v2

    #@75
    .line 737
    const-string/jumbo v1, "cal_sync2"

    #@78
    const/16 v2, 0x10

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 738
    const-string/jumbo v1, "cal_sync3"

    #@7f
    const/16 v2, 0x11

    #@81
    aput-object v1, v0, v2

    #@83
    .line 739
    const-string/jumbo v1, "cal_sync4"

    #@86
    const/16 v2, 0x12

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 740
    const-string/jumbo v1, "cal_sync5"

    #@8d
    const/16 v2, 0x13

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 741
    const-string/jumbo v1, "cal_sync6"

    #@94
    const/16 v2, 0x14

    #@96
    aput-object v1, v0, v2

    #@98
    .line 742
    const-string/jumbo v1, "cal_sync7"

    #@9b
    const/16 v2, 0x15

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 743
    const-string/jumbo v1, "cal_sync8"

    #@a2
    const/16 v2, 0x16

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 744
    const-string/jumbo v1, "cal_sync9"

    #@a9
    const/16 v2, 0x17

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 745
    const-string/jumbo v1, "cal_sync10"

    #@b0
    const/16 v2, 0x18

    #@b2
    aput-object v1, v0, v2

    #@b4
    .line 720
    sput-object v0, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    #@b6
    .line 682
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
