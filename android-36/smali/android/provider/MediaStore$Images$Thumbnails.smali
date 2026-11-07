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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DATA:Ljava/lang/String; = "_data"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "image_id ASC"

.field public static final whitelist EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist FULL_SCREEN_KIND:I = 0x2

.field public static final whitelist HEIGHT:Ljava/lang/String; = "height"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IMAGE_ID:Ljava/lang/String; = "image_id"
    .annotation runtime Landroid/provider/Column;
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

.field public static final whitelist THUMB_DATA:Ljava/lang/String; = "thumb_data"
    .annotation runtime Landroid/provider/Column;
        value = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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

    .line 3391
    nop

    .line 3392
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3398
    nop

    .line 3399
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3398
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3300
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3302
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/provider/MediaStore$InternalThumbnails;->cancelThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3303
    return-void
.end method

.method public static whitelist cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3348
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 3349
    return-void
.end method

.method public static whitelist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 3384
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3385
    const-string v1, "thumbnails"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3384
    return-object v0
.end method

.method public static whitelist getKindSize(I)Landroid/util/Size;
    .registers 2
    .param p0, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3442
    invoke-static {p0}, Landroid/provider/MediaStore$ThumbnailConstants;->getKindSize(I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "imageId"    # J
    .param p3, "kind"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3327
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3329
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0, p3, p4}, Landroid/provider/MediaStore$InternalThumbnails;->getThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "imageId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3373
    invoke-static {p0, p1, p2, p5, p6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3258
    const/4 v4, 0x0

    const-string v5, "image_id ASC"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "kind"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3280
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kind"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p4

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p4    # "projection":[Ljava/lang/String;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist queryMiniThumbnails(Landroid/content/ContentResolver;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "kind"    # I
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "image_id ASC"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .local v1, "cr":Landroid/content/ContentResolver;
    .local v2, "uri":Landroid/net/Uri;
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
