.class public final Landroid/adservices/adselection/AdWithBid;
.super Ljava/lang/Object;
.source "AdWithBid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/AdWithBid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdData:Landroid/adservices/common/AdData;

.field private final blacklist mBid:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/adservices/adselection/AdWithBid$1;

    invoke-direct {v0}, Landroid/adservices/adselection/AdWithBid$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdWithBid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/common/AdData;D)V
    .registers 4
    .param p1, "adData"    # Landroid/adservices/common/AdData;
    .param p2, "bid"    # D

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    .line 69
    iput-wide p2, p0, Landroid/adservices/adselection/AdWithBid;->mBid:D

    .line 70
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/adservices/common/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdData;

    iput-object v0, p0, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/AdWithBid;->mBid:D

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdWithBid-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdWithBid;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 119
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/AdWithBid;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 120
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/AdWithBid;

    .line 121
    .local v1, "adWithBid":Landroid/adservices/adselection/AdWithBid;
    iget-wide v3, v1, Landroid/adservices/adselection/AdWithBid;->mBid:D

    iget-wide v5, p0, Landroid/adservices/adselection/AdWithBid;->mBid:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    iget-object v4, v1, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    .line 122
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 121
    :goto_23
    return v0
.end method

.method public whitelist getAdData()Landroid/adservices/common/AdData;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    return-object v0
.end method

.method public whitelist getBid()D
    .registers 3

    .line 100
    iget-wide v0, p0, Landroid/adservices/adselection/AdWithBid;->mBid:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 127
    iget-object v0, p0, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    iget-wide v1, p0, Landroid/adservices/adselection/AdWithBid;->mBid:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Landroid/adservices/adselection/AdWithBid;->mAdData:Landroid/adservices/common/AdData;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    iget-wide v0, p0, Landroid/adservices/adselection/AdWithBid;->mBid:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 114
    return-void
.end method
