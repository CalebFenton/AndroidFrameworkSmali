.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadataRetriever$BitmapParams;,
        Landroid/media/MediaMetadataRetriever$Option;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final whitelist METADATA_KEY_ALBUM:I = 0x1

.field public static final whitelist METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final whitelist METADATA_KEY_ARTIST:I = 0x2

.field public static final whitelist METADATA_KEY_AUTHOR:I = 0x3

.field public static final whitelist METADATA_KEY_BITRATE:I = 0x14

.field public static final whitelist METADATA_KEY_BITS_PER_SAMPLE:I = 0x27

.field public static final whitelist METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final whitelist METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final whitelist METADATA_KEY_COLOR_RANGE:I = 0x25

.field public static final whitelist METADATA_KEY_COLOR_STANDARD:I = 0x23

.field public static final whitelist METADATA_KEY_COLOR_TRANSFER:I = 0x24

.field public static final whitelist METADATA_KEY_COMPILATION:I = 0xf

.field public static final whitelist METADATA_KEY_COMPOSER:I = 0x4

.field public static final whitelist METADATA_KEY_DATE:I = 0x5

.field public static final whitelist METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final whitelist METADATA_KEY_DURATION:I = 0x9

.field public static final whitelist METADATA_KEY_EXIF_LENGTH:I = 0x22

.field public static final whitelist METADATA_KEY_EXIF_OFFSET:I = 0x21

.field public static final whitelist METADATA_KEY_GENRE:I = 0x6

.field public static final whitelist METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final whitelist METADATA_KEY_HAS_IMAGE:I = 0x1a

.field public static final whitelist METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final whitelist METADATA_KEY_IMAGE_COUNT:I = 0x1b

.field public static final whitelist METADATA_KEY_IMAGE_HEIGHT:I = 0x1e

.field public static final whitelist METADATA_KEY_IMAGE_PRIMARY:I = 0x1c

.field public static final whitelist METADATA_KEY_IMAGE_ROTATION:I = 0x1f

.field public static final whitelist METADATA_KEY_IMAGE_WIDTH:I = 0x1d

.field public static final greylist-max-o METADATA_KEY_IS_DRM:I = 0x16

.field public static final whitelist METADATA_KEY_LOCATION:I = 0x17

.field public static final whitelist METADATA_KEY_MIMETYPE:I = 0xc

.field public static final whitelist METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final whitelist METADATA_KEY_SAMPLERATE:I = 0x26

.field public static final greylist-max-o METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final whitelist METADATA_KEY_TITLE:I = 0x7

.field public static final blacklist METADATA_KEY_VIDEO_CODEC_MIME_TYPE:I = 0x28
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist METADATA_KEY_VIDEO_FRAME_COUNT:I = 0x20

.field public static final whitelist METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final whitelist METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final whitelist METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final whitelist METADATA_KEY_WRITER:I = 0xb

.field public static final whitelist METADATA_KEY_XMP_LENGTH:I = 0x2a

.field public static final whitelist METADATA_KEY_XMP_OFFSET:I = 0x29

.field public static final whitelist METADATA_KEY_YEAR:I = 0x8

.field public static final whitelist OPTION_CLOSEST:I = 0x3

.field public static final whitelist OPTION_CLOSEST_SYNC:I = 0x2

.field public static final whitelist OPTION_NEXT_SYNC:I = 0x1

.field public static final whitelist OPTION_PREVIOUS_SYNC:I = 0x0

.field private static final blacklist STANDARD_GENRES:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "MediaMetadataRetriever"


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 149

    .line 59
    const-string v147, "Jpop"

    const-string v148, "Synthpop"

    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "BritPop"

    const-string v134, "Afro-Punk"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta Rap"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    .line 214
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    .line 216
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 226
    return-void
.end method

.method private native greylist-max-o _getFrameAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaMetadataRetriever$BitmapParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist _getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
.end method

.method private native greylist-max-o _getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
.end method

