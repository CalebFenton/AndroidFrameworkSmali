.class public final Landroid/provider/CalendarContract$EventDays;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/CalendarContract$EventDaysColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDays"
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final greylist-max-o SELECTION:Ljava/lang/String; = "selected=1"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2233
    const-string v0, "content://com.android.calendar/instances/groupbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventDays;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist query(Landroid/content/ContentResolver;II[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "startDay"    # I
    .param p2, "numDays"    # I
    .param p3, "projection"    # [Ljava/lang/String;

    .line 2258
    const/4 v0, 0x1

    if-ge p2, v0, :cond_5

    .line 2259
    const/4 v0, 0x0

    return-object v0

    .line 2261
    :cond_5
    add-int v1, p1, p2

    sub-int/2addr v1, v0

    .line 2262
    .local v1, "endDay":I
    sget-object v0, Landroid/provider/CalendarContract$EventDays;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2263
    .local v0, "builder":Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 2264
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 2265
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const-string/jumbo v9, "startDay"

    const-string/jumbo v7, "selected=1"

    move-object v4, p0

    move-object v6, p3

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p3    # "projection":[Ljava/lang/String;
    .local v4, "cr":Landroid/content/ContentResolver;
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
