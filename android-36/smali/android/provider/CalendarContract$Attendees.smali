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
.field private static final greylist-max-o ATTENDEES_WHERE:Ljava/lang/String; = "event_id=?"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 969
    const-string v0, "content://com.android.calendar/attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .line 987
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 988
    .local v5, "attArgs":[Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "event_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p3    # "projection":[Ljava/lang/String;
    .local v1, "cr":Landroid/content/ContentResolver;
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
