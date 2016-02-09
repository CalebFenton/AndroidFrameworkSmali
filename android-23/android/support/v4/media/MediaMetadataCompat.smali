.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaMetadataCompat$TextKey;,
        Landroid/support/v4/media/MediaMetadataCompat$LongKey;,
        Landroid/support/v4/media/MediaMetadataCompat$BitmapKey;,
        Landroid/support/v4/media/MediaMetadataCompat$RatingKey;,
        Landroid/support/v4/media/MediaMetadataCompat$Builder;,
        Landroid/support/v4/media/MediaMetadataCompat$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_LONG:I = 0x0

.field private static final METADATA_TYPE_RATING:I = 0x3

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private mMetadataObj:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Landroid/support/v4/util/ArrayMap;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 240
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    #@6
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    #@9
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@b
    .line 241
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@d
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 242
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@19
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 243
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@25
    const-string/jumbo v1, "android.media.metadata.DURATION"

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 244
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@31
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 245
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@3d
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 246
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@49
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@4c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 247
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@55
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 248
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@61
    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    #@64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 249
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@6d
    const-string/jumbo v1, "android.media.metadata.DATE"

    #@70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 250
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@79
    const-string/jumbo v1, "android.media.metadata.YEAR"

    #@7c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 251
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@85
    const-string/jumbo v1, "android.media.metadata.GENRE"

    #@88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 252
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@91
    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    #@94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 253
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@9d
    const-string/jumbo v1, "android.media.metadata.NUM_TRACKS"

    #@a0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    .line 254
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@a9
    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    #@ac
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    .line 255
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@b5
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@b8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 256
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@c1
    const-string/jumbo v1, "android.media.metadata.ART"

    #@c4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 257
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@cd
    const-string/jumbo v1, "android.media.metadata.ART_URI"

    #@d0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d3
    move-result-object v2

    #@d4
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 258
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@d9
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    #@dc
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    .line 259
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@e5
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    #@e8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v2

    #@ec
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    .line 260
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@f1
    const-string/jumbo v1, "android.media.metadata.USER_RATING"

    #@f4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f7
    move-result-object v2

    #@f8
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 261
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@fd
    const-string/jumbo v1, "android.media.metadata.RATING"

    #@100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@103
    move-result-object v2

    #@104
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    .line 262
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@109
    const-string/jumbo v1, "android.media.metadata.DISPLAY_TITLE"

    #@10c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10f
    move-result-object v2

    #@110
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@113
    .line 263
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@115
    const-string/jumbo v1, "android.media.metadata.DISPLAY_SUBTITLE"

    #@118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11b
    move-result-object v2

    #@11c
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 264
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@121
    const-string/jumbo v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    #@124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@127
    move-result-object v2

    #@128
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    .line 265
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@12d
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    #@130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 266
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@139
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    #@13c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13f
    move-result-object v2

    #@140
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@143
    .line 267
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@145
    const-string/jumbo v1, "android.media.metadata.MEDIA_ID"

    #@148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14b
    move-result-object v2

    #@14c
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14f
    .line 270
    const/4 v0, 0x7

    #@150
    new-array v0, v0, [Ljava/lang/String;

    #@152
    .line 271
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@155
    aput-object v1, v0, v4

    #@157
    .line 272
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@15a
    aput-object v1, v0, v3

    #@15c
    .line 273
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@15f
    aput-object v1, v0, v5

    #@161
    .line 274
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@164
    aput-object v1, v0, v6

    #@166
    .line 275
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@169
    const/4 v2, 0x4

    #@16a
    aput-object v1, v0, v2

    #@16c
    .line 276
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@16f
    const/4 v2, 0x5

    #@170
    aput-object v1, v0, v2

    #@172
    .line 277
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@175
    const/4 v2, 0x6

    #@176
    aput-object v1, v0, v2

    #@178
    .line 270
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    #@17a
    .line 280
    new-array v0, v6, [Ljava/lang/String;

    #@17c
    .line 281
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    #@17f
    aput-object v1, v0, v4

    #@181
    .line 282
    const-string/jumbo v1, "android.media.metadata.ART"

    #@184
    aput-object v1, v0, v3

    #@186
    .line 283
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    #@189
    aput-object v1, v0, v5

    #@18b
    .line 280
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    #@18d
    .line 286
    new-array v0, v6, [Ljava/lang/String;

    #@18f
    .line 287
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    #@192
    aput-object v1, v0, v4

    #@194
    .line 288
    const-string/jumbo v1, "android.media.metadata.ART_URI"

    #@197
    aput-object v1, v0, v3

    #@199
    .line 289
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    #@19c
    aput-object v1, v0, v5

    #@19e
    .line 286
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    #@1a0
    .line 585
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$1;

    #@1a2
    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$1;-><init>()V

    #@1a5
    .line 584
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a7
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 297
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@a
    .line 296
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@9
    .line 300
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 8
    .param p0, "metadataObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 508
    if-eqz p0, :cond_0

    #@3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v6, 0x15

    #@7
    if-ge v5, v6, :cond_1

    #@9
    .line 509
    :cond_0
    return-object v7

    #@a
    .line 512
    :cond_1
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    #@c
    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    #@f
    .line 513
    .local v0, "builder":Landroid/support/v4/media/MediaMetadataCompat$Builder;
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompatApi21;->keySet(Ljava/lang/Object;)Ljava/util/Set;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;

    #@23
    .line 514
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@25
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Ljava/lang/Integer;

    #@2b
    .line 515
    .local v4, "type":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    #@2d
    .line 516
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@30
    move-result v5

    #@31
    packed-switch v5, :pswitch_data_0

    #@34
    goto :goto_0

    #@35
    .line 523
    :pswitch_0
    invoke-static {p0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    #@38
    move-result-wide v6

    #@39
    .line 522
    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    #@3c
    goto :goto_0

    #@3d
    .line 519
    :pswitch_1
    invoke-static {p0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getBitmap(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@40
    move-result-object v5

    #@41
    .line 518
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    #@44
    goto :goto_0

    #@45
    .line 527
    :pswitch_2
    invoke-static {p0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getRating(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    .line 526
    invoke-static {v5}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    #@50
    goto :goto_0

    #@51
    .line 531
    :pswitch_3
    invoke-static {p0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;

    #@54
    move-result-object v5

    #@55
    .line 530
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    #@58
    goto :goto_0

    #@59
    .line 536
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    #@5c
    move-result-object v3

    #@5d
    .line 537
    .local v3, "metadata":Landroid/support/v4/media/MediaMetadataCompat;
    iput-object p0, v3, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    #@5f
    .line 538
    return-object v3

    #@60
    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 458
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 379
    const/4 v1, 0x0

    #@1
    .line 381
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@3
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    move-object v0, v3

    #@8
    check-cast v0, Landroid/graphics/Bitmap;

    #@a
    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 386
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    #@c
    .line 382
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    #@d
    .line 384
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MediaMetadata"

    #@10
    const-string/jumbo v4, "Failed to retrieve a key as Bitmap."

    #@13
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getDescription()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 17

    #@0
    .prologue
    .line 395
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@4
    if-eqz v15, :cond_0

    #@6
    .line 396
    move-object/from16 v0, p0

    #@8
    iget-object v15, v0, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@a
    return-object v15

    #@b
    .line 399
    :cond_0
    const-string/jumbo v15, "android.media.metadata.MEDIA_ID"

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 401
    .local v8, "mediaId":Ljava/lang/String;
    const/4 v15, 0x3

    #@15
    new-array v12, v15, [Ljava/lang/CharSequence;

    #@17
    .line 402
    .local v12, "text":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    #@18
    .line 403
    .local v4, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    #@19
    .line 406
    .local v5, "iconUri":Landroid/net/Uri;
    const-string/jumbo v15, "android.media.metadata.DISPLAY_TITLE"

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@21
    move-result-object v2

    #@22
    .line 407
    .local v2, "displayText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v15

    #@26
    if-nez v15, :cond_4

    #@28
    .line 410
    const/4 v15, 0x0

    #@29
    aput-object v2, v12, v15

    #@2b
    .line 411
    const-string/jumbo v15, "android.media.metadata.DISPLAY_SUBTITLE"

    #@2e
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@33
    move-result-object v15

    #@34
    const/16 v16, 0x1

    #@36
    aput-object v15, v12, v16

    #@38
    .line 412
    const-string/jumbo v15, "android.media.metadata.DISPLAY_DESCRIPTION"

    #@3b
    move-object/from16 v0, p0

    #@3d
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@40
    move-result-object v15

    #@41
    const/16 v16, 0x2

    #@43
    aput-object v15, v12, v16

    #@45
    .line 427
    :cond_1
    const/4 v3, 0x0

    #@46
    .local v3, "i":I
    :goto_0
    sget-object v15, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    #@48
    array-length v15, v15

    #@49
    if-ge v3, v15, :cond_2

    #@4b
    .line 428
    sget-object v15, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    #@4d
    aget-object v15, v15, v3

    #@4f
    move-object/from16 v0, p0

    #@51
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@54
    move-result-object v9

    #@55
    .line 429
    .local v9, "next":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_6

    #@57
    .line 430
    move-object v4, v9

    #@58
    .line 436
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "next":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x0

    #@59
    :goto_1
    sget-object v15, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    #@5b
    array-length v15, v15

    #@5c
    if-ge v3, v15, :cond_3

    #@5e
    .line 437
    sget-object v15, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    #@60
    aget-object v15, v15, v3

    #@62
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v11

    #@68
    .line 438
    .local v11, "next":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6b
    move-result v15

    #@6c
    if-nez v15, :cond_7

    #@6e
    .line 439
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@71
    move-result-object v5

    #@72
    .line 444
    .end local v5    # "iconUri":Landroid/net/Uri;
    .end local v11    # "next":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@74
    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    #@77
    .line 445
    .local v1, "bob":Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    invoke-virtual {v1, v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@7a
    .line 446
    const/4 v15, 0x0

    #@7b
    aget-object v15, v12, v15

    #@7d
    invoke-virtual {v1, v15}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@80
    .line 447
    const/4 v15, 0x1

    #@81
    aget-object v15, v12, v15

    #@83
    invoke-virtual {v1, v15}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@86
    .line 448
    const/4 v15, 0x2

    #@87
    aget-object v15, v12, v15

    #@89
    invoke-virtual {v1, v15}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@8c
    .line 449
    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@8f
    .line 450
    invoke-virtual {v1, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    #@92
    .line 451
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    #@95
    move-result-object v15

    #@96
    move-object/from16 v0, p0

    #@98
    iput-object v15, v0, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@9a
    .line 453
    move-object/from16 v0, p0

    #@9c
    iget-object v15, v0, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@9e
    return-object v15

    #@9f
    .line 415
    .end local v1    # "bob":Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    .end local v3    # "i":I
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v5    # "iconUri":Landroid/net/Uri;
    :cond_4
    const/4 v13, 0x0

    #@a0
    .line 416
    .local v13, "textIndex":I
    const/4 v6, 0x0

    #@a1
    .line 417
    .local v6, "keyIndex":I
    :goto_2
    array-length v15, v12

    #@a2
    if-ge v13, v15, :cond_1

    #@a4
    sget-object v15, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    #@a6
    array-length v15, v15

    #@a7
    if-ge v6, v15, :cond_1

    #@a9
    .line 418
    sget-object v15, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    #@ab
    add-int/lit8 v7, v6, 0x1

    #@ad
    .end local v6    # "keyIndex":I
    .local v7, "keyIndex":I
    aget-object v15, v15, v6

    #@af
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v15}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b4
    move-result-object v10

    #@b5
    .line 419
    .local v10, "next":Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b8
    move-result v15

    #@b9
    if-nez v15, :cond_5

    #@bb
    .line 421
    add-int/lit8 v14, v13, 0x1

    #@bd
    .end local v13    # "textIndex":I
    .local v14, "textIndex":I
    aput-object v10, v12, v13

    #@bf
    move v13, v14

    #@c0
    .end local v14    # "textIndex":I
    .restart local v13    # "textIndex":I
    :cond_5
    move v6, v7

    #@c1
    .end local v7    # "keyIndex":I
    .restart local v6    # "keyIndex":I
    goto :goto_2

    #@c2
    .line 427
    .end local v6    # "keyIndex":I
    .end local v10    # "next":Ljava/lang/CharSequence;
    .end local v13    # "textIndex":I
    .restart local v3    # "i":I
    .restart local v9    # "next":Landroid/graphics/Bitmap;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@c4
    goto :goto_0

    #@c5
    .line 436
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "next":Landroid/graphics/Bitmap;
    .restart local v11    # "next":Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@c7
    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getMediaMetadata()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 552
    iget-object v4, p0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    #@2
    if-nez v4, :cond_0

    #@4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v5, 0x15

    #@8
    if-ge v4, v5, :cond_1

    #@a
    .line 553
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    #@c
    return-object v4

    #@d
    .line 556
    :cond_1
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->newInstance()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .line 557
    .local v0, "builderObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->keySet()Ljava/util/Set;

    #@14
    move-result-object v4

    #@15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/String;

    #@25
    .line 558
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    #@27
    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/lang/Integer;

    #@2d
    .line 559
    .local v3, "type":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    #@2f
    .line 560
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v4

    #@33
    packed-switch v4, :pswitch_data_0

    #@36
    goto :goto_0

    #@37
    .line 567
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    #@3a
    move-result-wide v4

    #@3b
    .line 566
    invoke-static {v0, v1, v4, v5}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putLong(Ljava/lang/Object;Ljava/lang/String;J)V

    #@3e
    goto :goto_0

    #@3f
    .line 563
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@42
    move-result-object v4

    #@43
    .line 562
    invoke-static {v0, v1, v4}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putBitmap(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #@46
    goto :goto_0

    #@47
    .line 571
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    .line 570
    invoke-static {v0, v1, v4}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putRating(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    #@52
    goto :goto_0

    #@53
    .line 575
    :pswitch_3
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@56
    move-result-object v4

    #@57
    .line 574
    invoke-static {v0, v1, v4}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@5a
    goto :goto_0

    #@5b
    .line 580
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/Integer;
    :cond_3
    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v4

    #@5f
    iput-object v4, p0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    #@61
    .line 581
    iget-object v4, p0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    #@63
    return-object v4

    #@64
    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 361
    const/4 v2, 0x0

    #@1
    .line 363
    .local v2, "rating":Landroid/support/v4/media/RatingCompat;
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@3
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    move-object v0, v3

    #@8
    check-cast v0, Landroid/support/v4/media/RatingCompat;

    #@a
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 368
    .end local v2    # "rating":Landroid/support/v4/media/RatingCompat;
    :goto_0
    return-object v2

    #@c
    .line 364
    .restart local v2    # "rating":Landroid/support/v4/media/RatingCompat;
    :catch_0
    move-exception v1

    #@d
    .line 366
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MediaMetadata"

    #@10
    const-string/jumbo v4, "Failed to retrieve a key as Rating."

    #@13
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 335
    iget-object v1, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@3
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 336
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@9
    .line 337
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 339
    :cond_0
    return-object v2
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5
    .line 462
    return-void
.end method
