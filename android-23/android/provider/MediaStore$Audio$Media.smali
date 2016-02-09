.class public final Landroid/provider/MediaStore$Audio$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/audio"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "title_key"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/audio"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field private static final EXTERNAL_PATHS:[Ljava/lang/String;

.field public static final EXTRA_MAX_BYTES:Ljava/lang/String; = "android.provider.MediaStore.extra.MAX_BYTES"

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final RECORD_SOUND_ACTION:Ljava/lang/String; = "android.provider.MediaStore.RECORD_SOUND"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1408
    const-string/jumbo v1, "SECONDARY_STORAGE"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 1409
    .local v0, "secondary_storage":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .line 1410
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    sput-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_PATHS:[Ljava/lang/String;

    #@12
    .line 1443
    :goto_0
    const-string/jumbo v1, "internal"

    #@15
    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object v1

    #@19
    .line 1442
    sput-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@1b
    .line 1450
    const-string/jumbo v1, "external"

    #@1e
    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    .line 1449
    sput-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@24
    .line 1403
    return-void

    #@25
    .line 1412
    :cond_0
    const/4 v1, 0x0

    #@26
    new-array v1, v1, [Ljava/lang/String;

    #@28
    sput-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_PATHS:[Ljava/lang/String;

    #@2a
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1424
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
    .line 1425
    const-string/jumbo v1, "/audio/media"

    #@13
    .line 1424
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

.method public static getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1429
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_PATHS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 1430
    .local v0, "ep":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1431
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@10
    return-object v1

    #@11
    .line 1429
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1435
    .end local v0    # "ep":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1436
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@24
    .line 1435
    :goto_1
    return-object v1

    #@25
    .line 1436
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@27
    goto :goto_1
.end method
