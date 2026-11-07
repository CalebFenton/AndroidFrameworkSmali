.class public interface abstract Landroid/provider/MediaStore$Audio$AudioColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioColumns"
.end annotation


# static fields
.field public static final greylist ALBUM:Ljava/lang/String; = "album"

.field public static final greylist-max-o ALBUM_ARTIST:Ljava/lang/String; = "album_artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist ALBUM_ID:Ljava/lang/String; = "album_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist ALBUM_KEY:Ljava/lang/String; = "album_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist ARTIST:Ljava/lang/String; = "artist"

.field public static final whitelist ARTIST_ID:Ljava/lang/String; = "artist_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist ARTIST_KEY:Ljava/lang/String; = "artist_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BITS_PER_SAMPLE:Ljava/lang/String; = "bits_per_sample"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist BOOKMARK:Ljava/lang/String; = "bookmark"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final greylist COMPOSER:Ljava/lang/String; = "composer"

.field public static final greylist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist GENRE:Ljava/lang/String; = "genre"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist GENRE_ID:Ljava/lang/String; = "genre_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist GENRE_KEY:Ljava/lang/String; = "genre_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IS_ALARM:Ljava/lang/String; = "is_alarm"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_AUDIOBOOK:Ljava/lang/String; = "is_audiobook"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_MUSIC:Ljava/lang/String; = "is_music"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_NOTIFICATION:Ljava/lang/String; = "is_notification"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_PODCAST:Ljava/lang/String; = "is_podcast"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_RECORDING:Ljava/lang/String; = "is_recording"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist IS_RINGTONE:Ljava/lang/String; = "is_ringtone"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist SAMPLERATE:Ljava/lang/String; = "samplerate"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist TITLE_KEY:Ljava/lang/String; = "title_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TITLE_RESOURCE_URI:Ljava/lang/String; = "title_resource_uri"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist TRACK:Ljava/lang/String; = "track"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist YEAR:Ljava/lang/String; = "year"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field