.method private native greylist-max-o _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native blacklist _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private blacklist convertGenreTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "meta"    # Ljava/lang/String;

    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 456
    return-object v1

    .line 459
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 462
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 463
    .local v0, "genreIndex":I
    if-ltz v0, :cond_23

    sget-object v2, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_23

    .line 464
    sget-object v2, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    aget-object v1, v2, v0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_22} :catch_24

    return-object v1

    .line 468
    .end local v0    # "genreIndex":I
    :cond_23
    goto :goto_25

    .line 466
    :catch_24
    move-exception v0

    .line 469
    :goto_25
    return-object v1

    .line 473
    :cond_26
    const/4 v0, 0x0

    .line 474
    .local v0, "genres":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 476
    .local v2, "nextGenre":Ljava/lang/String;
    :goto_28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 477
    if-nez v0, :cond_36

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 480
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_41

    .line 481
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/4 v2, 0x0

    .line 486
    :cond_45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 488
    nop

    .line 535
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_55

    goto :goto_59

    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_59
    :goto_59
    return-object v1

    .line 490
    :cond_5a
    const-string v3, "(RX)"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_6a

    .line 491
    const-string v2, "Remix"

    .line 492
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    .line 493
    :cond_6a
    const-string v3, "(CR)"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 494
    const-string v2, "Cover"

    .line 495
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    .line 496
    :cond_79
    const-string v3, "(("

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x29

    const/4 v6, 0x1

    if-eqz v3, :cond_9f

    .line 502
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 503
    .local v3, "closeParenOffset":I
    if-ne v3, v4, :cond_92

    .line 505
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    const-string p1, ""

    goto :goto_9e

    .line 508
    :cond_92
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 509
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 511
    .end local v3    # "closeParenOffset":I
    :goto_9e
    goto :goto_28

    :cond_9f
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 513
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 514
    .restart local v3    # "closeParenOffset":I
    if-ne v3, v4, :cond_ae

    .line 515
    return-object v1

    .line 517
    :cond_ae
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, "genreNumString":Ljava/lang/String;
    :try_start_b2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 520
    .local v5, "genreIndex":I
    if-ltz v5, :cond_cf

    sget-object v6, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_cf

    .line 521
    sget-object v6, Landroid/media/MediaMetadataRetriever;->STANDARD_GENRES:[Ljava/lang/String;

    aget-object v6, v6, v5
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_b2 .. :try_end_c5} :catch_d0

    move-object v2, v6

    .line 527
    .end local v5    # "genreIndex":I
    nop

    .line 528
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 529
    .end local v3    # "closeParenOffset":I
    .end local v4    # "genreNumString":Ljava/lang/String;
    goto/16 :goto_28

    .line 523
    .restart local v3    # "closeParenOffset":I
    .restart local v4    # "genreNumString":Ljava/lang/String;
    .restart local v5    # "genreIndex":I
    :cond_cf
    return-object v1

    .line 525
    .end local v5    # "genreIndex":I
    :catch_d0
    move-exception v5

    .line 526
    .local v5, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 531
    .end local v3    # "closeParenOffset":I
    .end local v4    # "genreNumString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_d2
    move-object v2, p1

    .line 532
    const-string p1, ""

    goto/16 :goto_28
.end method

