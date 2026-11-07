.class public interface abstract Landroid/provider/MediaStore$MediaColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaColumns"
.end annotation


# static fields
.field public static final whitelist ALBUM:Ljava/lang/String; = "album"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist ALBUM_ARTIST:Ljava/lang/String; = "album_artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist ARTIST:Ljava/lang/String; = "artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist AUTHOR:Ljava/lang/String; = "author"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist BITRATE:Ljava/lang/String; = "bitrate"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist BUCKET_ID:Ljava/lang/String; = "bucket_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist CAPTURE_FRAMERATE:Ljava/lang/String; = "capture_framerate"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x2
    .end annotation
.end field

.field public static final whitelist CD_TRACK_NUMBER:Ljava/lang/String; = "cd_track_number"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist COMPILATION:Ljava/lang/String; = "compilation"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist COMPOSER:Ljava/lang/String; = "composer"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DATA:Ljava/lang/String; = "_data"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DATE_ADDED:Ljava/lang/String; = "date_added"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist DATE_EXPIRES:Ljava/lang/String; = "date_expires"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist DATE_MODIFIED:Ljava/lang/String; = "date_modified"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist DATE_TAKEN:Ljava/lang/String; = "datetaken"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist DISC_NUMBER:Ljava/lang/String; = "disc_number"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "_display_name"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DOCUMENT_ID:Ljava/lang/String; = "document_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist GENERATION_ADDED:Ljava/lang/String; = "generation_added"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist GENERATION_MODIFIED:Ljava/lang/String; = "generation_modified"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final blacklist GENERATION_MODIFIED_UNCHANGED:I = -0x1

.field public static final whitelist GENRE:Ljava/lang/String; = "genre"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final greylist GROUP_ID:Ljava/lang/String; = "group_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HEIGHT:Ljava/lang/String; = "height"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist INFERRED_DATE:Ljava/lang/String; = "inferred_date"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist INSTANCE_ID:Ljava/lang/String; = "instance_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist IS_DOWNLOAD:Ljava/lang/String; = "is_download"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_DRM:Ljava/lang/String; = "is_drm"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_FAVORITE:Ljava/lang/String; = "is_favorite"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_PENDING:Ljava/lang/String; = "is_pending"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_TRASHED:Ljava/lang/String; = "is_trashed"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "mime_type"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist NUM_TRACKS:Ljava/lang/String; = "num_tracks"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist OEM_METADATA:Ljava/lang/String; = "oem_metadata"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x4
    .end annotation
.end field

.field public static final whitelist ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist ORIGINAL_DOCUMENT_ID:Ljava/lang/String; = "original_document_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist OWNER_PACKAGE_NAME:Ljava/lang/String; = "owner_package_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist RELATIVE_PATH:Ljava/lang/String; = "relative_path"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist RESOLUTION:Ljava/lang/String; = "resolution"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist SIZE:Ljava/lang/String; = "_size"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist TITLE:Ljava/lang/String; = "title"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist VOLUME_NAME:Ljava/lang/String; = "volume_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist WIDTH:Ljava/lang/String; = "width"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist WRITER:Ljava/lang/String; = "writer"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist XMP:Ljava/lang/String; = "xmp"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x4
    .end annotation
.end field

.field public static final whitelist YEAR:Ljava/lang/String; = "year"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field
