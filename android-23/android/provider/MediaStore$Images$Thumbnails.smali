.class public Landroid/provider/MediaStore$Images$Thumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "image_id ASC"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final FULL_SCREEN_KIND:I = 0x2

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final MICRO_KIND:I = 0x3

.field public static final MINI_KIND:I = 0x1

.field public static final THUMB_DATA:Ljava/lang/String; = "thumb_data"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1140
    const-string/jumbo v0, "internal"

    #@3
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1139
    sput-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1147
    const-string/jumbo v0, "external"

    #@c
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 1146
    sput-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@12
    .line 1045
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1045
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
    .line 1071
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 1072
    const-wide/16 v4, 0x0

    #@4
    move-object v0, p0

    #@5
    move-wide v1, p1

    #@6
    .line 1071
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$InternalThumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V

    #@9
    .line 1070
    return-void
.end method

.method public static cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J

    #@0
    .prologue
    .line 1103
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@2
    move-object v0, p0

    #@3
    move-wide v1, p1

    #@4
    move-wide v4, p3

    #@5
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$InternalThumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V

    #@8
    .line 1102
    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1132
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
    .line 1133
    const-string/jumbo v1, "/images/thumbnails"

    #@13
    .line 1132
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
    .line 1089
    const-wide/16 v4, 0x0

    #@2
    .line 1090
    sget-object v8, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@4
    const/4 v9, 0x0

    #@5
    move-object v1, p0

    #@6
    move-wide v2, p1

    #@7
    move v6, p3

    #@8
    move-object v7, p4

    #@9
    .line 1088
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
    .line 1121
    sget-object v8, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@2
    const/4 v9, 0x0

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
    .line 1120
    invoke-static/range {v1 .. v9}, Landroid/provider/MediaStore$InternalThumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1047
    const-string/jumbo v5, "image_id ASC"

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v4, v3

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "kind"    # I
    .param p4, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1057
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@3
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "image_id = "

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v2, " AND "

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v2, "kind"

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v2, " = "

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    move-object v0, p0

    #@31
    move-object v2, p4

    #@32
    move-object v5, v4

    #@33
    .line 1057
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public static final queryMiniThumbnails(Landroid/content/ContentResolver;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "kind"    # I
    .param p3, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "kind = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v5, "image_id ASC"

    #@17
    const/4 v4, 0x0

    #@18
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move-object v2, p3

    #@1b
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