.method private native greylist getEmbeddedPicture(I)[B
.end method

.method private greylist-max-o getFramesAtIndexInternal(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;
    .registers 8
    .param p1, "frameIndex"    # I
    .param p2, "numFrames"    # I
    .param p3, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaMetadataRetriever$BitmapParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 930
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 933
    nop

    .line 934
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 935
    .local v0, "frameCount":I
    if-ltz p1, :cond_29

    const/4 v1, 0x1

    if-lt p2, v1, :cond_29

    if-ge p1, v0, :cond_29

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_29

    .line 941
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 938
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid frameIndex or numFrames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    .end local v0    # "frameCount":I
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Does not contain video or image sequences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "imageIndex"    # I
    .param p2, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 1048
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1052
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "imageCount":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 1057
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->_getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1054
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid image index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    .end local v0    # "imageCount":Ljava/lang/String;
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Does not contain still images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist nativeExtractMetadata(I)Ljava/lang/String;
.end method

.method private final native greylist-max-p native_finalize()V
.end method

.method private static native greylist-max-p native_init()V
.end method

.method private native greylist-max-p native_setup()V
.end method

.method private blacklist validate(III)V
    .registers 7
    .param p1, "option"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .line 709
    if-ltz p1, :cond_3c

    const/4 v0, 0x3

    if-gt p1, v0, :cond_3c

    .line 712
    if-lez p2, :cond_23

    .line 715
    if-lez p3, :cond_a

    .line 718
    return-void

    .line 716
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1087
    return-void
.end method

.method public whitelist extractMetadata(I)Ljava/lang/String;
    .registers 4
    .param p1, "keyCode"    # I

    .line 427
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->nativeExtractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "meta":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p1, v1, :cond_b

    .line 430
    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->convertGenreTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_b
    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1109
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1112
    nop

    .line 1113
    return-void

    .line 1111
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1112
    throw v0
.end method

.method public whitelist getEmbeddedPicture()[B
    .registers 2

    .line 1070
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFrameAtIndex(I)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "frameIndex"    # I

    .line 865
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndex(II)Ljava/util/List;

    move-result-object v0

    .line 866
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public whitelist getFrameAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "frameIndex"    # I
    .param p2, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v0

    .line 844
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public whitelist getFrameAtTime()Landroid/graphics/Bitmap;
    .registers 8

    .line 767
    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getFrameAtTime(J)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "timeUs"    # J

    .line 745
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    .line 569
    if-ltz p3, :cond_10

    const/4 v0, 0x3

    if-gt p3, v0, :cond_10

    .line 574
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    .end local p1    # "timeUs":J
    .end local p3    # "option":I
    .local v2, "timeUs":J
    .local v4, "option":I
    invoke-direct/range {v1 .. v7}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 569
    .end local v2    # "timeUs":J
    .end local v4    # "option":I
    .restart local p1    # "timeUs":J
    .restart local p3    # "option":I
    :cond_10
    move-wide v2, p1

    move v4, p3

    .line 571
    .end local p1    # "timeUs":J
    .end local p3    # "option":I
    .restart local v2    # "timeUs":J
    .restart local v4    # "option":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported option: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 616
    if-ltz p3, :cond_10

    const/4 v0, 0x3

    if-gt p3, v0, :cond_10

    .line 621
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    .end local p1    # "timeUs":J
    .end local p3    # "option":I
    .end local p4    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    .local v2, "timeUs":J
    .local v4, "option":I
    .local v7, "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    invoke-direct/range {v1 .. v7}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 616
    .end local v2    # "timeUs":J
    .end local v4    # "option":I
    .end local v7    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    .restart local p1    # "timeUs":J
    .restart local p3    # "option":I
    .restart local p4    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    :cond_10
    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    .line 618
    .end local p1    # "timeUs":J
    .end local p3    # "option":I
    .end local p4    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    .restart local v2    # "timeUs":J
    .restart local v4    # "option":I
    .restart local v7    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported option: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFramesAtIndex(II)Ljava/util/List;
    .registers 4
    .param p1, "frameIndex"    # I
    .param p2, "numFrames"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndexInternal(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFramesAtIndex(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;
    .registers 5
    .param p1, "frameIndex"    # I
    .param p2, "numFrames"    # I
    .param p3, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaMetadataRetriever$BitmapParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 900
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFramesAtIndexInternal(IILandroid/media/MediaMetadataRetriever$BitmapParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImageAtIndex(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "imageIndex"    # I

    .line 1006
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "imageIndex"    # I
    .param p2, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 968
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaryImage()Landroid/graphics/Bitmap;
    .registers 3

    .line 1044
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaryImage(Landroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 1028
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaMetadataRetriever;->getImageAtIndexInternal(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "dstWidth"    # I
    .param p5, "dstHeight"    # I

    .line 658
    invoke-direct {p0, p3, p4, p5}, Landroid/media/MediaMetadataRetriever;->validate(III)V

    .line 659
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "timeUs":J
    .end local p3    # "option":I
    .end local p4    # "dstWidth":I
    .end local p5    # "dstHeight":I
    .local v1, "timeUs":J
    .local v3, "option":I
    .local v4, "dstWidth":I
    .local v5, "dstHeight":I
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "dstWidth"    # I
    .param p5, "dstHeight"    # I
    .param p6, "params"    # Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 704
    invoke-direct {p0, p3, p4, p5}, Landroid/media/MediaMetadataRetriever;->validate(III)V

    .line 705
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native greylist-max-o getThumbnailImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;II)Landroid/graphics/Bitmap;
.end method

.method public native whitelist release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 349
    if-eqz p2, :cond_eb

    .line 353
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_e2

    const-string v0, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v4, p0

    goto/16 :goto_e3

    .line 359
    :cond_13
    const/4 v2, 0x0

    .line 361
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_18} :catch_cf
    .catchall {:try_start_14 .. :try_end_18} :catchall_c1

    move-object v3, v0

    .line 363
    .local v3, "resolver":Landroid/content/ContentResolver;
    :try_start_19
    const-string v0, "fuse.sys.transcode_retriever_optimize"

    .line 364
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, "optimize":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v4, "opts":Landroid/os/Bundle;
    const-string v5, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    if-eqz v0, :cond_34

    const-string v5, "*/*"

    invoke-virtual {v3, p2, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    goto :goto_3a

    .line 368
    :cond_34
    const-string v5, "r"

    invoke-virtual {v3, p2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_3a} :catch_a2
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_3a} :catch_cf
    .catchall {:try_start_19 .. :try_end_3a} :catchall_c1

    :goto_3a
    move-object v2, v5

    .line 371
    .end local v0    # "optimize":Z
    .end local v4    # "opts":Landroid/os/Bundle;
    nop

    .line 372
    if-eqz v2, :cond_88

    .line 375
    :try_start_3e
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v5, v0

    .line 376
    .local v5, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v5}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 382
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_58

    .line 383
    invoke-virtual {p0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    move-object v4, p0

    goto :goto_64

    .line 385
    :cond_58
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v8
    :try_end_60
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_60} :catch_cf
    .catchall {:try_start_3e .. :try_end_60} :catchall_c1

    move-object v4, p0

    :try_start_61
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_64} :catch_bf
    .catchall {:try_start_61 .. :try_end_64} :catchall_bd

    .line 391
    :goto_64
    if-eqz v2, :cond_6c

    .line 392
    :try_start_66
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6c

    .line 394
    :catch_6a
    move-exception v0

    goto :goto_6d

    .line 395
    :cond_6c
    :goto_6c
    nop

    .line 387
    :goto_6d
    return-void

    .line 377
    :cond_6e
    move-object v4, p0

    :try_start_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got invalid FileDescriptor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v0

    .line 373
    .end local v5    # "descriptor":Ljava/io/FileDescriptor;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :cond_88
    move-object v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got null FileDescriptor for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v0

    .line 369
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_a2
    move-exception v0

    move-object v4, p0

    .line 370
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not access "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_bd
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_bd} :catch_bf
    .catchall {:try_start_6f .. :try_end_bd} :catchall_bd

    .line 390
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catchall_bd
    move-exception v0

    goto :goto_c3

    .line 388
    :catch_bf
    move-exception v0

    goto :goto_d1

    .line 390
    :catchall_c1
    move-exception v0

    move-object v4, p0

    :goto_c3
    move-object v3, v2

    move-object v2, v0

    .line 391
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_cd

    .line 392
    :try_start_c7
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_cd

    .line 394
    :catch_cb
    move-exception v0

    goto :goto_ce

    .line 395
    :cond_cd
    :goto_cd
    nop

    .line 396
    :goto_ce
    throw v2

    .line 388
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_cf
    move-exception v0

    move-object v4, p0

    .line 391
    :goto_d1
    if-eqz v2, :cond_d9

    .line 392
    :try_start_d3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_d9

    .line 394
    :catch_d7
    move-exception v0

    .line 396
    goto :goto_da

    .line 395
    :cond_d9
    :goto_d9
    nop

    .line 397
    :goto_da
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 398
    return-void

    .line 354
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_e2
    move-object v4, p0

    .line 355
    :goto_e3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 356
    return-void

    .line 350
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_eb
    move-object v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .registers 2
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 408
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 334
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 335
    return-void
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_2d

    move-object v1, v0

    .line 309
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_b

    .line 310
    :try_start_7
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_15

    .line 312
    :cond_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_20

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "offset":J
    .end local p4    # "length":J
    .local v4, "offset":J
    .local v6, "length":J
    :try_start_12
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 314
    .end local v4    # "offset":J
    .end local v6    # "length":J
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    :goto_15
    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_2d

    .line 316
    .end local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    :cond_1a
    goto :goto_35

    .line 308
    .end local p2    # "offset":J
    .end local p4    # "length":J
    .restart local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "offset":J
    .restart local v6    # "length":J
    :catchall_1b
    move-exception v0

    move-wide p2, v4

    move-wide p4, v6

    move-object v2, v0

    .end local v4    # "offset":J
    .end local v6    # "length":J
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    goto :goto_22

    :catchall_20
    move-exception v0

    move-object v2, v0

    :goto_22
    if-eqz v1, :cond_2c

    :try_start_24
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v0

    :try_start_29
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "length":J
    :cond_2c
    :goto_2c
    throw v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 314
    .end local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "length":J
    :catch_2d
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MediaMetadataRetriever"

    const-string v2, "Ignoring IO error while setting data source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v0    # "e":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method public whitelist setDataSource(Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 238
    if-eqz p1, :cond_7c

    .line 242
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 245
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    .line 246
    :cond_17
    if-eqz v2, :cond_22

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    return-void

    .line 251
    :cond_22
    :goto_22
    :try_start_22
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_27} :catch_62
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_48

    move-object v3, v0

    .line 252
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v5, v0

    .line 253
    .local v5, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v6, 0x0

    const-wide v8, 0x7ffffffffffffffL

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_3d

    .line 254
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_62
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_48

    .line 258
    .end local v3    # "is":Ljava/io/FileInputStream;
    nop

    .line 259
    return-void

    .line 251
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_3d
    move-exception v0

    move-object v4, v0

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "path":Ljava/lang/String;
    :goto_47
    throw v4
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_62
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    .line 256
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "scheme":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 257
    .local v0, "ioEx":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v0    # "ioEx":Ljava/io/IOException;
    :catch_62
    move-exception v0

    .line 255
    .local v0, "fileEx":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v0    # "fileEx":Ljava/io/FileNotFoundException;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 272
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 273
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 274
    .local v1, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 275
    .local v2, "values":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 276
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v0

    .line 277
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v0

    .line 278
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    .line 279
    goto :goto_15

    .line 281
    :cond_35
    nop

    .line 282
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 281
    invoke-direct {p0, v3, p1, v1, v2}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    return-void
.end method
