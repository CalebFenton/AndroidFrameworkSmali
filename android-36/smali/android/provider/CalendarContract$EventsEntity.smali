.class public final Landroid/provider/CalendarContract$EventsEntity;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventsEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1389
    const-string v0, "content://com.android.calendar/event_entities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "provider"    # Landroid/content/ContentProviderClient;

    .line 1419
    new-instance v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;

    invoke-direct {v0, p0, p1}, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V

    return-object v0
.end method

.method public static whitelist newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 1406
    new-instance v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;

    invoke-direct {v0, p0, p1}, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    return-object v0
.end method
