.class public final Landroid/app/AppOpsManager$HistoricalOp;
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
    name = "HistoricalOp"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccessCount:Landroid/util/LongSparseLongArray;

.field private blacklist mAccessDuration:Landroid/util/LongSparseLongArray;

.field private blacklist mDiscreteAccesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOp:I

.field private blacklist mRejectCount:Landroid/util/LongSparseLongArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$Z4vKjtyV8PNkEDfdJjCTWgjfyeU(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$h336Auc1hadZ8WGTWve688ms-7s(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessCount()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$t7pLHS1lmPvv57vnfGlwyqxiBNU(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateRejectCount()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->addDiscreteAccess(IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->filter(IDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessCount(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessDuration(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseRejectCount(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7621
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "op"    # I

    .line 7035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7036
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7037
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 7
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalOp;

    .line 7039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7040
    iget v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7041
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_13

    .line 7042
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 7044
    :cond_13
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_1f

    .line 7045
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 7047
    :cond_1f
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_2b

    .line 7048
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 7050
    :cond_2b
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    .line 7051
    .local v0, "historicalOpCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_46

    .line 7052
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v2

    .line 7053
    .local v2, "origOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    new-instance v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(Landroid/app/AppOpsManager$AttributedOpEntry;Landroid/app/AppOpsManager-IA;)V

    .line 7054
    .local v3, "cloneOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateDiscreteAccesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7051
    .end local v2    # "origOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "cloneOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 7056
    .end local v1    # "i":I
    :cond_46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 7058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7059
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7060
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 7061
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 7062
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 7063
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7064
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 7545
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V

    .line 7546
    return-void
.end method

.method private blacklist addDiscreteAccess(IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 20
    .param p1, "uidState"    # I
    .param p2, "flag"    # I
    .param p3, "discreteAccessTime"    # J
    .param p5, "discreteAccessDuration"    # J
    .param p7, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 7189
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateDiscreteAccesses()Ljava/util/List;

    move-result-object v0

    .line 7190
    .local v0, "discreteAccesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 7191
    .local v1, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-static/range {p1 .. p2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 7192
    .local v2, "key":J
    new-instance v4, Landroid/app/AppOpsManager$NoteOpEvent;

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 7193
    .local v4, "note":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 7194
    new-instance v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v1, v7}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    .line 7195
    .local v5, "access":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 7196
    .local v6, "insertionPoint":I
    :goto_29
    const/16 v9, 0x1f

    if-ltz v6, :cond_3f

    .line 7197
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v10

    cmp-long v10, v10, p3

    if-gez v10, :cond_3c

    .line 7199
    goto :goto_3f

    .line 7196
    :cond_3c
    add-int/lit8 v6, v6, -0x1

    goto :goto_29

    .line 7202
    :cond_3f
    :goto_3f
    add-int/2addr v6, v7

    .line 7203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_6d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7204
    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v9

    cmp-long v9, v9, p3

    if-nez v9, :cond_6d

    .line 7205
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7206
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$AttributedOpEntry;

    aput-object v10, v9, v8

    aput-object v5, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 7205
    invoke-static {v7}, Landroid/app/AppOpsManager;->-$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 7208
    :cond_6d
    invoke-interface {v0, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7210
    :goto_70
    return-void
.end method

.method private blacklist filter(IDJJ)V
    .registers 16
    .param p1, "historyFlag"    # I
    .param p2, "scaleFactor"    # D
    .param p4, "beginTimeMillis"    # J
    .param p6, "endTimeMillis"    # J

    .line 7068
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 7069
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 7070
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 7071
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    goto :goto_1b

    .line 7073
    :cond_c
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    .line 7074
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    .line 7075
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    .line 7077
    :goto_1b
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_22

    .line 7078
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7079
    return-void

    .line 7081
    :cond_22
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    .line 7082
    .local v0, "discreteOpCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_51

    .line 7083
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7084
    .local v2, "op":Landroid/app/AppOpsManager$AttributedOpEntry;
    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v4

    .line 7085
    .local v4, "opBeginTime":J
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 7086
    .local v6, "opEndTime":J
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v6

    .line 7087
    cmp-long v3, v6, p4

    if-ltz v3, :cond_49

    cmp-long v3, v4, p6

    if-lez v3, :cond_4e

    .line 7088
    :cond_49
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7082
    .end local v2    # "op":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v4    # "opBeginTime":J
    .end local v6    # "opEndTime":J
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 7091
    .end local v1    # "i":I
    :cond_51
    return-void
.end method

.method private blacklist getOrCreateAccessCount()Landroid/util/LongSparseLongArray;
    .registers 2

    .line 7549
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    .line 7550
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 7552
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private blacklist getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;
    .registers 2

    .line 7563
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    .line 7564
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 7566
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private blacklist getOrCreateDiscreteAccesses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7570
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_b

    .line 7571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7573
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-object v0
.end method

.method private blacklist getOrCreateRejectCount()Landroid/util/LongSparseLongArray;
    .registers 2

    .line 7556
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    .line 7557
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 7559
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private blacklist hasData(Landroid/util/LongSparseLongArray;)Z
    .registers 3
    .param p1, "array"    # Landroid/util/LongSparseLongArray;

    .line 7101
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist increaseAccessCount(IIJ)V
    .registers 11
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .param p3, "increment"    # J

    .line 7163
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessCount()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .end local p1    # "uidState":I
    .end local p2    # "flags":I
    .end local p3    # "increment":J
    .local v2, "uidState":I
    .local v3, "flags":I
    .local v4, "increment":J
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    .line 7164
    return-void
.end method

.method private blacklist increaseAccessDuration(IIJ)V
    .registers 11
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .param p3, "increment"    # J

    .line 7173
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .end local p1    # "uidState":I
    .end local p2    # "flags":I
    .end local p3    # "increment":J
    .local v2, "uidState":I
    .local v3, "flags":I
    .local v4, "increment":J
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    .line 7174
    return-void
.end method

.method private blacklist increaseCount(Landroid/util/LongSparseLongArray;IIJ)V
    .registers 11
    .param p1, "counts"    # Landroid/util/LongSparseLongArray;
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 7178
    nop

    :goto_1
    if-eqz p3, :cond_18

    .line 7179
    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 7180
    .local v0, "flag":I
    not-int v1, v0

    and-int/2addr p3, v1

    .line 7181
    invoke-static {p2, v0}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 7182
    .local v1, "key":J
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v3

    add-long/2addr v3, p4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7183
    .end local v0    # "flag":I
    .end local v1    # "key":J
    goto :goto_1

    .line 7184
    :cond_18
    return-void
.end method

.method private blacklist increaseRejectCount(IIJ)V
    .registers 11
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .param p3, "increment"    # J

    .line 7168
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateRejectCount()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .end local p1    # "uidState":I
    .end local p2    # "flags":I
    .end local p3    # "increment":J
    .local v2, "uidState":I
    .local v3, "flags":I
    .local v4, "increment":J
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    .line 7169
    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 2

    .line 7094
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 7095
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 7096
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 7094
    :goto_1f
    return v0
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 11
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalOp;

    .line 7130
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    .line 7131
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    .line 7132
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    .line 7134
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_23

    .line 7135
    return-void

    .line 7137
    :cond_23
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_31

    .line 7138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7139
    return-void

    .line 7141
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7142
    .local v0, "historicalDiscreteAccesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v1

    .line 7143
    .local v1, "otherHistoricalOpCount":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v2

    .line 7144
    .local v2, "historicalOpCount":I
    const/4 v3, 0x0

    .line 7145
    .local v3, "i":I
    const/4 v4, 0x0

    .line 7146
    .local v4, "j":I
    :goto_40
    if-lt v3, v1, :cond_4c

    if-ge v4, v2, :cond_45

    goto :goto_4c

    .line 7158
    :cond_45
    invoke-static {v0}, Landroid/app/AppOpsManager;->-$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7159
    return-void

    .line 7147
    :cond_4c
    :goto_4c
    if-ne v3, v1, :cond_5d

    .line 7148
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_40

    .line 7149
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_5d
    if-ne v4, v2, :cond_6e

    .line 7150
    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_40

    .line 7151
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_6e
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7152
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-gez v5, :cond_9b

    .line 7153
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_40

    .line 7155
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_9b
    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_40
.end method

.method private static blacklist merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V
    .registers 11
    .param p1, "other"    # Landroid/util/LongSparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/util/LongSparseLongArray;",
            ">;",
            "Landroid/util/LongSparseLongArray;",
            ")V"
        }
    .end annotation

    .line 7601
    .local p0, "thisSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/util/LongSparseLongArray;>;"
    if-eqz p1, :cond_22

    .line 7602
    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 7603
    .local v0, "otherSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 7604
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseLongArray;

    .line 7605
    .local v2, "that":Landroid/util/LongSparseLongArray;
    invoke-virtual {p1, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    .line 7606
    .local v3, "otherKey":J
    invoke-virtual {p1, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 7607
    .local v5, "otherValue":J
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7603
    .end local v2    # "that":Landroid/util/LongSparseLongArray;
    .end local v3    # "otherKey":J
    .end local v5    # "otherValue":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7610
    .end local v0    # "otherSize":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private static blacklist scale(Landroid/util/LongSparseLongArray;D)V
    .registers 9
    .param p0, "data"    # Landroid/util/LongSparseLongArray;
    .param p1, "scaleFactor"    # D

    .line 7584
    if-eqz p0, :cond_1e

    .line 7585
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 7586
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 7587
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 7588
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    .line 7587
    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7586
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7591
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 6
    .param p1, "fractionToRemove"    # D

    .line 7105
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    .line 7106
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOp;
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    .line 7107
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    .line 7108
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    .line 7109
    return-object v0
.end method

.method private static blacklist splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V
    .registers 14
    .param p0, "sourceContainer"    # Landroid/util/LongSparseLongArray;
    .param p2, "fractionToRemove"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/LongSparseLongArray;",
            ">;D)V"
        }
    .end annotation

    .line 7115
    .local p1, "destContainerProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/util/LongSparseLongArray;>;"
    if-eqz p0, :cond_2e

    .line 7116
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 7117
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2e

    .line 7118
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 7119
    .local v2, "key":J
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 7120
    .local v4, "value":J
    long-to-double v6, v4

    mul-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 7121
    .local v6, "removedFraction":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2b

    .line 7122
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7123
    sub-long v8, v4, v6

    invoke-virtual {p0, v2, v3, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7117
    .end local v2    # "key":J
    .end local v4    # "value":J
    .end local v6    # "removedFraction":J
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7127
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method


# virtual methods
.method public blacklist collectKeys()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 7614
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 7616
    .local v0, "result":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 7617
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 7618
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 7497
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 7511
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 7512
    return v0

    .line 7514
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_51

    .line 7517
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 7518
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalOp;
    iget v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iget v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    if-eq v3, v4, :cond_1c

    .line 7519
    return v1

    .line 7521
    :cond_1c
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 7522
    return v1

    .line 7524
    :cond_27
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 7525
    return v1

    .line 7527
    :cond_32
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 7528
    return v1

    .line 7530
    :cond_3d
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v3, :cond_48

    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v3, :cond_46

    goto :goto_50

    .line 7531
    :cond_46
    move v0, v1

    goto :goto_50

    :cond_48
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget-object v1, v2, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7530
    :goto_50
    return v0

    .line 7515
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_51
    :goto_51
    return v1
.end method

.method public whitelist getAccessCount(III)J
    .registers 6
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 7349
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getAccessDuration(III)J
    .registers 6
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 7492
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getBackgroundAccessCount(I)J
    .registers 5
    .param p1, "flags"    # I

    .line 7304
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getBackgroundAccessDuration(I)J
    .registers 5
    .param p1, "flags"    # I

    .line 7466
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getBackgroundDiscreteAccesses(I)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7323
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBackgroundRejectCount(I)J
    .registers 5
    .param p1, "flags"    # I

    .line 7404
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 3
    .param p1, "index"    # I

    .line 7247
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 7250
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v0

    .line 7248
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getDiscreteAccessCount()I
    .registers 2

    .line 7233
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_6

    .line 7234
    const/4 v0, 0x0

    return v0

    .line 7236
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getDiscreteAccesses(III)Ljava/util/List;
    .registers 5
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7369
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getForegroundAccessCount(I)J
    .registers 5
    .param p1, "flags"    # I

    .line 7267
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7268
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7267
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getForegroundAccessDuration(I)J
    .registers 5
    .param p1, "flags"    # I

    .line 7447
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7448
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7447
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getForegroundDiscreteAccesses(I)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7286
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7287
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7286
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getForegroundRejectCount(I)J
    .registers 5
    .param p1, "flags"    # I

    .line 7386
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7387
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7386
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOpCode()I
    .registers 2

    .line 7223
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    return v0
.end method

.method public whitelist getOpName()Ljava/lang/String;
    .registers 3

    .line 7218
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRejectCount(III)J
    .registers 6
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 7429
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 7536
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7537
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7538
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7539
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7540
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7541
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7502
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7503
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    .line 7504
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    .line 7505
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    .line 7506
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v0, p1, p2}, Landroid/app/AppOpsManager;->-$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 7507
    return-void
.end method
