.class public interface abstract Landroid/provider/MediaStore$Video$VideoColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoColumns"
.end annotation


# static fields
.field public static final greylist ALBUM:Ljava/lang/String; = "album"

.field public static final greylist ARTIST:Ljava/lang/String; = "artist"

.field public static final whitelist BOOKMARK:Ljava/lang/String; = "bookmark"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final greylist BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final greylist BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final whitelist CATEGORY:Ljava/lang/String; = "category"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist COLOR_RANGE:Ljava/lang/String; = "color_range"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist COLOR_STANDARD:Ljava/lang/String; = "color_standard"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist COLOR_TRANSFER:Ljava/lang/String; = "color_transfer"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final greylist DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field public static final whitelist DESCRIPTION:Ljava/lang/String; = "description"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final greylist DURATION:Ljava/lang/String; = "duration"

.field public static final greylist GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final whitelist IS_PRIVATE:Ljava/lang/String; = "isprivate"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist LANGUAGE:Ljava/lang/String; = "language"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist LATITUDE:Ljava/lang/String; = "latitude"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LONGITUDE:Ljava/lang/String; = "longitude"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MINI_THUMB_MAGIC:Ljava/lang/String; = "mini_thumb_magic"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final whitelist TAGS:Ljava/lang/String; = "tags"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field
