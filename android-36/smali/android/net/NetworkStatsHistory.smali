.class public final Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$Entry;,
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Builder;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FIELD_ACTIVE_TIME:I = 0x1

.field public static final greylist-max-o FIELD_ALL:I = -0x1

.field public static final greylist-max-o FIELD_OPERATIONS:I = 0x20

.field public static final greylist-max-o FIELD_RX_BYTES:I = 0x2

.field public static final greylist-max-o FIELD_RX_PACKETS:I = 0x4

.field public static final greylist-max-o FIELD_TX_BYTES:I = 0x8

.field public static final greylist-max-o FIELD_TX_PACKETS:I = 0x10

.field private static final greylist-max-o VERSION_ADD_ACTIVE:I = 0x3

.field private static final greylist-max-o VERSION_ADD_PACKETS:I = 0x2

.field private static final greylist-max-o VERSION_INIT:I = 0x1


# instance fields
.field private greylist-max-o activeTime:[J

.field private greylist-max-o bucketCount:I

.field private greylist-max-o bucketDuration:J

.field private greylist-max-o bucketStart:[J

.field private greylist-max-o operations:[J

.field private greylist-max-o rxBytes:[J

.field private greylist-max-o rxPackets:[J

.field private greylist-max-o totalBytes:J

.field private greylist-max-o txBytes:[J

.field private greylist-max-o txPackets:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1002
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(J)V
    .registers 5
    .param p1, "bucketDuration"    # J

    .line 287
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 288
    return-void
.end method

.method public constructor greylist-max-o <init>(JI)V
    .registers 5
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I

    .line 292
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 293
    return-void
.end method

.method public constructor greylist-max-o <init>(JII)V
    .registers 7
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I
    .param p4, "fields"    # I

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 298
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 299
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 300
    :cond_11
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_19

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 301
    :cond_19
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_21

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 302
    :cond_21
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_29

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 303
    :cond_29
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_31

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 304
    :cond_31
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_39

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 305
    :cond_39
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 307
    return-void
.end method

.method public constructor blacklist <init>(J[J[J[J[J[J[J[JIJ)V
    .registers 13
    .param p1, "bucketDuration"    # J
    .param p3, "bucketStart"    # [J
    .param p4, "activeTime"    # [J
    .param p5, "rxBytes"    # [J
    .param p6, "rxPackets"    # [J
    .param p7, "txBytes"    # [J
    .param p8, "txPackets"    # [J
    .param p9, "operations"    # [J
    .param p10, "bucketCount"    # I
    .param p11, "totalBytes"    # J

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 114
    iput-object p3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 115
    iput-object p4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 116
    iput-object p5, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 117
    iput-object p6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 118
    iput-object p7, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 119
    iput-object p8, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 120
    iput-object p9, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 121
    iput p10, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 122
    iput-wide p11, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 123
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkStatsHistory;J)V
    .registers 5
    .param p1, "existing"    # Landroid/net/NetworkStatsHistory;
    .param p2, "bucketDuration"    # J

    .line 311
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 312
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 313
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 319
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 320
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 321
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 322
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 323
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 324
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 325
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 326
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 328
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/DataInput;)V
    .registers 7
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 346
    .local v0, "version":I
    packed-switch v0, :pswitch_data_e6

    .line 375
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :pswitch_23
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 362
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 363
    const/4 v1, 0x3

    if-lt v0, v1, :cond_37

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    goto :goto_3c

    .line 364
    :cond_37
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    :goto_3c
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 365
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 366
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 367
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 368
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 369
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 370
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 371
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 372
    goto :goto_b3

    .line 348
    :pswitch_71
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 349
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 350
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 351
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 352
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 353
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 354
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 355
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 356
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 357
    nop

    .line 379
    :goto_b3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_de

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_de

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_de

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_de

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_de

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_de

    .line 384
    return-void

    .line 382
    :cond_de
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Mismatched history lengths"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_71
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private static greylist-max-o addLong([JIJ)V
    .registers 6
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 1023
    if-eqz p0, :cond_7

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 1024
    :cond_7
    return-void
.end method

.method private static blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V
    .registers 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "tag"    # J
    .param p3, "array"    # [J
    .param p4, "index"    # I

    .line 970
    if-eqz p3, :cond_7

    .line 971
    aget-wide v0, p3, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 973
    :cond_7
    return-void
.end method

.method private greylist-max-o ensureBuckets(JJ)V
    .registers 10
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 642
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v0, p1, v0

    sub-long/2addr p1, v0

    .line 643
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v2, p3, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v0, v2

    add-long/2addr p3, v0

    .line 645
    move-wide v0, p1

    .local v0, "now":J
    :goto_11
    cmp-long v2, v0, p3

    if-gez v2, :cond_28

    .line 647
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v3, 0x0

    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2

    .line 648
    .local v2, "index":I
    if-gez v2, :cond_24

    .line 650
    not-int v3, v2

    invoke-direct {p0, v3, v0, v1}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 645
    .end local v2    # "index":I
    :cond_24
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    goto :goto_11

    .line 653
    .end local v0    # "now":J
    :cond_28
    return-void
.end method

.method private static greylist-max-o getLong([JIJ)J
    .registers 6
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 1015
    if-eqz p0, :cond_5

    aget-wide v0, p0, p1

    goto :goto_6

    :cond_5
    move-wide v0, p2

    :goto_6
    return-wide v0
.end method

.method private greylist-max-o insertBucket(IJ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "start"    # J

    .line 660
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    if-lt v0, v1, :cond_64

    .line 661
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 662
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 663
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 664
    :cond_28
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 665
    :cond_34
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 666
    :cond_40
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 667
    :cond_4c
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_58

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 668
    :cond_58
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_64

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 672
    .end local v0    # "newLength":I
    :cond_64
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v0, :cond_b6

    .line 673
    add-int/lit8 v0, p1, 0x1

    .line 674
    .local v0, "dstPos":I
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v1, p1

    .line 676
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_7f

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    :cond_7f
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    :cond_8a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_95

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    :cond_95
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_a0

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    :cond_a0
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_ab

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    :cond_ab
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_b6

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    .end local v0    # "dstPos":I
    .end local v1    # "length":I
    :cond_b6
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v0, p1

    .line 686
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 687
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 688
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 689
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 690
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 691
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 692
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 693
    return-void
.end method

.method public static greylist-max-o randomLong(Ljava/util/Random;JJ)J
    .registers 9
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 887
    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static greylist-max-o setLong([JIJ)V
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 1019
    if-eqz p0, :cond_4

    aput-wide p2, p0, p1

    .line 1020
    :cond_4
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 3

    .line 700
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 701
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v0, :cond_c

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 702
    :cond_c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_14

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 703
    :cond_14
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v0, :cond_1c

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 704
    :cond_1c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_24

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 705
    :cond_24
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v0, :cond_2c

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 706
    :cond_2c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v0, :cond_34

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 707
    :cond_34
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 708
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 709
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/net/connectivity/android/util/IndentingPrintWriter;Z)V
    .registers 9
    .param p1, "pw"    # Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .line 906
    const-string v0, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 907
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(J)V

    .line 908
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->increaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 910
    const/4 v0, 0x0

    if-eqz p2, :cond_14

    goto :goto_1c

    :cond_14
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 911
    .local v0, "start":I
    :goto_1c
    if-lez v0, :cond_2b

    .line 912
    const-string v1, "(omitting "

    invoke-virtual {p1, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(I)V

    const-string v1, " buckets)"

    invoke-virtual {p1, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 915
    :cond_2b
    move v1, v0

    .local v1, "i":I
    :goto_2c
    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v1, v4, :cond_93

    .line 916
    const-string v4, "st="

    invoke-virtual {p1, v4}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v4, v1

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(J)V

    .line 917
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v4, :cond_4d

    const-string v4, " rb="

    invoke-virtual {p1, v4}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(J)V

    .line 918
    :cond_4d
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_5d

    const-string v4, " rp="

    invoke-virtual {p1, v4}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(J)V

    .line 919
    :cond_5d
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_6d

    const-string v4, " tb="

    invoke-virtual {p1, v4}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(J)V

    .line 920
    :cond_6d
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_7d

    const-string v4, " tp="

    invoke-virtual {p1, v4}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(J)V

    .line 921
    :cond_7d
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v4, :cond_8d

    const-string v4, " op="

    invoke-virtual {p1, v4}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(J)V

    .line 922
    :cond_8d
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println()V

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 925
    .end local v1    # "i":I
    :cond_93
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->decreaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 926
    return-void
.end method

.method public greylist-max-o dumpCheckin(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 930
    const-string v0, "d,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 932
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_86

    .line 935
    const-string v1, "b,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v1, v0

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 937
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-string v5, "*"

    if-eqz v4, :cond_35

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_38

    :cond_35
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_38
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 938
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_47

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_4a

    :cond_47
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 939
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_59

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_5c

    :cond_59
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_5c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 940
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_6b

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_6e

    :cond_6b
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 941
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_80

    :cond_7d
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    :goto_80
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 944
    .end local v0    # "i":I
    :cond_86
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 948
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 950
    .local v0, "start":J
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 952
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v3, :cond_5b

    .line 953
    const-wide v6, 0x20b00000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 955
    .local v6, "startBucket":J
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v8, v3, v2

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 957
    const-wide v8, 0x10300000002L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 958
    const-wide v8, 0x10300000003L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 959
    const-wide v8, 0x10300000004L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 960
    const-wide v8, 0x10300000005L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 961
    const-wide v8, 0x10300000006L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 963
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 952
    .end local v6    # "startBucket":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 966
    .end local v2    # "i":I
    :cond_5b
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 967
    return-void
.end method

.method public greylist-max-o estimateResizeBuckets(J)I
    .registers 7
    .param p1, "newBucketDuration"    # J

    .line 1028
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public greylist-max-o generateRandom(JJJ)V
    .registers 26
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "bytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    move-wide/from16 v0, p5

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    move-object/from16 v18, v2

    .line 841
    .local v18, "r":Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 842
    .local v2, "fractionRx":F
    long-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-long v8, v3

    .line 843
    .local v8, "rxBytes":J
    long-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    float-to-long v12, v3

    .line 845
    .local v12, "txBytes":J
    const-wide/16 v3, 0x400

    div-long v10, v8, v3

    .line 846
    .local v10, "rxPackets":J
    div-long v14, v12, v3

    .line 847
    .local v14, "txPackets":J
    const-wide/16 v3, 0x800

    div-long v16, v8, v3

    .line 849
    .local v16, "operations":J
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v18}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    .line 850
    return-void
.end method

.method public greylist-max-o generateRandom(JJJJJJJLjava/util/Random;)V
    .registers 38
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J
    .param p15, "r"    # Ljava/util/Random;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    move-wide/from16 v0, p3

    move-object/from16 v2, p15

    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 861
    new-instance v3, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v3 .. v20}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    .line 864
    .end local p5    # "rxBytes":J
    .end local p7    # "rxPackets":J
    .end local p9    # "txBytes":J
    .end local p11    # "txPackets":J
    .end local p13    # "operations":J
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    .local v4, "rxBytes":J
    .local v6, "rxPackets":J
    .local v8, "txBytes":J
    .local v10, "txPackets":J
    .local v12, "operations":J
    :goto_28
    const-wide/16 v14, 0x400

    cmp-long v16, v4, v14

    if-gtz v16, :cond_44

    const-wide/16 v16, 0x80

    cmp-long v18, v6, v16

    if-gtz v18, :cond_44

    cmp-long v14, v8, v14

    if-gtz v14, :cond_44

    cmp-long v14, v10, v16

    if-gtz v14, :cond_44

    const-wide/16 v14, 0x20

    cmp-long v14, v12, v14

    if-lez v14, :cond_43

    goto :goto_44

    .line 883
    :cond_43
    return-void

    .line 866
    :cond_44
    :goto_44
    move-wide/from16 v14, p1

    invoke-static {v2, v14, v15, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v16

    .line 867
    .local v16, "curStart":J
    sub-long v18, v0, v16

    const-wide/16 v20, 0x2

    div-long v0, v18, v20

    const-wide/16 v14, 0x0

    invoke-static {v2, v14, v15, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    add-long v0, v16, v0

    .line 869
    .local v0, "curEnd":J
    move-wide/from16 p8, v0

    .end local v0    # "curEnd":J
    .local p8, "curEnd":J
    invoke-static {v2, v14, v15, v4, v5}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 870
    invoke-static {v2, v14, v15, v6, v7}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 871
    invoke-static {v2, v14, v15, v8, v9}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 872
    invoke-static {v2, v14, v15, v10, v11}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 873
    invoke-static {v2, v14, v15, v12, v13}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->operations:J

    .line 875
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v4, v0

    .line 876
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v6, v0

    .line 877
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v0

    .line 878
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v10, v0

    .line 879
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long/2addr v12, v0

    .line 881
    move-object/from16 p5, p0

    move-object/from16 p10, v3

    move-wide/from16 p6, v16

    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v16    # "curStart":J
    .local p6, "curStart":J
    .local p10, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {p5 .. p10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 882
    .end local p6    # "curStart":J
    .end local p8    # "curEnd":J
    .end local p10    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "entry":Landroid/net/NetworkStats$Entry;
    move-wide/from16 v0, p3

    goto :goto_28
.end method

.method public greylist-max-o getBucketDuration()J
    .registers 3

    .line 412
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public greylist getEnd()J
    .registers 5

    .line 428
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_10

    .line 429
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    .line 431
    :cond_10
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public blacklist getEntries()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkStatsHistory$Entry;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsHistory$Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 503
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 505
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method public greylist-max-o getIndexAfter(J)I
    .registers 6
    .param p1, "time"    # J

    .line 465
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 466
    .local v0, "index":I
    if-gez v0, :cond_d

    .line 467
    not-int v0, v0

    goto :goto_f

    .line 469
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 471
    :goto_f
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method public greylist-max-r getIndexBefore(J)I
    .registers 6
    .param p1, "time"    # J

    .line 450
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 451
    .local v0, "index":I
    if-gez v0, :cond_f

    .line 452
    not-int v1, v0

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_11

    .line 454
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_f
    add-int/lit8 v1, v0, -0x1

    .line 456
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_11
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public greylist getStart()J
    .registers 3

    .line 418
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_a

    .line 419
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0

    .line 421
    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public greylist-max-o getTotalBytes()J
    .registers 3

    .line 440
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public greylist-max-r getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 9
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 480
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 481
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_9
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 482
    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 483
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v2, -0x1

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 484
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 485
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 486
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 487
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 488
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 489
    return-object v0
.end method

.method public greylist getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 33
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "now"    # J
    .param p7, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 775
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    if-eqz p7, :cond_b

    move-object/from16 v5, p7

    goto :goto_10

    :cond_b
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 776
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_10
    sub-long v6, v3, v1

    iput-wide v6, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 777
    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 778
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_20

    move-wide v11, v9

    goto :goto_21

    :cond_20
    move-wide v11, v7

    :goto_21
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 779
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_29

    move-wide v11, v9

    goto :goto_2a

    :cond_29
    move-wide v11, v7

    :goto_2a
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 780
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_32

    move-wide v11, v9

    goto :goto_33

    :cond_32
    move-wide v11, v7

    :goto_33
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 781
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_3b

    move-wide v11, v9

    goto :goto_3c

    :cond_3b
    move-wide v11, v7

    :goto_3c
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 782
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_44

    move-wide v11, v9

    goto :goto_45

    :cond_44
    move-wide v11, v7

    :goto_45
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 783
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_4c

    move-wide v7, v9

    :cond_4c
    iput-wide v7, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 786
    iget v6, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-nez v6, :cond_53

    return-object v5

    .line 788
    :cond_53
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v6

    .line 789
    .local v6, "startIndex":I
    move v7, v6

    .local v7, "i":I
    :goto_58
    if-ltz v7, :cond_100

    .line 790
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v11, v8, v7

    .line 791
    .local v11, "curStart":J
    iget-wide v13, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v13, v11

    .line 794
    .local v13, "curEnd":J
    cmp-long v8, v13, v1

    if-gtz v8, :cond_67

    goto/16 :goto_100

    .line 796
    :cond_67
    cmp-long v8, v11, v3

    if-ltz v8, :cond_6d

    goto/16 :goto_fa

    .line 799
    :cond_6d
    cmp-long v8, v13, p5

    if-lez v8, :cond_73

    move-wide/from16 v13, p5

    .line 801
    :cond_73
    sub-long v19, v13, v11

    .line 803
    .local v19, "bucketSpan":J
    cmp-long v8, v19, v9

    if-gtz v8, :cond_7b

    goto/16 :goto_fa

    .line 805
    :cond_7b
    cmp-long v8, v13, v3

    if-gez v8, :cond_81

    move-wide v15, v13

    goto :goto_82

    :cond_81
    move-wide v15, v3

    :goto_82
    move-wide/from16 v21, v15

    .line 806
    .local v21, "overlapEnd":J
    cmp-long v8, v11, v1

    if-lez v8, :cond_8a

    move-wide v15, v11

    goto :goto_8b

    :cond_8a
    move-wide v15, v1

    :goto_8b
    move-wide/from16 v23, v15

    .line 807
    .local v23, "overlapStart":J
    sub-long v17, v21, v23

    .line 808
    .local v17, "overlap":J
    cmp-long v8, v17, v9

    if-gtz v8, :cond_94

    goto :goto_fa

    .line 811
    :cond_94
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v8, :cond_a5

    .line 812
    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v15, v8, v7

    invoke-static/range {v15 .. v20}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v15

    add-long/2addr v9, v15

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 814
    :cond_a5
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v8, :cond_b6

    .line 815
    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v15, v10, v7

    invoke-static/range {v15 .. v20}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 817
    :cond_b6
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v8, :cond_c7

    .line 818
    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v15, v10, v7

    invoke-static/range {v15 .. v20}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 820
    :cond_c7
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v8, :cond_d8

    .line 821
    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v15, v10, v7

    invoke-static/range {v15 .. v20}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 823
    :cond_d8
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v8, :cond_e9

    .line 824
    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v15, v10, v7

    invoke-static/range {v15 .. v20}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 826
    :cond_e9
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v8, :cond_fa

    .line 827
    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v15, v10, v7

    invoke-static/range {v15 .. v20}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 789
    .end local v11    # "curStart":J
    .end local v13    # "curEnd":J
    .end local v17    # "overlap":J
    .end local v19    # "bucketSpan":J
    .end local v21    # "overlapEnd":J
    .end local v23    # "overlapStart":J
    :cond_fa
    :goto_fa
    add-int/lit8 v7, v7, -0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_58

    .line 830
    .end local v7    # "i":I
    :cond_100
    :goto_100
    return-object v5
.end method

.method public greylist getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 14
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 760
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "recycle":Landroid/net/NetworkStatsHistory$Entry;
    .local v1, "start":J
    .local v3, "end":J
    .local v7, "recycle":Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o intersects(JJ)Z
    .registers 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 895
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    .line 896
    .local v0, "dataStart":J
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 897
    .local v2, "dataEnd":J
    cmp-long v4, p1, v0

    const/4 v5, 0x1

    if-ltz v4, :cond_12

    cmp-long v4, p1, v2

    if-gtz v4, :cond_12

    return v5

    .line 898
    :cond_12
    cmp-long v4, p3, v0

    if-ltz v4, :cond_1b

    cmp-long v4, p3, v2

    if-gtz v4, :cond_1b

    return v5

    .line 899
    :cond_1b
    cmp-long v4, v0, p1

    if-ltz v4, :cond_24

    cmp-long v4, v0, p3

    if-gtz v4, :cond_24

    return v5

    .line 900
    :cond_24
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2d

    cmp-long v4, v2, p3

    if-gtz v4, :cond_2d

    return v5

    .line 901
    :cond_2d
    const/4 v4, 0x0

    return v4
.end method

.method public blacklist isSameAs(Landroid/net/NetworkStatsHistory;)Z
    .registers 6
    .param p1, "other"    # Landroid/net/NetworkStatsHistory;

    .line 988
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget v1, p1, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v1, p1, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 989
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v1, p1, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 993
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v1, p1, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 994
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v1, p1, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 995
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v1, p1, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 996
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v1, p1, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 997
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStatsHistory;->totalBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    .line 988
    :goto_4d
    return v0
.end method

.method public greylist-max-o recordData(JJJJ)V
    .registers 27
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "txBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    new-instance v0, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v8, p5

    move-wide/from16 v12, p7

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 537
    return-void
.end method

.method public greylist-max-o recordData(JJLandroid/net/NetworkStats$Entry;)V
    .registers 44
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 545
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    iget-wide v6, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 546
    .local v6, "rxBytes":J
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 547
    .local v8, "rxPackets":J
    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 548
    .local v10, "txBytes":J
    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 549
    .local v12, "txPackets":J
    iget-wide v14, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 551
    .local v14, "operations":J
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v16

    if-nez v16, :cond_eb

    .line 554
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 555
    return-void

    .line 559
    :cond_1f
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 562
    move-wide/from16 v16, v6

    .end local v6    # "rxBytes":J
    .local v16, "rxBytes":J
    iget v6, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-nez v6, :cond_29

    return-void

    .line 565
    :cond_29
    sub-long v6, v3, v1

    .line 566
    .local v6, "duration":J
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v18

    .line 567
    .local v18, "startIndex":I
    move/from16 v19, v18

    move-wide/from16 v24, v6

    move-wide/from16 v20, v16

    move/from16 v6, v19

    .end local v16    # "rxBytes":J
    .local v6, "i":I
    .local v20, "rxBytes":J
    .local v24, "duration":J
    :goto_37
    if-ltz v6, :cond_d6

    .line 568
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-wide/from16 v16, v8

    .end local v8    # "rxPackets":J
    .local v16, "rxPackets":J
    aget-wide v7, v7, v6

    .line 569
    .local v7, "curStart":J
    move-wide/from16 v26, v10

    .end local v10    # "txBytes":J
    .local v26, "txBytes":J
    iget-wide v9, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v9, v7

    .line 572
    .local v9, "curEnd":J
    cmp-long v11, v9, v1

    if-gez v11, :cond_52

    move-wide/from16 v32, v12

    move-wide/from16 v28, v20

    move-wide/from16 v30, v26

    move-wide/from16 v20, v14

    goto/16 :goto_e0

    .line 574
    :cond_52
    cmp-long v11, v7, v3

    if-lez v11, :cond_57

    goto :goto_67

    .line 576
    :cond_57
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    sub-long v22, v22, v28

    .line 577
    .local v22, "overlap":J
    const-wide/16 v28, 0x0

    cmp-long v11, v22, v28

    if-gtz v11, :cond_6c

    .line 567
    .end local v7    # "curStart":J
    .end local v9    # "curEnd":J
    .end local v22    # "overlap":J
    :goto_67
    move-wide/from16 v8, v16

    move-wide/from16 v10, v26

    goto :goto_ce

    .line 580
    .restart local v7    # "curStart":J
    .restart local v9    # "curEnd":J
    .restart local v22    # "overlap":J
    :cond_6c
    invoke-static/range {v20 .. v25}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v1

    .line 581
    move-wide/from16 v28, v20

    .end local v20    # "rxBytes":J
    .local v1, "fracRxBytes":J
    .local v28, "rxBytes":J
    move-wide/from16 v20, v16

    .end local v16    # "rxPackets":J
    .local v20, "rxPackets":J
    invoke-static/range {v20 .. v25}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v3

    .line 582
    .end local v20    # "rxPackets":J
    .local v3, "fracRxPackets":J
    .restart local v16    # "rxPackets":J
    move-wide/from16 v20, v26

    move-wide/from16 v26, v7

    .end local v7    # "curStart":J
    .local v20, "txBytes":J
    .local v26, "curStart":J
    invoke-static/range {v20 .. v25}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v7

    .line 583
    move-wide/from16 v30, v20

    .end local v20    # "txBytes":J
    .local v7, "fracTxBytes":J
    .local v30, "txBytes":J
    move-wide/from16 v20, v12

    .end local v12    # "txPackets":J
    .local v20, "txPackets":J
    invoke-static/range {v20 .. v25}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v11

    .line 584
    move-wide/from16 v32, v20

    .end local v20    # "txPackets":J
    .local v11, "fracTxPackets":J
    .local v32, "txPackets":J
    move-wide/from16 v20, v14

    .end local v14    # "operations":J
    .local v20, "operations":J
    invoke-static/range {v20 .. v25}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v13

    .line 587
    move-wide/from16 v36, v22

    move-wide/from16 v22, v9

    move-wide/from16 v9, v36

    .local v9, "overlap":J
    .local v13, "fracOperations":J
    .local v22, "curEnd":J
    iget-object v15, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v15, v6, v9, v10}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 588
    iget-object v15, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v15, v6, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v28, v28, v1

    .line 589
    iget-object v15, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v15, v6, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v15, v16, v3

    .line 590
    .end local v16    # "rxPackets":J
    .local v15, "rxPackets":J
    move-wide/from16 v34, v1

    .end local v1    # "fracRxBytes":J
    .local v34, "fracRxBytes":J
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v6, v7, v8}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v1, v30, v7

    .line 591
    .end local v30    # "txBytes":J
    .local v1, "txBytes":J
    move-wide/from16 v30, v1

    .end local v1    # "txBytes":J
    .restart local v30    # "txBytes":J
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v6, v11, v12}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v1, v32, v11

    .line 592
    .end local v32    # "txPackets":J
    .local v1, "txPackets":J
    move-wide/from16 v32, v1

    .end local v1    # "txPackets":J
    .restart local v32    # "txPackets":J
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v6, v13, v14}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v1, v20, v13

    .line 594
    .end local v20    # "operations":J
    .local v1, "operations":J
    sub-long v24, v24, v9

    move-wide v8, v15

    move-wide/from16 v20, v28

    move-wide/from16 v10, v30

    move-wide/from16 v12, v32

    move-wide v14, v1

    .line 567
    .end local v1    # "operations":J
    .end local v3    # "fracRxPackets":J
    .end local v7    # "fracTxBytes":J
    .end local v9    # "overlap":J
    .end local v11    # "fracTxPackets":J
    .end local v13    # "fracOperations":J
    .end local v15    # "rxPackets":J
    .end local v22    # "curEnd":J
    .end local v26    # "curStart":J
    .end local v28    # "rxBytes":J
    .end local v30    # "txBytes":J
    .end local v32    # "txPackets":J
    .end local v34    # "fracRxBytes":J
    .restart local v8    # "rxPackets":J
    .restart local v10    # "txBytes":J
    .restart local v12    # "txPackets":J
    .restart local v14    # "operations":J
    .local v20, "rxBytes":J
    :goto_ce
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto/16 :goto_37

    :cond_d6
    move-wide/from16 v16, v8

    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    move-wide/from16 v28, v20

    move-wide/from16 v20, v14

    .line 597
    .end local v6    # "i":I
    .end local v8    # "rxPackets":J
    .end local v10    # "txBytes":J
    .end local v12    # "txPackets":J
    .end local v14    # "operations":J
    .restart local v16    # "rxPackets":J
    .local v20, "operations":J
    .restart local v28    # "rxBytes":J
    .restart local v30    # "txBytes":J
    .restart local v32    # "txPackets":J
    :goto_e0
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v3, v6

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 598
    return-void

    .line 552
    .end local v16    # "rxPackets":J
    .end local v18    # "startIndex":I
    .end local v20    # "operations":J
    .end local v24    # "duration":J
    .end local v28    # "rxBytes":J
    .end local v30    # "txBytes":J
    .end local v32    # "txPackets":J
    .local v6, "rxBytes":J
    .restart local v8    # "rxPackets":J
    .restart local v10    # "txBytes":J
    .restart local v12    # "txPackets":J
    .restart local v14    # "operations":J
    :cond_eb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "tried recording negative data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .registers 8
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;

    .line 607
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "input":Landroid/net/NetworkStatsHistory;
    .local v1, "input":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 608
    return-void
.end method

.method public greylist-max-o recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .registers 25
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 617
    move-object/from16 v0, p1

    new-instance v1, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object v7, v1

    .line 620
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget v2, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v1, v2, :cond_61

    .line 621
    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v3, v2, v1

    .line 622
    .local v3, "bucketStart":J
    iget-wide v5, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v5, v3

    .line 625
    .local v5, "bucketEnd":J
    cmp-long v2, v3, p2

    if-ltz v2, :cond_5e

    cmp-long v2, v5, p4

    if-lez v2, :cond_2f

    goto :goto_5e

    .line 627
    :cond_2f
    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v8, 0x0

    invoke-static {v2, v1, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 628
    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, v1, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 629
    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, v1, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 630
    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, v1, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 631
    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v2, v1, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    .line 633
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 620
    .end local v3    # "bucketStart":J
    .end local v5    # "bucketEnd":J
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 635
    .end local v1    # "i":I
    :cond_61
    return-void
.end method

.method public blacklist removeBucketsStartingBefore(J)V
    .registers 9
    .param p1, "cutoff"    # J

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_11

    .line 723
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, v0

    .line 726
    .local v1, "curStart":J
    cmp-long v3, v1, p1

    if-ltz v3, :cond_e

    goto :goto_11

    .line 722
    .end local v1    # "curStart":J
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 729
    :cond_11
    :goto_11
    if-lez v0, :cond_8d

    .line 730
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    .line 731
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 732
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 733
    :cond_2a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 734
    :cond_36
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_42

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 735
    :cond_42
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 736
    :cond_4e
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 737
    :cond_5a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_66

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 738
    :cond_66
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 740
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 741
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_7e

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v4}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 742
    :cond_7e
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_8d

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v4}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 744
    .end local v1    # "length":I
    :cond_8d
    return-void
.end method

.method public greylist-max-o setValues(ILandroid/net/NetworkStatsHistory$Entry;)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 511
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 512
    :cond_d
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 514
    :cond_1a
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    aput-wide v1, v0, p1

    .line 515
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 516
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 517
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 518
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 519
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 520
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 523
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_57

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 524
    :cond_57
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_64

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 525
    :cond_64
    return-void
.end method

.method public greylist-max-r size()I
    .registers 2

    .line 407
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 977
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 978
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Landroid/net/connectivity/android/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Landroid/net/connectivity/android/util/IndentingPrintWriter;Z)V

    .line 979
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 332
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 334
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 335
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 336
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 337
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 338
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 339
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 340
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    return-void
.end method

.method public blacklist writeToStream(Ljava/io/DataOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 389
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 390
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 391
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 392
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 393
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 394
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 395
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 396
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutput;[JI)V

    .line 397
    return-void
.end method
