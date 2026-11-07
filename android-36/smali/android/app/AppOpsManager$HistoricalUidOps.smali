.class public final Landroid/app/AppOpsManager$HistoricalUidOps;
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
    name = "HistoricalUidOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalUidOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoricalPackageOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalUidOps;->addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHistory(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->clearHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Landroid/app/AppOpsManager$HistoricalUidOps;->filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalUidOps;D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6321
    new-instance v0, Landroid/app/AppOpsManager$HistoricalUidOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalUidOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalUidOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 6112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6113
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6114
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 6116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6117
    iget v0, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6118
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6119
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_2f

    .line 6120
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    .line 6121
    .local v2, "origOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    new-instance v3, Landroid/app/AppOpsManager$HistoricalPackageOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager-IA;)V

    .line 6122
    .local v3, "cloneOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_23

    .line 6123
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6125
    :cond_23
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6119
    .end local v2    # "origOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v3    # "cloneOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6127
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6132
    sget-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6133
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6300
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    .line 6301
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6302
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 6303
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6302
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6305
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private blacklist addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 21
    .param p1, "opCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "uidState"    # I
    .param p5, "flag"    # I
    .param p6, "discreteAccessTime"    # J
    .param p8, "discreteAccessDuration"    # J
    .param p10, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6227
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    invoke-static/range {v0 .. v9}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6229
    return-void
.end method

.method private blacklist clearHistory(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6283
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 6284
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6286
    :cond_9
    return-void
.end method

.method private blacklist filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "opNames"    # [Ljava/lang/String;
    .param p4, "filter"    # I
    .param p5, "historyFilter"    # I
    .param p6, "fractionToRemove"    # D
    .param p8, "beginTimeMillis"    # J
    .param p10, "endTimeMillis"    # J

    .line 6175
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6176
    .local v0, "packageCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3e

    .line 6177
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    .line 6178
    .local v2, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_20

    .line 6179
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6178
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 6180
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3b

    .line 6182
    :cond_20
    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-static/range {v2 .. v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    .line 6184
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v3

    if-nez v3, :cond_3b

    .line 6185
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6176
    .end local v2    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 6189
    .end local v1    # "i":I
    :cond_3e
    return-void
.end method

.method private blacklist getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6309
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 6310
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6312
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6313
    .local v0, "historicalPackageOp":Landroid/app/AppOpsManager$HistoricalPackageOps;
    if-nez v0, :cond_20

    .line 6314
    new-instance v1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 6315
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6317
    :cond_20
    return-object v0
.end method

.method private blacklist increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .param p1, "opCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "uidState"    # I
    .param p5, "flags"    # I
    .param p6, "increment"    # J

    .line 6205
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .end local p1    # "opCode":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "uidState":I
    .end local p5    # "flags":I
    .end local p6    # "increment":J
    .local v1, "opCode":I
    .local v2, "attributionTag":Ljava/lang/String;
    .local v3, "uidState":I
    .local v4, "flags":I
    .local v5, "increment":J
    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    .line 6207
    return-void
.end method

.method private blacklist increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .param p1, "opCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "uidState"    # I
    .param p5, "flags"    # I
    .param p6, "increment"    # J

    .line 6219
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .end local p1    # "opCode":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "uidState":I
    .end local p5    # "flags":I
    .end local p6    # "increment":J
    .local v1, "opCode":I
    .local v2, "attributionTag":Ljava/lang/String;
    .local v3, "uidState":I
    .local v4, "flags":I
    .local v5, "increment":J
    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    .line 6221
    return-void
.end method

.method private blacklist increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .param p1, "opCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "uidState"    # I
    .param p5, "flags"    # I
    .param p6, "increment"    # J

    .line 6212
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .end local p1    # "opCode":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "uidState":I
    .end local p5    # "flags":I
    .end local p6    # "increment":J
    .local v1, "opCode":I
    .local v2, "attributionTag":Ljava/lang/String;
    .local v3, "uidState":I
    .local v4, "flags":I
    .local v5, "increment":J
    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    .line 6214
    return-void
.end method

.method private blacklist isEmpty()Z
    .registers 5

    .line 6192
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6193
    .local v0, "packageCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 6194
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6195
    .local v2, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 6196
    const/4 v3, 0x0

    return v3

    .line 6193
    .end local v2    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 6199
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 6155
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    .line 6156
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 6157
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    .line 6158
    .local v2, "otherPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    nop

    .line 6159
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6158
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    .line 6160
    .local v3, "thisPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    if-eqz v3, :cond_1a

    .line 6161
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    goto :goto_2e

    .line 6163
    :cond_1a
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_25

    .line 6164
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6166
    :cond_25
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6156
    .end local v2    # "otherPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v3    # "thisPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6169
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 10
    .param p1, "fractionToRemove"    # D

    .line 6136
    const/4 v0, 0x0

    .line 6137
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    .line 6138
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_33

    .line 6139
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    .line 6140
    .local v3, "origOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 6141
    .local v4, "spliceOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    if-eqz v4, :cond_30

    .line 6142
    if-nez v0, :cond_1c

    .line 6143
    new-instance v5, Landroid/app/AppOpsManager$HistoricalUidOps;

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(I)V

    move-object v0, v5

    .line 6145
    :cond_1c
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_27

    .line 6146
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    .line 6148
    :cond_27
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6138
    .end local v3    # "origOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6151
    .end local v2    # "i":I
    :cond_33
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6290
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6335
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6336
    return v0

    .line 6338
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 6341
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 6342
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalUidOps;
    iget v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iget v4, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    if-eq v3, v4, :cond_1c

    .line 6343
    return v1

    .line 6345
    :cond_1c
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_25

    .line 6346
    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_30

    .line 6347
    return v1

    .line 6349
    :cond_25
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 6350
    return v1

    .line 6352
    :cond_30
    return v0

    .line 6339
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist getPackageCount()I
    .registers 2

    .line 6246
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6247
    const/4 v0, 0x0

    return v0

    .line 6249
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6276
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6277
    const/4 v0, 0x0

    return-object v0

    .line 6279
    :cond_6
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object v0
.end method

.method public whitelist getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3
    .param p1, "index"    # I

    .line 6262
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 6265
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object v0

    .line 6263
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 6235
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 6357
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    .line 6358
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_f

    .line 6359
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v1, v2

    .line 6360
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6295
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6296
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 6297
    return-void
.end method
