.class public Landroid/media/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALBUM:I = 0x8

.field public static final ALBUM_ART:I = 0x12

.field public static final ANY:I = 0x0

.field public static final ARTIST:I = 0x9

.field public static final AUDIO_BIT_RATE:I = 0x15

.field public static final AUDIO_CODEC:I = 0x1a

.field public static final AUDIO_SAMPLE_RATE:I = 0x17

.field public static final AUTHOR:I = 0xa

.field public static final BIT_RATE:I = 0x14

.field public static final BOOLEAN_VAL:I = 0x3

.field public static final BYTE_ARRAY_VAL:I = 0x7

.field public static final CD_TRACK_MAX:I = 0x10

.field public static final CD_TRACK_NUM:I = 0xf

.field public static final COMMENT:I = 0x6

.field public static final COMPOSER:I = 0xb

.field public static final COPYRIGHT:I = 0x7

.field public static final DATE:I = 0xd

.field public static final DATE_VAL:I = 0x6

.field public static final DOUBLE_VAL:I = 0x5

.field public static final DRM_CRIPPLED:I = 0x1f

.field public static final DURATION:I = 0xe

.field private static final FIRST_CUSTOM:I = 0x2000

.field public static final GENRE:I = 0xc

.field public static final INTEGER_VAL:I = 0x2

.field private static final LAST_SYSTEM:I = 0x1f

.field private static final LAST_TYPE:I = 0x7

.field public static final LONG_VAL:I = 0x4

.field public static final MATCH_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:I = 0x19

.field public static final NUM_TRACKS:I = 0x1e

.field public static final PAUSE_AVAILABLE:I = 0x1

.field public static final RATING:I = 0x11

.field public static final SEEK_AVAILABLE:I = 0x4

.field public static final SEEK_BACKWARD_AVAILABLE:I = 0x2

.field public static final SEEK_FORWARD_AVAILABLE:I = 0x3

.field public static final STRING_VAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "media.Metadata"

.field public static final TITLE:I = 0x5

.field public static final VIDEO_BIT_RATE:I = 0x16

.field public static final VIDEO_CODEC:I = 0x1b

.field public static final VIDEO_FRAME:I = 0x13

.field public static final VIDEO_FRAME_RATE:I = 0x18

.field public static final VIDEO_HEIGHT:I = 0x1c

.field public static final VIDEO_WIDTH:I = 0x1d

.field private static final kInt32Size:I = 0x4

.field private static final kMetaHeaderSize:I = 0x8

.field private static final kMetaMarker:I = 0x4d455441

.field private static final kRecordHeaderSize:I = 0xc


# instance fields
.field private final mKeyToPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 208
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    sput-object v0, Landroid/media/Metadata;->MATCH_NONE:Ljava/util/Set;

    #@4
    .line 212
    const/4 v0, 0x0

    #@5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Landroid/media/Metadata;->MATCH_ALL:Ljava/util/Set;

    #@f
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 262
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 261
    iput-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@a
    .line 267
    return-void
.end method

.method private checkMetadataId(I)Z
    .locals 4
    .param p1, "val"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 533
    if-lez p1, :cond_0

    #@3
    const/16 v0, 0x1f

    #@5
    if-ge v0, p1, :cond_1

    #@7
    const/16 v0, 0x2000

    #@9
    if-ge p1, v0, :cond_1

    #@b
    .line 534
    :cond_0
    const-string/jumbo v0, "media.Metadata"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid metadata ID "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 535
    return v3

    #@26
    .line 537
    :cond_1
    const/4 v0, 0x1

    #@27
    return v0
.end method

.method private checkType(II)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "expectedType"    # I

    #@0
    .prologue
    .line 544
    iget-object v2, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/Integer;

    #@c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v0

    #@10
    .line 546
    .local v0, "pos":I
    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@12
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@15
    .line 548
    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@17
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    .line 549
    .local v1, "type":I
    if-eq v1, p2, :cond_0

    #@1d
    .line 550
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Wrong type "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    const-string/jumbo v4, " but got "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 543
    :cond_0
    return-void
