.class public interface abstract Landroid/provider/MediaStore$Files$FileColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileColumns"
.end annotation


# static fields
.field public static final greylist FORMAT:Ljava/lang/String; = "format"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist MEDIA_TYPE:Ljava/lang/String; = "media_type"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist MEDIA_TYPE_AUDIO:I = 0x2

.field public static final blacklist MEDIA_TYPE_COUNT:I = 0x7

.field public static final whitelist MEDIA_TYPE_DOCUMENT:I = 0x6

.field public static final whitelist MEDIA_TYPE_IMAGE:I = 0x1

.field public static final whitelist MEDIA_TYPE_NONE:I = 0x0

.field public static final whitelist MEDIA_TYPE_PLAYLIST:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEDIA_TYPE_SUBTITLE:I = 0x5

.field public static final whitelist MEDIA_TYPE_VIDEO:I = 0x3

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "mime_type"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist PARENT:Ljava/lang/String; = "parent"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final blacklist REDACTED_URI_ID:Ljava/lang/String; = "redacted_uri_id"

.field public static final greylist-max-r STORAGE_ID:Ljava/lang/String; = "storage_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TITLE:Ljava/lang/String; = "title"

.field public static final blacklist TRANSCODE_COMPLETE:I = 0x1

.field public static final blacklist TRANSCODE_EMPTY:I = 0x0

.field public static final blacklist _MODIFIER:Ljava/lang/String; = "_modifier"

.field public static final blacklist _MODIFIER_CR:I = 0x2

.field public static final blacklist _MODIFIER_CR_PENDING_METADATA:I = 0x4

.field public static final blacklist _MODIFIER_FUSE:I = 0x1

.field public static final blacklist _MODIFIER_MEDIA_SCAN:I = 0x3

.field public static final blacklist _MODIFIER_SCHEMA_UPDATE:I = 0x5

.field public static final blacklist _SPECIAL_FORMAT:Ljava/lang/String; = "_special_format"

.field public static final blacklist _SPECIAL_FORMAT_ANIMATED_WEBP:I = 0x3

.field public static final blacklist _SPECIAL_FORMAT_GIF:I = 0x1

.field public static final blacklist _SPECIAL_FORMAT_MOTION_PHOTO:I = 0x2

.field public static final blacklist _SPECIAL_FORMAT_NONE:I = 0x0

.field public static final blacklist _TRANSCODE_STATUS:Ljava/lang/String; = "_transcode_status"

.field public static final blacklist _USER_ID:Ljava/lang/String; = "_user_id"

.field public static final blacklist _VIDEO_CODEC_TYPE:Ljava/lang/String; = "_video_codec_type"
