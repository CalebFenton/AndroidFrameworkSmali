.class public final Landroid/app/AppOpsManager$HistoricalPackageOps;
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
    name = "HistoricalPackageOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributedHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$HistoricalPackageOps;->addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessDuration(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseRejectCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6615
    new-instance v0, Landroid/app/AppOpsManager$HistoricalPackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalPackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6380
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6381
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6382
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_2f

    .line 6383
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6384
    .local v2, "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    new-instance v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager-IA;)V

    .line 6385
    .local v3, "cloneOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_23

    .line 6386
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6388
    :cond_23
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6382
    .end local v2    # "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v3    # "cloneOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6390
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6394
    sget-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6395
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6376
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6377
    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6454
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    .line 6455
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6456
    .local v0, "attributionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 6457
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6456
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6459
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private blacklist addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 19
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flag"    # I
    .param p5, "discreteAccessTime"    # J
    .param p7, "discreteAccessDuration"    # J
    .param p9, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6493
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6495
    return-void
.end method

.method private blacklist filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 23
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "opNames"    # [Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "historyFilter"    # I
    .param p5, "fractionToRemove"    # D
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J

    .line 6437
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6438
    .local v0, "attributionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3b

    .line 6439
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6440
    .local v2, "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_20

    .line 6441
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 6440
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 6442
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_38

    .line 6444
    :cond_20
    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v2 .. v11}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V

    .line 6446
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v3

    if-nez v3, :cond_38

    .line 6447
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6438
    .end local v2    # "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 6451
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private blacklist getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 6508
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 6509
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6511
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6513
    .local v0, "historicalAttributionOp":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-nez v0, :cond_20

    .line 6514
    new-instance v1, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 6515
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6517
    :cond_20
    return-object v0
.end method

.method private blacklist increaseAccessCount(ILjava/lang/String;IIJ)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 6474
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .end local p1    # "opCode":I
    .end local p3    # "uidState":I
    .end local p4    # "flags":I
    .end local p5    # "increment":J
    .local v1, "opCode":I
    .local v2, "uidState":I
    .local v3, "flags":I
    .local v4, "increment":J
    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6476
    return-void
.end method

.method private blacklist increaseAccessDuration(ILjava/lang/String;IIJ)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 6486
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .end local p1    # "opCode":I
    .end local p3    # "uidState":I
    .end local p4    # "flags":I
    .end local p5    # "increment":J
    .local v1, "opCode":I
    .local v2, "uidState":I
    .local v3, "flags":I
    .local v4, "increment":J
    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6488
    return-void
.end method

.method private blacklist increaseRejectCount(ILjava/lang/String;IIJ)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 6480
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .end local p1    # "opCode":I
    .end local p3    # "uidState":I
    .end local p4    # "flags":I
    .end local p5    # "increment":J
    .local v1, "opCode":I
    .local v2, "uidState":I
    .local v3, "flags":I
    .local v4, "increment":J
    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6482
    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 5

    .line 6462
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6463
    .local v0, "attributionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 6464
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6465
    .local v2, "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-static {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 6466
    const/4 v3, 0x0

    return v3

    .line 6463
    .end local v2    # "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 6469
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6417
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6418
    .local v0, "attributionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 6419
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6420
    .local v2, "otherAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    nop

    .line 6421
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 6420
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6422
    .local v3, "thisAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-eqz v3, :cond_1a

    .line 6423
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    goto :goto_2e

    .line 6425
    :cond_1a
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_25

    .line 6426
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6428
    :cond_25
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6418
    .end local v2    # "otherAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v3    # "thisAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6432
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 10
    .param p1, "fractionToRemove"    # D

    .line 6398
    const/4 v0, 0x0

    .line 6399
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6400
    .local v1, "attributionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_33

    .line 6401
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6402
    .local v3, "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 6403
    .local v4, "spliceOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-eqz v4, :cond_30

    .line 6404
    if-nez v0, :cond_1c

    .line 6405
    new-instance v5, Landroid/app/AppOpsManager$HistoricalPackageOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 6407
    :cond_1c
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_27

    .line 6408
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6410
    :cond_27
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6400
    .end local v3    # "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6413
    .end local v2    # "i":I
    :cond_33
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6606
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6630
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6631
    return v0

    .line 6633
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_35

    .line 6636
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6637
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalPackageOps;
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 6638
    return v1

    .line 6640
    :cond_20
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_29

    .line 6641
    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_34

    .line 6642
    return v1

    .line 6644
    :cond_29
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 6645
    return v1

    .line 6647
    :cond_34
    return v0

    .line 6634
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_35
    :goto_35
    return v1
.end method

.method public whitelist getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 6696
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6697
    const/4 v0, 0x0

    return-object v0

    .line 6699
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object v0
.end method

.method public whitelist getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3
    .param p1, "index"    # I

    .line 6682
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 6685
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object v0

    .line 6683
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getAttributedOpsCount()I
    .registers 2

    .line 6666
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6667
    const/4 v0, 0x0

    return v0

    .line 6669
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 8
    .param p1, "opName"    # Ljava/lang/String;

    .line 6584
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6585
    return-object v1

    .line 6588
    :cond_6
    const/4 v0, 0x0

    .line 6589
    .local v0, "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    .line 6590
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_27

    .line 6591
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6592
    .local v4, "attributionOp":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v4, :cond_24

    .line 6593
    if-nez v0, :cond_21

    .line 6594
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v5, v4, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager-IA;)V

    move-object v0, v5

    .end local v0    # "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    .local v5, "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    goto :goto_24

    .line 6596
    .end local v5    # "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    .restart local v0    # "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_21
    invoke-static {v0, v4}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    .line 6590
    .end local v4    # "attributionOp":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 6601
    .end local v3    # "i":I
    :cond_27
    return-object v0
.end method

.method public whitelist getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 8
    .param p1, "index"    # I

    .line 6554
    const/4 v0, 0x0

    .line 6555
    .local v0, "numOpsFound":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6557
    .local v1, "numAttributions":I
    const/4 v2, 0x0

    .local v2, "code":I
    :goto_6
    const/16 v3, 0xa3

    if-ge v2, v3, :cond_2b

    .line 6558
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    .line 6560
    .local v3, "opName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_f
    if-ge v4, v1, :cond_28

    .line 6561
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 6562
    if-ne v0, p1, :cond_22

    .line 6563
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    return-object v5

    .line 6565
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 6566
    goto :goto_28

    .line 6560
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 6557
    .end local v3    # "opName":Ljava/lang/String;
    .end local v4    # "attributionNum":I
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6572
    .end local v2    # "code":I
    :cond_2b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public whitelist getOpCount()I
    .registers 7

    .line 6527
    const/4 v0, 0x0

    .line 6528
    .local v0, "numOps":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6530
    .local v1, "numAttributions":I
    const/4 v2, 0x0

    .local v2, "code":I
    :goto_6
    const/16 v3, 0xa3

    if-ge v2, v3, :cond_24

    .line 6531
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    .line 6533
    .local v3, "opName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_f
    if-ge v4, v1, :cond_21

    .line 6534
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 6535
    add-int/lit8 v0, v0, 0x1

    .line 6536
    goto :goto_21

    .line 6533
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 6530
    .end local v3    # "opName":Ljava/lang/String;
    .end local v4    # "attributionNum":I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6541
    .end local v2    # "code":I
    :cond_24
    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 6503
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 6652
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 6653
    .local v0, "result":I
    :goto_d
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1a

    .line 6654
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    add-int/2addr v2, v1

    .line 6655
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6611
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6612
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 6613
    return-void
.end method
