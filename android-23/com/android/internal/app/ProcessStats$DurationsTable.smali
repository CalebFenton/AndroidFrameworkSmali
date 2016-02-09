.class public Lcom/android/internal/app/ProcessStats$DurationsTable;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationsTable"
.end annotation


# instance fields
.field public mDurationsTable:[I

.field public mDurationsTableSize:I

.field public final mName:Ljava/lang/String;

.field public final mStats:Lcom/android/internal/app/ProcessStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V
    .locals 0
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2776
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@5
    .line 2777
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    #@7
    .line 2775
    return-void
.end method


# virtual methods
.method addDuration(IJ)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "dur"    # J

    #@0
    .prologue
    .line 2833
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@2
    iget v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@4
    invoke-static {v3, v4, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 2835
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    .line 2836
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@c
    aget v2, v3, v0

    #@e
    .line 2844
    .local v2, "off":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@10
    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@12
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@14
    shr-int v4, v2, v4

    #@16
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@18
    and-int/2addr v4, v5

    #@19
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, [J

    #@1f
    .line 2847
    .local v1, "longs":[J
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@21
    shr-int v3, v2, v3

    #@23
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@25
    and-int/2addr v3, v4

    #@26
    aget-wide v4, v1, v3

    #@28
    add-long/2addr v4, p2

    #@29
    aput-wide v4, v1, v3

    #@2b
    .line 2832
    return-void

    #@2c
    .line 2838
    .end local v1    # "longs":[J
    .end local v2    # "off":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@2e
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@30
    iput-object v4, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@32
    .line 2839
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@34
    iget v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@36
    iput v4, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@38
    .line 2840
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@3a
    not-int v4, v0

    #@3b
    const/4 v5, 0x1

    #@3c
    invoke-virtual {v3, v4, p1, v5}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    #@3f
    move-result v2

    #@40
    .line 2841
    .restart local v2    # "off":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@42
    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@44
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@46
    .line 2842
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@48
    iget v3, v3, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@4a
    iput v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@4c
    goto :goto_0
.end method

.method addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .locals 6
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$DurationsTable;

    #@0
    .prologue
    .line 2800
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@3
    if-ge v1, v3, :cond_0

    #@5
    .line 2801
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@7
    aget v0, v3, v1

    #@9
    .line 2802
    .local v0, "ent":I
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@b
    shr-int v3, v0, v3

    #@d
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@f
    and-int v2, v3, v4

    #@11
    .line 2805
    .local v2, "state":I
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@17
    move-result-wide v4

    #@18
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    #@1b
    .line 2800
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2799
    .end local v0    # "ent":I
    .end local v2    # "state":I
    :cond_0
    return-void
.end method

.method copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .locals 9
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$DurationsTable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 2781
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 2782
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@8
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@a
    array-length v5, v5

    #@b
    new-array v5, v5, [I

    #@d
    iput-object v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@f
    .line 2783
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@11
    iput v8, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@13
    .line 2784
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@16
    if-ge v0, v4, :cond_0

    #@18
    .line 2785
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@1a
    aget v2, v4, v0

    #@1c
    .line 2786
    .local v2, "origEnt":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@1e
    shr-int v4, v2, v4

    #@20
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@22
    and-int v3, v4, v5

    #@24
    .line 2787
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@26
    const/4 v5, 0x1

    #@27
    invoke-virtual {v4, v0, v3, v5}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    #@2a
    move-result v1

    #@2b
    .line 2788
    .local v1, "newOff":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@2d
    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@2f
    or-int v5, v1, v3

    #@31
    aput v5, v4, v0

    #@33
    .line 2789
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@35
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@37
    invoke-virtual {v5, v2, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@3a
    move-result-wide v6

    #@3b
    invoke-virtual {v4, v1, v8, v6, v7}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    #@3e
    .line 2784
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 2791
    .end local v1    # "newOff":I
    .end local v2    # "origEnt":I
    .end local v3    # "type":I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@43
    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@45
    iput-object v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@47
    .line 2792
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@49
    iget v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@4b
    iput v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@4d
    .line 2780
    .end local v0    # "i":I
    :goto_1
    return-void

    #@4e
    .line 2794
    :cond_1
    iput-object v5, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@50
    .line 2795
    iput v8, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@52
    goto :goto_1
.end method

.method getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2851
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@3
    iget v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@5
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@8
    move-result v0

    #@9
    .line 2852
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@d
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@f
    aget v2, v2, v0

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method readDurationsFromParcel(Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2824
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    #@3
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    #@5
    const-string/jumbo v3, "durations"

    #@8
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->-wrap0(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@e
    .line 2825
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@10
    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .line 2826
    return v0

    #@15
    .line 2828
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@17
    if-eqz v1, :cond_1

    #@19
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@1b
    array-length v0, v0

    #@1c
    :cond_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@1e
    .line 2829
    const/4 v0, 0x1

    #@1f
    return v0
.end method

.method resetDurationsSafely()V
    .locals 1

    #@0
    .prologue
    .line 2810
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@3
    .line 2811
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@6
    .line 2809
    return-void
.end method

.method writeDurationsToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2815
    iget v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 2816
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 2819
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    #@c
    aget v1, v1, v0

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2816
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2814
    :cond_0
    return-void
.end method
