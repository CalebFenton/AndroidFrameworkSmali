.class public final Landroid/provider/CalendarContract$Attendees;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$AttendeesColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attendees"
.end annotation


# static fields
.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=?"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 856
    const-string/jumbo v0, "content://com.android.calendar/attendees"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 850
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 862
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
    .line 874
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
    .line 875
    .local v4, "attArgs":[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #@c
    const-string/jumbo v3, "event_id=?"

    #@f
    .line 876
    const/4 v5, 0x0

    #@10
    move-object v0, p0

    #@11
    move-object v2, p3

    #@12
    .line 875
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
