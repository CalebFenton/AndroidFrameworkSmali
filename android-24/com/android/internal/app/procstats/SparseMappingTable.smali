.class public Lcom/android/internal/app/procstats/SparseMappingTable;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/SparseMappingTable$Table;
    }
.end annotation


# static fields
.field private static final ARRAY_MASK:I = 0xff

.field private static final ARRAY_SHIFT:I = 0x8

.field public static final ARRAY_SIZE:I = 0x1000

.field private static final ID_MASK:I = 0xff

.field private static final ID_SHIFT:I = 0x0

.field private static final INDEX_MASK:I = 0xffff

.field private static final INDEX_SHIFT:I = 0x10

.field public static final INVALID_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SparseMappingTable"


# instance fields
.field private final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mSequence:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/procstats/SparseMappingTable;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@a
    .line 481
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@c
    const/16 v1, 0x1000

    #@e
    new-array v1, v1, [J

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 480
    return-void
.end method

.method public static getArrayFromKey(I)I
    .locals 1
    .param p0, "key"    # I

    #@0
    .prologue
    .line 623
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method public static getIdFromKey(I)B
    .locals 1
    .param p0, "key"    # I

    #@0
    .prologue
    .line 614
    shr-int/lit8 v0, p0, 0x0

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method public static getIndexFromKey(I)I
    .locals 2
    .param p0, "key"    # I

    #@0
    .prologue
    .line 632
    shr-int/lit8 v0, p0, 0x10

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    return v0
.end method

.method private static logOrThrow(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 640
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Stack trace"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    invoke-static {p0, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b
    .line 639
    return-void
.end method

.method private static logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 648
    const-string/jumbo v0, "SparseMappingTable"

    #@3
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 649
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@8
    const-string/jumbo v1, "eng"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 650
    new-instance v0, Ljava/lang/RuntimeException;

    #@13
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v0

    #@17
    .line 647
    :cond_0
    return-void
.end method

.method private static readCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 8
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "array"    # [J
    .param p2, "num"    # I

    #@0
    .prologue
    .line 589
    array-length v0, p1

    #@1
    .line 590
    .local v0, "alen":I
    if-le p2, v0, :cond_0

    #@3
    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "bad array lengths: got "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    const-string/jumbo v5, " array is "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    #@25
    .line 592
    return-void

    #@26
    .line 595
    :cond_0
    const/4 v2, 0x0

    #@27
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    #@29
    .line 596
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    .line 597
    .local v3, "val":I
    if-ltz v3, :cond_1

    #@2f
    .line 598
    int-to-long v4, v3

    #@30
    aput-wide v4, p1, v2

    #@32
    .line 595
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 600
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    .line 601
    .local v1, "bottom":I
    not-int v4, v3

    #@3a
    int-to-long v4, v4

    #@3b
    const/16 v6, 0x20

    #@3d
    shl-long/2addr v4, v6

    #@3e
    int-to-long v6, v1

    #@3f
    or-long/2addr v4, v6

    #@40
    aput-wide v4, p1, v2

    #@42
    goto :goto_1

    #@43
    .line 604
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_2
    :goto_2
    if-ge v2, v0, :cond_3

    #@45
    .line 605
    const-wide/16 v4, 0x0

    #@47
    aput-wide v4, p1, v2

    #@49
    .line 606
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_2

    #@4c
    .line 588
    :cond_3
    return-void
.end method

.method private static writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "array"    # [J
    .param p2, "num"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x7fffffff

    #@3
    .line 568
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    #@6
    .line 569
    aget-wide v4, p1, v1

    #@8
    .line 570
    .local v4, "val":J
    const-wide/16 v6, 0x0

    #@a
    cmp-long v3, v4, v6

    #@c
    if-gez v3, :cond_0

    #@e
    .line 571
    const-string/jumbo v3, "SparseMappingTable"

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "Time val negative: "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 572
    const-wide/16 v4, 0x0

    #@2a
    .line 574
    :cond_0
    cmp-long v3, v4, v8

    #@2c
    if-gtz v3, :cond_1

    #@2e
    .line 575
    long-to-int v3, v4

    #@2f
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 568
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 577
    :cond_1
    const/16 v3, 0x20

    #@37
    shr-long v6, v4, v3

    #@39
    and-long/2addr v6, v8

    #@3a
    long-to-int v3, v6

    #@3b
    not-int v2, v3

    #@3c
    .line 578
    .local v2, "top":I
    const-wide v6, 0xffffffffL

    #@41
    and-long/2addr v6, v4

    #@42
    long-to-int v0, v6

    #@43
    .line 579
    .local v0, "bottom":I
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 580
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    goto :goto_1

    #@4a
    .line 567
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public dumpInternalState(Z)Ljava/lang/String;
    .locals 10
    .param p1, "includeData"    # Z

    #@0
    .prologue
    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 539
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "SparseMappingTable{"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 540
    const-string/jumbo v5, "mSequence="

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 541
    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 542
    const-string/jumbo v5, " mNextIndex="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 543
    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 544
    const-string/jumbo v5, " mLongs.size="

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 545
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v0

    #@2d
    .line 546
    .local v0, "N":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 547
    const-string/jumbo v5, "\n"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 548
    if-eqz p1, :cond_2

    #@38
    .line 549
    const/4 v2, 0x0

    #@39
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@3b
    .line 550
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, [J

    #@43
    .line 551
    .local v1, "array":[J
    const/4 v3, 0x0

    #@44
    .local v3, "j":I
    :goto_1
    array-length v5, v1

    #@45
    if-ge v3, v5, :cond_0

    #@47
    .line 552
    add-int/lit8 v5, v0, -0x1

    #@49
    if-ne v2, v5, :cond_1

    #@4b
    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@4d
    if-ne v3, v5, :cond_1

    #@4f
    .line 549
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_0

    #@52
    .line 555
    :cond_1
    const-string/jumbo v5, " %4d %d 0x%016x %-19d\n"

    #@55
    const/4 v6, 0x4

    #@56
    new-array v6, v6, [Ljava/lang/Object;

    #@58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v7

    #@5c
    const/4 v8, 0x0

    #@5d
    aput-object v7, v6, v8

    #@5f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v7

    #@63
    const/4 v8, 0x1

    #@64
    aput-object v7, v6, v8

    #@66
    aget-wide v8, v1, v3

    #@68
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6b
    move-result-object v7

    #@6c
    const/4 v8, 0x2

    #@6d
    aput-object v7, v6, v8

    #@6f
    aget-wide v8, v1, v3

    #@71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@74
    move-result-object v7

    #@75
    const/4 v8, 0x3

    #@76
    aput-object v7, v6, v8

    #@78
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 551
    add-int/lit8 v3, v3, 0x1

    #@81
    goto :goto_1

    #@82
    .line 559
    .end local v1    # "array":[J
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    const-string/jumbo v5, "}"

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 560
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    return-object v5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v4

    #@4
    iput v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    #@6
    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v4

    #@a
    iput v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@c
    .line 524
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@11
    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    .line 526
    .local v0, "N":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@18
    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    .line 528
    .local v3, "size":I
    new-array v1, v3, [J

    #@1e
    .line 529
    .local v1, "array":[J
    invoke-static {p1, v1, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->readCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@21
    .line 530
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 526
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 520
    .end local v1    # "array":[J
    .end local v3    # "size":I
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 490
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@7
    const/16 v1, 0x1000

    #@9
    new-array v1, v1, [J

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 491
    const/4 v0, 0x0

    #@f
    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@11
    .line 495
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    #@17
    .line 487
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 502
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    #@2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 503
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 504
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 505
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 506
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    #@16
    if-ge v2, v4, :cond_0

    #@18
    .line 507
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, [J

    #@20
    .line 508
    .local v1, "array":[J
    array-length v4, v1

    #@21
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 509
    array-length v4, v1

    #@25
    invoke-static {p1, v1, v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@28
    .line 506
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 512
    .end local v1    # "array":[J
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    #@2d
    add-int/lit8 v5, v0, -0x1

    #@2f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, [J

    #@35
    .line 513
    .local v3, "lastLongs":[J
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@37
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 514
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    #@3c
    invoke-static {p1, v3, v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    #@3f
    .line 501
    return-void
.end method
