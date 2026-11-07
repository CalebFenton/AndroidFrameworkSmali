.class public final Landroid/telephony/CellIdentityWcdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityWcdma.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist MAX_CID:I = 0xfffffff

.field private static final blacklist MAX_LAC:I = 0xffff

.field private static final blacklist MAX_PSC:I = 0x1ff

.field private static final blacklist MAX_UARFCN:I = 0x3fff

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

.field private final greylist-max-o mCid:I

.field private final blacklist mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

.field private final greylist-max-o mLac:I

.field private final greylist-max-o mPsc:I

.field private final greylist mUarfcn:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    .line 324
    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 8

    .line 66
    sget-object v1, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const v1, 0x7fffffff

    iput v1, v0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 68
    iput v1, v0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 69
    iput v1, v0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 70
    iput v1, v0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    .line 71
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 72
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 73
    iput-object v1, v0, Landroid/telephony/CellIdentityWcdma;->mGlobalCellId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V
    .registers 18
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "psc"    # I
    .param p4, "uarfcn"    # I
    .param p5, "mccStr"    # Ljava/lang/String;
    .param p6, "mncStr"    # Ljava/lang/String;
    .param p7, "alphal"    # Ljava/lang/String;
    .param p8, "alphas"    # Ljava/lang/String;
    .param p10, "csgInfo"    # Landroid/telephony/ClosedSubscriberGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
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

    .line 95
    .local p9, "additionalPlmns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v1, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const v1, 0xffff

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/telephony/CellIdentityWcdma;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 97
    const v1, 0xfffffff

    invoke-static {p2, v2, v1}, Landroid/telephony/CellIdentityWcdma;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 98
    const/16 v1, 0x1ff

    invoke-static {p3, v2, v1}, Landroid/telephony/CellIdentityWcdma;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 99
    const/16 v1, 0x3fff

    invoke-static {p4, v2, v1}, Landroid/telephony/CellIdentityWcdma;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    .line 100
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface/range {p9 .. p9}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 101
    invoke-interface/range {p9 .. p9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    .local v2, "plmn":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/CellIdentityWcdma;->isValidPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 103
    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "plmn":Ljava/lang/String;
    :cond_54
    goto :goto_3d

    .line 106
    :cond_55
    move-object/from16 v1, p10

    iput-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 107
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->updateGlobalCellId()V

    .line 108
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 310
    sget-object v0, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 316
    const-class v1, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iput-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 318
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->updateGlobalCellId()V

    .line 320
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityWcdma;)V
    .registers 13
    .param p1, "cid"    # Landroid/telephony/CellIdentityWcdma;

    .line 111
    iget v1, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v2, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v3, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget v4, p1, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    iget-object v5, p1, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    iget-object v6, p1, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityWcdma;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityWcdma;->mAlphaShort:Ljava/lang/String;

    iget-object v9, p1, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v10, p1, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 113
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 340
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->asCellLocation()Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/gsm/GsmCellLocation;
    .registers 7

    .line 247
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 248
    .local v0, "cl":Landroid/telephony/gsm/GsmCellLocation;
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_10

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    goto :goto_11

    :cond_10
    move v1, v2

    .line 249
    .local v1, "lac":I
    :goto_11
    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-eq v4, v3, :cond_18

    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    goto :goto_19

    :cond_18
    move v4, v2

    .line 250
    .local v4, "cid":I
    :goto_19
    iget v5, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    if-eq v5, v3, :cond_1f

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 251
    .local v2, "psc":I
    :cond_1f
    invoke-virtual {v0, v1, v4}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 252
    invoke-virtual {v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 254
    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityWcdma;
    .registers 2

    .line 124
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/telephony/CellIdentityWcdma;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 260
    return v0

    .line 263
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityWcdma;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 264
    return v2

    .line 267
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityWcdma;

    .line 268
    .local v1, "o":Landroid/telephony/CellIdentityWcdma;
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    if-ne v3, v4, :cond_54

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-ne v3, v4, :cond_54

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    if-ne v3, v4, :cond_54

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    if-ne v3, v4, :cond_54

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    .line 272
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    .line 273
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 274
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-object v4, v1, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 275
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 276
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_55

    :cond_54
    move v0, v2

    .line 268
    :goto_55
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

    .line 232
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getChannelNumber()I
    .registers 2

    .line 224
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return v0
.end method

.method public whitelist getCid()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    return v0
.end method

.method public whitelist getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    return-object v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    return v0
.end method

.method public whitelist getMcc()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

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

    .line 189
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

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

    .line 197
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMobileNetworkOperator()Ljava/lang/String;
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

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

.method public whitelist getPsc()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return v0
.end method

.method public whitelist getUarfcn()I
    .registers 2

    .line 218
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 210
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityWcdma;
    .registers 12

    .line 118
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget-object v5, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/CellIdentityWcdma;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/CellIdentityWcdma;->mAlphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 v10, 0x0

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v1, ":{ mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const-string v1, " mPsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string v1, " mUarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, " mAdditionalPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, " mCsgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .registers 5

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mGlobalCellId:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getPlmn()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "plmn":Ljava/lang/String;
    if-nez v0, :cond_a

    return-void

    .line 134
    :cond_a
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_40

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-ne v1, v2, :cond_16

    goto :goto_40

    .line 136
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x%04x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mGlobalCellId:Ljava/lang/String;

    .line 137
    return-void

    .line 134
    :cond_40
    :goto_40
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 299
    const/4 v0, 0x4

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 305
    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 306
    return-void
.end method
