.class public final Landroid/provider/CalendarContract$Instances;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instances"
.end annotation


# static fields
.field public static final whitelist BEGIN:Ljava/lang/String; = "begin"

.field public static final whitelist CONTENT_BY_DAY_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_SEARCH_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final greylist-max-o DEFAULT_SORT_ORDER:Ljava/lang/String; = "begin ASC"

.field public static final whitelist END:Ljava/lang/String; = "end"

.field public static final whitelist END_DAY:Ljava/lang/String; = "endDay"

.field public static final whitelist END_MINUTE:Ljava/lang/String; = "endMinute"

.field public static final whitelist ENTERPRISE_CONTENT_BY_DAY_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_SEARCH_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final whitelist START_DAY:Ljava/lang/String; = "startDay"

.field public static final whitelist START_MINUTE:Ljava/lang/String; = "startMinute"

.field private static final greylist-max-o WHERE_CALENDARS_ARGS:[Ljava/lang/String;

.field private static final greylist-max-o WHERE_CALENDARS_SELECTED:Ljava/lang/String; = "visible=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1893
    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->WHERE_CALENDARS_ARGS:[Ljava/lang/String;

    .line 1962
    const-string v0, "content://com.android.calendar/instances/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    .line 1969
    nop

    .line 1970
    const-string v0, "content://com.android.calendar/instances/whenbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 1976
    const-string v0, "content://com.android.calendar/instances/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    .line 1983
    nop

    .line 1984
    const-string v0, "content://com.android.calendar/instances/searchbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    .line 2015
    nop

    .line 2016
    const-string v0, "content://com.android.calendar/enterprise/instances/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 2024
    nop

    .line 2025
    const-string v0, "content://com.android.calendar/enterprise/instances/whenbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->ENTERPRISE_CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 2033
    nop

    .line 2034
    const-string v0, "content://com.android.calendar/enterprise/instances/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->ENTERPRISE_CONTENT_SEARCH_URI:Landroid/net/Uri;

    .line 2043
    nop

    .line 2044
    const-string v0, "content://com.android.calendar/enterprise/instances/searchbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->ENTERPRISE_CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    .line 2043
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist query(Landroid/content/ContentResolver;[Ljava/lang/String;JJ)Landroid/database/Cursor;
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J

    .line 1919
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1920
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1921
    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1922
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Landroid/provider/CalendarContract$Instances;->WHERE_CALENDARS_ARGS:[Ljava/lang/String;

    const-string v6, "begin ASC"

    const-string/jumbo v4, "visible=?"

    move-object v1, p0

    move-object v3, p1

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "projection":[Ljava/lang/String;
    .local v1, "cr":Landroid/content/ContentResolver;
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "searchQuery"    # Ljava/lang/String;

    .line 1948
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1949
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1950
    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1951
    invoke-virtual {v0, p6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Landroid/provider/CalendarContract$Instances;->WHERE_CALENDARS_ARGS:[Ljava/lang/String;

    const-string v6, "begin ASC"

    const-string/jumbo v4, "visible=?"

    move-object v1, p0

    move-object v3, p1

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "projection":[Ljava/lang/String;
    .local v1, "cr":Landroid/content/ContentResolver;
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