.end method

.method public static firstCustomId()I
    .locals 1

    #@0
    .prologue
    .line 519
    const/16 v0, 0x2000

    #@2
    return v0
.end method

.method public static lastSytemId()I
    .locals 1

    #@0
    .prologue
    .line 513
    const/16 v0, 0x1f

    #@2
    return v0
.end method

.method public static lastType()I
    .locals 1

    #@0
    .prologue
    .line 525
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method private scanAllRecords(Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bytesLeft"    # I

    #@0
    .prologue
    const/16 v11, 0xc

    #@2
    const/4 v10, 0x0

    #@3
    .line 294
    const/4 v4, 0x0

    #@4
    .line 295
    .local v4, "recCount":I
    const/4 v1, 0x0

    #@5
    .line 297
    .local v1, "error":Z
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    #@a
    .line 298
    :goto_0
    if-le p2, v11, :cond_0

    #@c
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v6

    #@10
    .line 301
    .local v6, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v5

    #@14
    .line 303
    .local v5, "size":I
    if-gt v5, v11, :cond_2

    #@16
    .line 304
    const-string/jumbo v7, "media.Metadata"

    #@19
    const-string/jumbo v8, "Record is too short"

    #@1c
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 305
    const/4 v1, 0x1

    #@20
    .line 348
    .end local v5    # "size":I
    .end local v6    # "start":I
    :cond_0
    :goto_1
    if-nez p2, :cond_1

    #@22
    if-eqz v1, :cond_7

    #@24
    .line 349
    :cond_1
    const-string/jumbo v7, "media.Metadata"

    #@27
    new-instance v8, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v9, "Ran out of data or error on record "

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 350
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@40
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    #@43
    .line 351
    return v10

    #@44
    .line 310
    .restart local v5    # "size":I
    .restart local v6    # "start":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    .line 311
    .local v2, "metadataId":I
    invoke-direct {p0, v2}, Landroid/media/Metadata;->checkMetadataId(I)Z

    #@4b
    move-result v7

    #@4c
    if-nez v7, :cond_3

    #@4e
    .line 312
    const/4 v1, 0x1

    #@4f
    .line 313
    goto :goto_1

    #@50
    .line 319
    :cond_3
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@59
    move-result v7

    #@5a
    if-eqz v7, :cond_4

    #@5c
    .line 320
    const-string/jumbo v7, "media.Metadata"

    #@5f
    const-string/jumbo v8, "Duplicate metadata ID found"

    #@62
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 321
    const/4 v1, 0x1

    #@66
    .line 322
    goto :goto_1

    #@67
    .line 325
    :cond_4
    iget-object v7, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@70
    move-result v9

    #@71
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v3

    #@7c
    .line 329
    .local v3, "metadataType":I
    if-lez v3, :cond_5

    #@7e
    const/4 v7, 0x7

    #@7f
    if-le v3, v7, :cond_6

    #@81
    .line 330
    :cond_5
    const-string/jumbo v7, "media.Metadata"

    #@84
    new-instance v8, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v9, "Invalid metadata type "

    #@8c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v8

    #@98
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 331
    const/4 v1, 0x1

    #@9c
    .line 332
    goto :goto_1

    #@9d
    .line 337
    :cond_6
    :try_start_0
    invoke-static {v6, v5}, Landroid/util/MathUtils;->addOrThrow(II)I

    #@a0
    move-result v7

    #@a1
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@a4
    .line 344
    sub-int/2addr p2, v5

    #@a5
    .line 345
    add-int/lit8 v4, v4, 0x1

    #@a7
    goto/16 :goto_0

    #@a9
    .line 338
    :catch_0
    move-exception v0

    #@aa
    .line 339
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "media.Metadata"

    #@ad
    new-instance v8, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v9, "Invalid size: "

    #@b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v8

    #@c1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v8

    #@c5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 340
    const/4 v1, 0x1

    #@c9
    .line 341
    goto/16 :goto_1

    #@cb
    .line 353
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "metadataId":I
    .end local v3    # "metadataType":I
    .end local v5    # "size":I
    .end local v6    # "start":I
    :cond_7
    const/4 v7, 0x1

    #@cc
    return v7
.end method


# virtual methods
.method public getBoolean(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 459
    const/4 v1, 0x3

    #@2
    invoke-direct {p0, p1, v1}, Landroid/media/Metadata;->checkType(II)V

    #@5
    .line 460
    iget-object v1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@7
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    if-ne v1, v0, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    .line 485
    const/4 v0, 0x7

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    #@4
    .line 486
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 6
    .param p1, "key"    # I

    #@0
    .prologue
    .line 493
    const/4 v5, 0x6

    #@1
    invoke-direct {p0, p1, v5}, Landroid/media/Metadata;->checkType(II)V

    #@4
    .line 494
    iget-object v5, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v2

    #@a
    .line 495
    .local v2, "timeSinceEpoch":J
    iget-object v5, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 497
    .local v1, "timeZone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_0

    #@16
    .line 498
    new-instance v5, Ljava/util/Date;

    #@18
    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1b
    return-object v5

    #@1c
    .line 500
    :cond_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1f
    move-result-object v4

    #@20
    .line 501
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@23
    move-result-object v0

    #@24
    .line 503
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@27
    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@2a
    move-result-object v5

    #@2b
    return-object v5
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 477
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    #@4
    .line 478
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    .line 451
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    #@4
    .line 452
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 467
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    #@4
    .line 470
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    .line 443
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    #@4
    .line 444
    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@6
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public has(I)Z
    .locals 3
    .param p1, "metadataId"    # I

    #@0
    .prologue
    .line 429
    invoke-direct {p0, p1}, Landroid/media/Metadata;->checkMetadataId(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid key: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 432
    :cond_0
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@6
    move-result v3

    #@7
    if-ge v3, v4, :cond_0

    #@9
    .line 387
    const-string/jumbo v3, "media.Metadata"

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Not enough data "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@1b
    move-result v5

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 388
    return v6

    #@28
    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2b
    move-result v1

    #@2c
    .line 392
    .local v1, "pin":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v2

    #@30
    .line 395
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@33
    move-result v3

    #@34
    add-int/lit8 v3, v3, 0x4

    #@36
    if-lt v3, v2, :cond_1

    #@38
    if-ge v2, v4, :cond_2

    #@3a
    .line 396
    :cond_1
    const-string/jumbo v3, "media.Metadata"

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Bad size "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    const-string/jumbo v5, " avail "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, " position "

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 397
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@71
    .line 398
    return v6

    #@72
    .line 402
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v0

    #@76
    .line 403
    .local v0, "kShouldBeMetaMarker":I
    const v3, 0x4d455441    # 2.06914576E8f

    #@79
    if-eq v0, v3, :cond_3

    #@7b
    .line 404
    const-string/jumbo v3, "media.Metadata"

    #@7e
    new-instance v4, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v5, "Marker missing "

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 405
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@9c
    .line 406
    return v6

    #@9d
    .line 410
    :cond_3
    add-int/lit8 v3, v2, -0x8

    #@9f
    invoke-direct {p0, p1, v3}, Landroid/media/Metadata;->scanAllRecords(Landroid/os/Parcel;I)Z

    #@a2
    move-result v3

    #@a3
    if-nez v3, :cond_4

    #@a5
    .line 411
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@a8
    .line 412
    return v6

    #@a9
    .line 414
    :cond_4
    iput-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    #@ab
    .line 415
    const/4 v3, 0x1

    #@ac
    return v3
.end method
