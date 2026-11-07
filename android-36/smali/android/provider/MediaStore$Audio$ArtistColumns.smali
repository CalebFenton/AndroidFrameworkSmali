.class public interface abstract Landroid/provider/MediaStore$Audio$ArtistColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArtistColumns"
.end annotation


# static fields
.field public static final whitelist ARTIST:Ljava/lang/String; = "artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
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

.field public static final whitelist NUMBER_OF_ALBUMS:Ljava/lang/String; = "number_of_albums"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist NUMBER_OF_TRACKS:Ljava/lang/String; = "number_of_tracks"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field
