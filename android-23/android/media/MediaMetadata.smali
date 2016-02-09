.class public final Landroid/media/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadata$Builder;,
        Landroid/media/MediaMetadata$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDITOR_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
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

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_LONG:I = 0x0

.field private static final METADATA_TYPE_RATING:I = 0x3

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroid/media/MediaDescription;


# direct methods
.method static synthetic -get0()Landroid/util/ArrayMap;
    .locals 1

    #@0
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaMetadata;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    .line 235
    const/4 v0, 0x7

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 236
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@b
    aput-object v1, v0, v4

    #@d
    .line 237
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@10
    aput-object v1, v0, v3

    #@12
    .line 238
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@15
    aput-object v1, v0, v5

    #@17
    .line 239
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@1a
    aput-object v1, v0, v6

    #@1c
    .line 240
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@1f
    aput-object v1, v0, v7

    #@21
    .line 241
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 242
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 235
    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    #@2f
    .line 245
    new-array v0, v6, [Ljava/lang/String;

    #@31
    .line 246
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    #@34
    aput-object v1, v0, v4

    #@36
    .line 247
    const-string/jumbo v1, "android.media.metadata.ART"

    #@39
    aput-object v1, v0, v3

    #@3b
    .line 248
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    #@3e
    aput-object v1, v0, v5

    #@40
    .line 245
    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    #@42
    .line 251
    new-array v0, v6, [Ljava/lang/String;

    #@44
    .line 252
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    #@47
    aput-object v1, v0, v4

    #@49
    .line 253
    const-string/jumbo v1, "android.media.metadata.ART_URI"

    #@4c
    aput-object v1, v0, v3

    #@4e
    .line 254
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    #@51
    aput-object v1, v0, v5

    #@53
    .line 251
    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    #@55
    .line 265
    new-instance v0, Landroid/util/ArrayMap;

    #@57
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5a
    sput-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@5c
    .line 266
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@5e
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 267
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@6a
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@6d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 268
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@76
    const-string/jumbo v1, "android.media.metadata.DURATION"

    #@79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 269
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@82
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 270
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@8e
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 271
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@9a
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@9d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 272
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@a6
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@a9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    .line 273
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@b2
    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    #@b5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 274
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@be
    const-string/jumbo v1, "android.media.metadata.DATE"

    #@c1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c4
    move-result-object v2

    #@c5
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    .line 275
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@ca
    const-string/jumbo v1, "android.media.metadata.YEAR"

    #@cd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d0
    move-result-object v2

    #@d1
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    .line 276
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@d6
    const-string/jumbo v1, "android.media.metadata.GENRE"

    #@d9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dc
    move-result-object v2

    #@dd
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    .line 277
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@e2
    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    #@e5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e8
    move-result-object v2

    #@e9
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ec
    .line 278
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@ee
    const-string/jumbo v1, "android.media.metadata.NUM_TRACKS"

    #@f1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f8
    .line 279
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@fa
    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    #@fd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    .line 280
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@106
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10c
    move-result-object v2

    #@10d
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 281
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@112
    const-string/jumbo v1, "android.media.metadata.ART"

    #@115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    .line 282
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@11e
    const-string/jumbo v1, "android.media.metadata.ART_URI"

    #@121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@124
    move-result-object v2

    #@125
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    .line 283
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@12a
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    #@12d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@130
    move-result-object v2

    #@131
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@134
    .line 284
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@136
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    #@139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13c
    move-result-object v2

    #@13d
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@140
    .line 285
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@142
    const-string/jumbo v1, "android.media.metadata.USER_RATING"

    #@145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v2

    #@149
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14c
    .line 286
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@14e
    const-string/jumbo v1, "android.media.metadata.RATING"

    #@151
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@154
    move-result-object v2

    #@155
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    .line 287
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@15a
    const-string/jumbo v1, "android.media.metadata.DISPLAY_TITLE"

    #@15d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@160
    move-result-object v2

    #@161
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@164
    .line 288
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@166
    const-string/jumbo v1, "android.media.metadata.DISPLAY_SUBTITLE"

    #@169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16c
    move-result-object v2

    #@16d
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@170
    .line 289
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@172
    const-string/jumbo v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    #@175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@178
    move-result-object v2

    #@179
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17c
    .line 290
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@17e
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    #@181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@184
    move-result-object v2

    #@185
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@188
    .line 291
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@18a
    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    #@18d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@190
    move-result-object v2

    #@191
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@194
    .line 297
    new-instance v0, Landroid/util/SparseArray;

    #@196
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@199
    sput-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@19b
    .line 298
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@19d
    const-string/jumbo v1, "android.media.metadata.ART"

    #@1a0
    const/16 v2, 0x64

    #@1a2
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a5
    .line 299
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1a7
    const-string/jumbo v1, "android.media.metadata.RATING"

    #@1aa
    const/16 v2, 0x65

    #@1ac
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1af
    .line 300
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1b1
    const-string/jumbo v1, "android.media.metadata.USER_RATING"

    #@1b4
    const v2, 0x10000001

    #@1b7
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1ba
    .line 301
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1bc
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    #@1bf
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c2
    .line 302
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1c4
    .line 303
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    #@1c7
    .line 302
    const/16 v2, 0xd

    #@1c9
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1cc
    .line 304
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1ce
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    #@1d1
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1d4
    .line 305
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1d6
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    #@1d9
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1dc
    .line 306
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1de
    .line 307
    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    #@1e1
    .line 306
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1e4
    .line 308
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1e6
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    #@1e9
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1ec
    .line 309
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1ee
    .line 310
    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    #@1f1
    .line 309
    const/16 v2, 0xf

    #@1f3
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1f6
    .line 311
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@1f8
    const-string/jumbo v1, "android.media.metadata.DATE"

    #@1fb
    const/4 v2, 0x5

    #@1fc
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1ff
    .line 312
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@201
    .line 313
    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    #@204
    .line 312
    const/16 v2, 0xe

    #@206
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@209
    .line 314
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@20b
    const-string/jumbo v1, "android.media.metadata.DURATION"

    #@20e
    const/16 v2, 0x9

    #@210
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@213
    .line 315
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@215
    const-string/jumbo v1, "android.media.metadata.GENRE"

    #@218
    const/4 v2, 0x6

    #@219
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@21c
    .line 316
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@21e
    .line 317
    const-string/jumbo v1, "android.media.metadata.NUM_TRACKS"

    #@221
    .line 316
    const/16 v2, 0xa

    #@223
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@226
    .line 318
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@228
    const-string/jumbo v1, "android.media.metadata.TITLE"

    #@22b
    const/4 v2, 0x7

    #@22c
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22f
    .line 319
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@231
    const-string/jumbo v1, "android.media.metadata.WRITER"

    #@234
    const/16 v2, 0xb

    #@236
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@239
    .line 320
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@23b
    const-string/jumbo v1, "android.media.metadata.YEAR"

    #@23e
    const/16 v2, 0x8

    #@240
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@243
    .line 528
    new-instance v0, Landroid/media/MediaMetadata$1;

    #@245
    invoke-direct {v0}, Landroid/media/MediaMetadata$1;-><init>()V

    #@248
    .line 527
    sput-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24a
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    #@a
    .line 326
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    #@9
    .line 330
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getKeyFromMetadataEditorKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "editorKey"    # I

    #@0
    .prologue
    .line 524
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

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
    .line 422
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    const/4 v1, 0x0

    #@1
    .line 412
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

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
    .line 417
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    #@c
    .line 413
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    #@d
    .line 415
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MediaMetadata"

    #@10
    const-string/jumbo v4, "Failed to retrieve a key as Bitmap."

    #@13
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 17

    #@0
    .prologue
    .line 454
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    #@4
    if-eqz v15, :cond_0

    #@6
    .line 455
    move-object/from16 v0, p0

    #@8
    iget-object v15, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    #@a
    return-object v15

    #@b
    .line 458
    :cond_0
    const-string/jumbo v15, "android.media.metadata.MEDIA_ID"

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 460
    .local v8, "mediaId":Ljava/lang/String;
    const/4 v15, 0x3

    #@15
    new-array v12, v15, [Ljava/lang/CharSequence;

    #@17
    .line 461
    .local v12, "text":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    #@18
    .line 462
    .local v4, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    #@19
    .line 465
    .local v5, "iconUri":Landroid/net/Uri;
    const-string/jumbo v15, "android.media.metadata.DISPLAY_TITLE"

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@21
    move-result-object v2

    #@22
    .line 466
    .local v2, "displayText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v15

    #@26
    if-nez v15, :cond_4

    #@28
    .line 469
    const/4 v15, 0x0

    #@29
    aput-object v2, v12, v15

    #@2b
    .line 470
    const-string/jumbo v15, "android.media.metadata.DISPLAY_SUBTITLE"

    #@2e
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@33
    move-result-object v15

    #@34
    const/16 v16, 0x1

    #@36
    aput-object v15, v12, v16

    #@38
    .line 471
    const-string/jumbo v15, "android.media.metadata.DISPLAY_DESCRIPTION"

    #@3b
    move-object/from16 v0, p0

    #@3d
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@40
    move-result-object v15

    #@41
    const/16 v16, 0x2

    #@43
    aput-object v15, v12, v16

    #@45
    .line 486
    :cond_1
    const/4 v3, 0x0

    #@46
    .local v3, "i":I
    :goto_0
    sget-object v15, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    #@48
    array-length v15, v15

    #@49
    if-ge v3, v15, :cond_2

    #@4b
    .line 487
    sget-object v15, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    #@4d
    aget-object v15, v15, v3

    #@4f
    move-object/from16 v0, p0

    #@51
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@54
    move-result-object v9

    #@55
    .line 488
    .local v9, "next":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_6

    #@57
    .line 489
    move-object v4, v9

    #@58
    .line 495
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "next":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x0

    #@59
    :goto_1
    sget-object v15, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    #@5b
    array-length v15, v15

    #@5c
    if-ge v3, v15, :cond_3

    #@5e
    .line 496
    sget-object v15, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    #@60
    aget-object v15, v15, v3

    #@62
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v11

    #@68
    .line 497
    .local v11, "next":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6b
    move-result v15

    #@6c
    if-nez v15, :cond_7

    #@6e
    .line 498
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@71
    move-result-object v5

    #@72
    .line 503
    .end local v5    # "iconUri":Landroid/net/Uri;
    .end local v11    # "next":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/media/MediaDescription$Builder;

    #@74
    invoke-direct {v1}, Landroid/media/MediaDescription$Builder;-><init>()V

    #@77
    .line 504
    .local v1, "bob":Landroid/media/MediaDescription$Builder;
    invoke-virtual {v1, v8}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    #@7a
    .line 505
    const/4 v15, 0x0

    #@7b
    aget-object v15, v12, v15

    #@7d
    invoke-virtual {v1, v15}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    #@80
    .line 506
    const/4 v15, 0x1

    #@81
    aget-object v15, v12, v15

    #@83
    invoke-virtual {v1, v15}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    #@86
    .line 507
    const/4 v15, 0x2

    #@87
    aget-object v15, v12, v15

    #@89
    invoke-virtual {v1, v15}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    #@8c
    .line 508
    invoke-virtual {v1, v4}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    #@8f
    .line 509
    invoke-virtual {v1, v5}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    #@92
    .line 510
    invoke-virtual {v1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    #@95
    move-result-object v15

    #@96
    move-object/from16 v0, p0

    #@98
    iput-object v15, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    #@9a
    .line 512
    move-object/from16 v0, p0

    #@9c
    iget-object v15, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    #@9e
    return-object v15

    #@9f
    .line 474
    .end local v1    # "bob":Landroid/media/MediaDescription$Builder;
    .end local v3    # "i":I
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v5    # "iconUri":Landroid/net/Uri;
    :cond_4
    const/4 v13, 0x0

    #@a0
    .line 475
    .local v13, "textIndex":I
    const/4 v6, 0x0

    #@a1
    .line 476
    .local v6, "keyIndex":I
    :goto_2
    array-length v15, v12

    #@a2
    if-ge v13, v15, :cond_1

    #@a4
    sget-object v15, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    #@a6
    array-length v15, v15

    #@a7
    if-ge v6, v15, :cond_1

    #@a9
    .line 477
    sget-object v15, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    #@ab
    add-int/lit8 v7, v6, 0x1

    #@ad
    .end local v6    # "keyIndex":I
    .local v7, "keyIndex":I
    aget-object v15, v15, v6

    #@af
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b4
    move-result-object v10

    #@b5
    .line 478
    .local v10, "next":Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b8
    move-result v15

    #@b9
    if-nez v15, :cond_5

    #@bb
    .line 480
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
    .line 486
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
    .line 495
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
    .line 381
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getRating(Ljava/lang/String;)Landroid/media/Rating;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    const/4 v2, 0x0

    #@1
    .line 394
    .local v2, "rating":Landroid/media/Rating;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    #@3
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    move-object v0, v3

    #@8
    check-cast v0, Landroid/media/Rating;

    #@a
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 399
    .end local v2    # "rating":Landroid/media/Rating;
    :goto_0
    return-object v2

    #@c
    .line 395
    .restart local v2    # "rating":Landroid/media/Rating;
    :catch_0
    move-exception v1

    #@d
    .line 397
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
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 366
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@4
    move-result-object v0

    #@5
    .line 367
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@7
    .line 368
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 370
    :cond_0
    return-object v1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

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
    .line 445
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

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
    .line 436
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

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
    .line 427
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5
    .line 426
    return-void
.end method
