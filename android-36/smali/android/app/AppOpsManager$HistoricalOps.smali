.class public final Landroid/app/AppOpsManager$HistoricalOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBeginTimeMillis:J

.field private blacklist mEndTimeMillis:J

.field private blacklist mHistoricalUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AppOpsManager$HistoricalUidOps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6088
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 6
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J

    .line 5658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5659
    cmp-long v0, p1, p3

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 5660
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5661
    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5662
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 5665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5666
    iget-wide v0, p1, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5667
    iget-wide v0, p1, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5668
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 5669
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v0, :cond_45

    .line 5670
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 5671
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_45

    .line 5672
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    .line 5673
    .local v2, "origOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    new-instance v3, Landroid/app/AppOpsManager$HistoricalUidOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager-IA;)V

    .line 5674
    .local v3, "clonedOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v4, :cond_39

    .line 5675
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5677
    :cond_39
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5671
    .end local v2    # "origOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v3    # "clonedOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 5680
    .end local v0    # "opCount":I
    .end local v1    # "i":I
    :cond_45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5683
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5684
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5685
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 5686
    .local v0, "uids":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 5687
    nop

    .line 5688
    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/pm/ParceledListSlice;

    .line 5687
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 5689
    .local v1, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$HistoricalUidOps;>;"
    if-eqz v1, :cond_2f

    .line 5690
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 5691
    .local v2, "uidOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalUidOps;>;"
    :goto_30
    if-nez v2, :cond_33

    .line 5692
    return-void

    .line 5694
    :cond_33
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    array-length v4, v0

    if-ge v3, v4, :cond_52

    .line 5695
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v4, :cond_42

    .line 5696
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5698
    :cond_42
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    aget v5, v0, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalUidOps;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5694
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 5701
    .end local v1    # "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$HistoricalUidOps;>;"
    .end local v2    # "uidOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalUidOps;>;"
    .end local v3    # "i":I
    :cond_52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 4
    .param p1, "uid"    # I

    .line 6029
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 6030
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 6032
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 6033
    .local v0, "historicalUidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    if-nez v0, :cond_20

    .line 6034
    new-instance v1, Landroid/app/AppOpsManager$HistoricalUidOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(I)V

    move-object v0, v1

    .line 6035
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6037
    :cond_20
    return-object v0
.end method

.method public static blacklist round(D)D
    .registers 4
    .param p0, "value"    # D

    .line 6046
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist splice(DZ)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 15
    .param p1, "fractionToRemove"    # D
    .param p3, "beginning"    # Z

    .line 5738
    if-eqz p3, :cond_12

    .line 5739
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5740
    .local v0, "spliceBeginTimeMills":J
    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    long-to-double v2, v2

    .line 5741
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    double-to-long v2, v2

    .line 5742
    .local v2, "spliceEndTimeMills":J
    iput-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    goto :goto_21

    .line 5744
    .end local v0    # "spliceBeginTimeMills":J
    .end local v2    # "spliceEndTimeMills":J
    :cond_12
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    long-to-double v0, v0

    .line 5745
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    double-to-long v0, v0

    .line 5746
    .restart local v0    # "spliceBeginTimeMills":J
    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5747
    .restart local v2    # "spliceEndTimeMills":J
    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5750
    :goto_21
    const/4 v4, 0x0

    .line 5751
    .local v4, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v5

    .line 5752
    .local v5, "uidCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    if-ge v6, v5, :cond_52

    .line 5753
    invoke-virtual {p0, v6}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v7

    .line 5754
    .local v7, "origOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-static {v7, p1, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalUidOps;D)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v8

    .line 5755
    .local v8, "spliceOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    if-eqz v8, :cond_4f

    .line 5756
    if-nez v4, :cond_3b

    .line 5757
    new-instance v9, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v4, v9

    .line 5759
    :cond_3b
    iget-object v9, v4, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v9, :cond_46

    .line 5760
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, v4, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5762
    :cond_46
    iget-object v9, v4, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5752
    .end local v7    # "origOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v8    # "spliceOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 5765
    .end local v6    # "i":I
    :cond_52
    return-object v4
.end method


# virtual methods
.method public blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6021
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 6022
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 6023
    .local v0, "uidCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 6024
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6023
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6026
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public blacklist addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJ)V
    .registers 22
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "opFlag"    # I
    .param p7, "discreteAccessTime"    # J
    .param p9, "discreteAccessDuration"    # J

    .line 5882
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    const/4 v10, 0x0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    invoke-static/range {v0 .. v10}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 5884
    return-void
.end method

.method public blacklist addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 23
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "opFlag"    # I
    .param p7, "discreteAccessTime"    # J
    .param p9, "discreteAccessDuration"    # J
    .param p11, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 5891
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    invoke-static/range {v0 .. v10}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 5893
    return-void
.end method

