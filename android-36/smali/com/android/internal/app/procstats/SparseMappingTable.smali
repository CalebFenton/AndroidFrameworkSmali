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
.field private static final blacklist ARRAY_MASK:I = 0xff

.field private static final blacklist ARRAY_SHIFT:I = 0x8

.field public static final blacklist ARRAY_SIZE:I = 0x1000

.field private static final blacklist ID_MASK:I = 0xff

.field private static final blacklist ID_SHIFT:I = 0x0

.field private static final blacklist INDEX_MASK:I = 0xffff

.field private static final blacklist INDEX_SHIFT:I = 0x10

.field public static final blacklist INVALID_KEY:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SparseMappingTable"


# instance fields
.field private final blacklist mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[J>;"
        }
    .end annotation
.end field

.field private blacklist mNextIndex:I

.field private blacklist mSequence:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogOrThrow(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    .line 480
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method public static blacklist getArrayFromKey(I)I
    .registers 2
    .param p0, "key"    # I

    .line 628
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static blacklist getIdFromKey(I)B
    .registers 2
    .param p0, "key"    # I

    .line 619
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getIndexFromKey(I)I
    .registers 3
    .param p0, "key"    # I

    .line 637
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static blacklist logOrThrow(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 645
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    return-void
.end method

.method private static blacklist logOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 653
    const-string v0, "SparseMappingTable"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_a

    .line 657
    return-void

    .line 655
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist readCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 11
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "array"    # [J
    .param p2, "num"    # I

    .line 594
    array-length v0, p1

    .line 595
    .local v0, "alen":I
    if-le p2, v0, :cond_24

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad array lengths: got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->logOrThrow(Ljava/lang/String;)V

    .line 597
    return-void

    .line 600
    :cond_24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, p2, :cond_41

    .line 601
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "val":I
    if-ltz v2, :cond_31

    .line 603
    int-to-long v3, v2

    aput-wide v3, p1, v1

    goto :goto_3e

    .line 605
    :cond_31
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .local v3, "bottom":I
    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p1, v1

    .line 600
    .end local v2    # "val":I
    .end local v3    # "bottom":I
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 609
    :cond_41
    :goto_41
    if-ge v1, v0, :cond_4a

    .line 610
    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 613
    :cond_4a
    return-void
.end method

.method private static blacklist writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 10
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "array"    # [J
    .param p2, "num"    # I

    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_48

    .line 574
    aget-wide v1, p1, v0

    .line 575
    .local v1, "val":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_25

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time val negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SparseMappingTable"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-wide/16 v1, 0x0

    .line 579
    :cond_25
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_31

    .line 580
    long-to-int v3, v1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 582
    :cond_31
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    .line 583
    .local v3, "top":I
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    .line 584
    .local v4, "bottom":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    .end local v1    # "val":J
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    .end local v0    # "i":I
    :cond_48
    return-void
.end method


# virtual methods
.method public blacklist dumpInternalState(Z)Ljava/lang/String;
    .registers 12
    .param p1, "includeData"    # Z

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SparseMappingTable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v1, "mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    const-string v1, " mNextIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, " mLongs.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 551
    .local v1, "N":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    if-eqz p1, :cond_72

    .line 554
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v1, :cond_72

    .line 555
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 556
    .local v3, "array":[J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3f
    array-length v5, v3

    if-ge v4, v5, :cond_6f

    .line 557
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_4b

    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v4, v5, :cond_4b

    .line 558
    goto :goto_6f

    .line 560
    :cond_4b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v7, v3, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aget-wide v8, v3, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, " %4d %d 0x%016x %-19d\n"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 554
    .end local v3    # "array":[J
    .end local v4    # "j":I
    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 564
    .end local v2    # "i":I
    :cond_72
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    .line 523
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 525
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_29

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 527
    .local v2, "size":I
    new-array v3, v2, [J

    .line 528
    .local v3, "array":[J
    invoke-static {p1, v3, v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->readCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 529
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v2    # "size":I
    .end local v3    # "array":[J
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 532
    .end local v1    # "i":I
    :cond_29
    if-lez v0, :cond_7e

    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    if-ne v1, v2, :cond_3b

    goto :goto_7e

    .line 533
    :cond_3b
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    const-string v3, "73252178"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 534
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected array of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    .line 535
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_7e
    :goto_7e
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    .line 494
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    .line 495
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 501
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 504
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2b

    .line 506
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 507
    .local v2, "array":[J
    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    array-length v3, v2

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 505
    .end local v2    # "array":[J
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 511
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mLongs:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 512
    .local v1, "lastLongs":[J
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable;->mNextIndex:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 514
    return-void
.end method
