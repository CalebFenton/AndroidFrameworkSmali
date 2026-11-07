.class public final Landroid/media/tv/TvContract$PreviewPrograms;
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
    name = "PreviewPrograms"
.end annotation


# static fields
.field public static final whitelist COLUMN_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final whitelist COLUMN_WEIGHT:Ljava/lang/String; = "weight"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/preview_program"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/preview_program"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3195
    const-string v0, "content://android.media.tv/preview_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvContract$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
