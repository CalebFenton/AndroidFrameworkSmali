.class public final Landroid/provider/CalendarContract$CalendarEntity;
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
    name = "CalendarEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 493
    const-string/jumbo v0, "content://com.android.calendar/calendar_entities"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/CalendarContract$CalendarEntity;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 487
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 509
    new-instance v0, Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;

    #@2
    invoke-direct {v0, p0}, Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    #@5
    return-object v0
.end method
