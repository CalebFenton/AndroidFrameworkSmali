.class public final Landroid/provider/CalendarContract$Reminders;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$RemindersColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reminders"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2098
    const-string/jumbo v0, "content://com.android.calendar/reminders"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 2095
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2115
    const/4 v0, 0x1

    #@1
    new-array v4, v0, [Ljava/lang/String;

    #@3
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    aput-object v0, v4, v1

    #@a
    .line 2116
    .local v4, "remArgs":[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    #@c
    const-string/jumbo v3, "event_id=?"

    #@f
    .line 2117
    const/4 v5, 0x0

    #@10
    move-object v0, p0

    #@11
    move-object v2, p3

    #@12
    .line 2116
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
