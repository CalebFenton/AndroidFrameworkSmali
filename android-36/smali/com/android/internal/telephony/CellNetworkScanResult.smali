.class public Lcom/android/internal/telephony/CellNetworkScanResult;
.super Ljava/lang/Object;
.source "CellNetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/CellNetworkScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o STATUS_RADIO_GENERIC_FAILURE:I = 0x3

.field public static final greylist-max-o STATUS_RADIO_NOT_AVAILABLE:I = 0x2

.field public static final greylist-max-o STATUS_SUCCESS:I = 0x1

.field public static final greylist-max-o STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final greylist-max-o mOperators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CellNetworkScanResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p2, "operators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    .line 50
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "len":I
    if-lez v0, :cond_2a

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_29

    .line 61
    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v1    # "i":I
    :cond_29
    goto :goto_2d

    .line 64
    :cond_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    .line 66
    :goto_2d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/CellNetworkScanResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getOperators()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getStatus()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellNetworkScanResult: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    if-eqz v1, :cond_35

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 107
    .local v2, "network":Lcom/android/internal/telephony/OperatorInfo;
    const-string v3, " network:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 108
    .end local v2    # "network":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_1f

    .line 110
    :cond_35
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 93
    .local v1, "network":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    .end local v1    # "network":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_20

    :cond_30
    goto :goto_35

    .line 96
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_35
    return-void
.end method
