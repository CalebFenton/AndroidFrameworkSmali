.class public Landroid/provider/MediaStore$Video$Thumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DATA:Ljava/lang/String; = "_data"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "video_id ASC"

.field public static final whitelist EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist FULL_SCREEN_KIND:I = 0x2

.field public static final whitelist HEIGHT:Ljava/lang/String; = "height"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist KIND:Ljava/lang/String; = "kind"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist MICRO_KIND:I = 0x3

.field public static final whitelist MINI_KIND:I = 0x1

.field public static final whitelist VIDEO_ID:Ljava/lang/String; = "video_id"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist WIDTH:Ljava/lang/String; = "width"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4670
    nop

    .line 4671
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4677
    nop

    .line 4678
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4677
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4587
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4589
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/provider/MediaStore$InternalThumbnails;->cancelThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4590
    return-void
.end method

.method public static whitelist cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "videoId"    # J
    .param p3, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4631
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 4632
    return-void
.end method

.method public static whitelist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 4663
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4664
    const-string v1, "thumbnails"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 4663
    return-object v0
.end method

.method public static whitelist getKindSize(I)Landroid/util/Size;
    .registers 2
    .param p0, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4718
    invoke-static {p0}, Landroid/provider/MediaStore$ThumbnailConstants;->getKindSize(I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "videoId"    # J
    .param p3, "kind"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4610
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4612
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0, p3, p4}, Landroid/provider/MediaStore$InternalThumbnails;->getThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "videoId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4652
    invoke-static {p0, p1, p2, p5, p6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
