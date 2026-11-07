.class public interface abstract Landroid/provider/MediaStore$Audio$AlbumColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlbumColumns"
.end annotation


# static fields
.field public static final whitelist ALBUM:Ljava/lang/String; = "album"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist ALBUM_ART:Ljava/lang/String; = "album_art"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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

.field public static final whitelist ARTIST:Ljava/lang/String; = "artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

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

.field public static final whitelist FIRST_YEAR:Ljava/lang/String; = "minyear"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist LAST_YEAR:Ljava/lang/String; = "maxyear"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist NUMBER_OF_SONGS:Ljava/lang/String; = "numsongs"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist NUMBER_OF_SONGS_FOR_ARTIST:Ljava/lang/String; = "numsongs_by_artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field
