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


# static fields
.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "video_id ASC"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final FULL_SCREEN_KIND:I = 0x2

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final MICRO_KIND:I = 0x3

.field public static final MINI_KIND:I = 0x1

.field public static final VIDEO_ID:Ljava/lang/String; = "video_id"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2183
    const-string/jumbo v0, "internal"

    #@3
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 2182
    sput-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 2190
    const-string/jumbo v0, "external"

    #@c
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 2189
    sput-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@12
    .line 2104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J

    #@0
    .prologue
    .line 2114
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 2115
    const-wide/16 v4, 0x0

    #@4
    move-object v0, p0

    #@5
    move-wide v1, p1

    #@6
    .line 2114
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$InternalThumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V

    #@9
    .line 2113
    return-void
.end method

.method public static cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J

    #@0
    .prologue
    .line 2164
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@2
    move-object v0, p0

    #@3
    move-wide v1, p1

    #@4
    move-wide v4, p3

    #@5
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$InternalThumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V

    #@8
    .line 2163
    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "content://media/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 2176
    const-string/jumbo v1, "/video/thumbnails"

    #@13
    .line 2175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "kind"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 2132
    const-wide/16 v4, 0x0

    #@2
    .line 2133
    sget-object v8, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@4
    const/4 v9, 0x1

    #@5
    move-object v1, p0

    #@6
    move-wide v2, p1

    #@7
    move v6, p3

    #@8
    move-object v7, p4

    #@9
    .line 2131
    invoke-static/range {v1 .. v9}, Landroid/provider/MediaStore$InternalThumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 2151
    sget-object v8, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@2
    const/4 v9, 0x1

    #@3
    move-object v1, p0

    #@4
    move-wide v2, p1

    #@5
    move-wide v4, p3

    #@6
    move/from16 v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    .line 2150
    invoke-static/range {v1 .. v9}, Landroid/provider/MediaStore$InternalThumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
