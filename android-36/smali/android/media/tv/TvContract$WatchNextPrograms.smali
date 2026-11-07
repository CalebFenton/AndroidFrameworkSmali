.class public final Landroid/media/tv/TvContract$WatchNextPrograms;
.super Ljava/lang/Object;
.source "TvContract.java"

# interfaces
.implements Landroid/media/tv/TvContract$BaseTvColumns;
.implements Landroid/media/tv/TvContract$ProgramColumns;
.implements Landroid/media/tv/TvContract$PreviewProgramColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatchNextPrograms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$WatchNextPrograms$WatchNextType;
    }
.end annotation


# static fields
.field public static final whitelist COLUMN_LAST_ENGAGEMENT_TIME_UTC_MILLIS:Ljava/lang/String; = "last_engagement_time_utc_millis"

.field public static final whitelist COLUMN_WATCH_NEXT_TYPE:Ljava/lang/String; = "watch_next_type"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/watch_next_program"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/watch_next_program"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist WATCH_NEXT_TYPE_CONTINUE:I = 0x0

.field public static final whitelist WATCH_NEXT_TYPE_NEW:I = 0x2

.field public static final whitelist WATCH_NEXT_TYPE_NEXT:I = 0x1

.field public static final whitelist WATCH_NEXT_TYPE_WATCHLIST:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3247
    const-string v0, "content://android.media.tv/watch_next_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvContract$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
