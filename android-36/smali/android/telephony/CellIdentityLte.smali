.class public final Landroid/telephony/CellIdentityLte;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityLte.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist MAX_BANDWIDTH:I = 0x4e20

.field private static final blacklist MAX_CI:I = 0xfffffff

.field private static final blacklist MAX_EARFCN:I = 0x3ffff

.field private static final blacklist MAX_PCI:I = 0x1f7

.field private static final blacklist MAX_TAC:I = 0xffff

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdditionalPlmns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBands:[I

.field private final greylist-max-o mBandwidth:I

.field private final greylist-max-o mCi:I

.field private blacklist mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

.field private final blacklist mEarfcn:I

.field private final greylist-max-o mPci:I

.field private final greylist-max-o mTac:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    .line 390
    new-instance v0, Landroid/telephony/CellIdentityLte$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 8

    .line 72
    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const v1, 0x7fffffff

    iput v1, v0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 74
    iput v1, v0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 75
    iput v1, v0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 76
    iput v1, v0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    .line 77
    const/4 v2, 0x0

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 78
    iput v1, v0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 79
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 80
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 81
    iput-object v1, v0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor greylist-max-p <init>(IIIII)V
    .registers 20
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "ci"    # I
    .param p4, "pci"    # I
    .param p5, "tac"    # I

    .line 96
    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 96
    const v5, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v1 .. v13}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V
    .registers 20
    .param p1, "ci"    # I
    .param p2, "pci"    # I
    .param p3, "tac"    # I
    .param p4, "earfcn"    # I
    .param p5, "bands"    # [I
    .param p6, "bandwidth"    # I
    .param p7, "mccStr"    # Ljava/lang/String;
    .param p8, "mncStr"    # Ljava/lang/String;
    .param p9, "alphal"    # Ljava/lang/String;
    .param p10, "alphas"    # Ljava/lang/String;
    .param p12, "csgInfo"    # Landroid/telephony/ClosedSubscriberGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ClosedSubscriberGroupInfo;",
            ")V"
        }
    .end annotation

    .line 122
    .local p11, "additionalPlmns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p7

    move-object v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const v1, 0xfffffff

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 124
    const/16 v1, 0x1f7

    invoke-static {p2, v2, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 125
    const v1, 0xffff

    invoke-static {p3, v2, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 126
    const v1, 0x3ffff

    invoke-static {p4, v2, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    .line 127
    iput-object p5, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 128
    const/16 v1, 0x4e20

    invoke-static {p6, v2, v1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 129
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 130
    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "plmn":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/CellIdentityLte;->isValidPlmn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 132
    iget-object v4, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v2    # "plmn":Ljava/lang/String;
    :cond_61
    goto :goto_4a

    .line 135
    :cond_62
    move-object/from16 v1, p12

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 136
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->updateGlobalCellId()V

    .line 137
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 374
    sget-object v0, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 382
    const-class v1, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 384
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->updateGlobalCellId()V

    .line 386
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityLte;)V
    .registers 15
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    .line 140
    iget v1, p1, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v2, p1, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v3, p1, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, p1, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iget-object v5, p1, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget v6, p1, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    iget-object v7, p1, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v9, p1, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p1, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p1, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v12, p1, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 142
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 406
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->asCellLocation()Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/gsm/GsmCellLocation;
    .registers 6

    .line 301
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 302
    .local v0, "cl":Landroid/telephony/gsm/GsmCellLocation;
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_10

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    goto :goto_11

    :cond_10
    move v1, v2

    .line 303
    .local v1, "tac":I
    :goto_11
    iget v4, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    if-eq v4, v3, :cond_17

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 304
    .local v2, "cid":I
    :cond_17
    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 305
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 306
    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityLte;
    .registers 2

    .line 153
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/telephony/CellIdentityLte;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 318
    return v0

    .line 321
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityLte;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 322
    return v2

    .line 325
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityLte;

    .line 326
    .local v1, "o":Landroid/telephony/CellIdentityLte;
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mCi:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mPci:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mTac:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    if-ne v3, v4, :cond_64

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mBands:[I

    .line 330
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_64

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    if-ne v3, v4, :cond_64

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    .line 332
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    .line 333
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 334
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 335
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 336
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_65

    :cond_64
    move v0, v2

    .line 326
    :goto_65
    return v0
.end method

.method public whitelist getAdditionalPlmns()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBands()[I
    .registers 3

    .line 229
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBandwidth()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    return v0
.end method

.method public greylist-max-o getChannelNumber()I
    .registers 2

    .line 267
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    return v0
.end method

.method public whitelist getCi()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    return v0
.end method

.method public whitelist getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    return-object v0
.end method

.method public whitelist getEarfcn()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    return v0
.end method

.method public whitelist getMcc()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    :cond_f
    const v0, 0x7fffffff

    :goto_12
    return v0
.end method

.method public whitelist getMccString()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    :cond_f
    const v0, 0x7fffffff

    :goto_12
    return v0
.end method

.method public whitelist getMncString()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMobileNetworkOperator()Ljava/lang/String;
    .registers 3

    .line 261
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public whitelist getPci()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    return v0
.end method

.method public whitelist getTac()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 311
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;
    .registers 14

    .line 147
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget-object v5, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v7, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 v12, 0x0

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    const-string v1, ":{ mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string v1, " mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    const-string v1, " mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string v1, " mEarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    const-string v1, " mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    const-string v1, " mBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const-string v1, " mAdditionalPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    const-string v1, " mCsgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .registers 5

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getPlmn()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "plmn":Ljava/lang/String;
    if-nez v0, :cond_a

    return-void

    .line 163
    :cond_a
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_12

    return-void

    .line 165
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%07x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 361
    const/4 v0, 0x3

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 367
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 369
    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 370
    return-void
.end method