.method public blacklist clearHistory(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5981
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    .line 5982
    .local v0, "historicalUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-static {v0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mclearHistory(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;)V

    .line 5983
    invoke-static {v0}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5984
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5986
    :cond_12
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 5990
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6051
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6052
    return v0

    .line 6054
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 6057
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 6058
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalOps;
    iget-wide v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v5, v2, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    .line 6059
    return v1

    .line 6061
    :cond_1e
    iget-wide v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iget-wide v5, v2, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_27

    .line 6062
    return v1

    .line 6064
    :cond_27
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v3, :cond_30

    .line 6065
    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v3, :cond_3b

    .line 6066
    return v1

    .line 6068
    :cond_30
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 6069
    return v1

    .line 6071
    :cond_3b
    return v0

    .line 6055
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public blacklist filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V
    .registers 34
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFilter"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J

    .line 5810
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    move-wide/from16 v3, p9

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    .line 5811
    .local v5, "durationMillis":J
    iget-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5812
    iget-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5813
    sub-long v7, v3, v1

    long-to-double v7, v7

    long-to-double v9, v5

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    .line 5815
    .local v17, "scaleFactor":D
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v7

    .line 5816
    .local v7, "uidCount":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "i":I
    :goto_2b
    if-ltz v8, :cond_6d

    .line 5817
    iget-object v9, v0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 5818
    .local v11, "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    and-int/lit8 v9, p6, 0x1

    if-eqz v9, :cond_48

    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v9

    move/from16 v10, p1

    if-eq v10, v9, :cond_4a

    .line 5819
    iget-object v9, v0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_6a

    .line 5818
    :cond_48
    move/from16 v10, p1

    .line 5821
    :cond_4a
    iget-wide v12, v0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v14, v0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    move/from16 v16, p5

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p6

    invoke-static/range {v11 .. v22}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    .line 5823
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v9

    if-nez v9, :cond_6a

    .line 5824
    iget-object v9, v0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5816
    .end local v11    # "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_6a
    :goto_6a
    add-int/lit8 v8, v8, -0x1

    goto :goto_2b

    :cond_6d
    move/from16 v10, p1

    .line 5828
    .end local v8    # "i":I
    return-void
.end method

.method public whitelist getBeginTimeMillis()J
    .registers 3

    .line 5924
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    return-wide v0
.end method

.method public blacklist getDurationMillis()J
    .registers 5

    .line 5847
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getEndTimeMillis()J
    .registers 3

    .line 5932
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    return-wide v0
.end method

.method public whitelist getUidCount()I
    .registers 2

    .line 5943
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 5944
    const/4 v0, 0x0

    return v0

    .line 5946
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 3
    .param p1, "uid"    # I

    .line 5973
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 5974
    const/4 v0, 0x0

    return-object v0

    .line 5976
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalUidOps;

    return-object v0
.end method

.method public whitelist getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 3
    .param p1, "index"    # I

    .line 5959
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    .line 5962
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalUidOps;

    return-object v0

    .line 5960
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 6076
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 6077
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 6078
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 17
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "increment"    # J

    .line 5855
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-wide v6, p7

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 5857
    return-void
.end method

.method public blacklist increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 17
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "increment"    # J

    .line 5873
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-wide v6, p7

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 5875
    return-void
.end method

.method public blacklist increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 17
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "increment"    # J

    .line 5864
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalOps;->getOrCreateHistoricalUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-wide v6, p7

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 5866
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 6

    .line 5832
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_e

    .line 5833
    return v1

    .line 5835
    :cond_e
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 5836
    .local v0, "uidCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_29

    .line 5837
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 5838
    .local v3, "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-static {v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 5839
    const/4 v1, 0x0

    return v1

    .line 5836
    .end local v3    # "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 5842
    .end local v2    # "i":I
    :cond_29
    return v1
.end method

.method public blacklist merge(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 5776
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    iget-wide v2, p1, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5777
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    iget-wide v2, p1, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5778
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    .line 5779
    .local v0, "uidCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_44

    .line 5780
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    .line 5781
    .local v2, "otherUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOps(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v3

    .line 5782
    .local v3, "thisUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    if-eqz v3, :cond_2d

    .line 5783
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps;)V

    goto :goto_41

    .line 5785
    :cond_2d
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-nez v4, :cond_38

    .line 5786
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    .line 5788
    :cond_38
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5779
    .end local v2    # "otherUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v3    # "thisUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 5791
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method public blacklist offsetBeginAndEndTime(J)V
    .registers 5
    .param p1, "offsetMillis"    # J

    .line 5899
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5900
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5901
    return-void
.end method

.method public blacklist setBeginAndEndTime(JJ)V
    .registers 5
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J

    .line 5905
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5906
    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5907
    return-void
.end method

.method public blacklist setBeginTime(J)V
    .registers 3
    .param p1, "beginTimeMillis"    # J

    .line 5911
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    .line 5912
    return-void
.end method

.method public blacklist setEndTime(J)V
    .registers 3
    .param p1, "endTimeMillis"    # J

    .line 5916
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    .line 5917
    return-void
.end method

.method public blacklist spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p1, "splicePoint"    # D

    .line 5711
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppOpsManager$HistoricalOps;->splice(DZ)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    return-object v0
.end method

.method public blacklist spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p1, "fractionToRemove"    # D

    .line 5722
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppOpsManager$HistoricalOps;->splice(DZ)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 6084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5995
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mBeginTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5996
    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mEndTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5997
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    if-eqz v0, :cond_45

    .line 5998
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5999
    .local v0, "uidCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_26

    .line 6001
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6000
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 6003
    .end local v1    # "i":I
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6004
    .local v1, "opsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalUidOps;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v0, :cond_3c

    .line 6005
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOps;->mHistoricalUidOps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalUidOps;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6004
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 6007
    .end local v2    # "i":I
    :cond_3c
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6008
    .end local v0    # "uidCount":I
    .end local v1    # "opsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalUidOps;>;"
    goto :goto_49

    .line 6009
    :cond_45
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6011
    :goto_49
    return-void
.end method
