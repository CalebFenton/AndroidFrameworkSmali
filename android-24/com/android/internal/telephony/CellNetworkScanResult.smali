.class public Lcom/android/internal/telephony/CellNetworkScanResult;
.super Ljava/lang/Object;
.source "CellNetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellNetworkScanResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/CellNetworkScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_RADIO_GENERIC_FAILURE:I = 0x3

.field public static final STATUS_RADIO_NOT_AVAILABLE:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final mOperators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 115
    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/CellNetworkScanResult$1;-><init>()V

    #@5
    .line 114
    sput-object v0, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p2, "operators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput p1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    #@5
    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@7
    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v2

    #@7
    iput v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    #@9
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    .line 58
    .local v1, "len":I
    if-lez v1, :cond_0

    #@f
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    #@11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@16
    .line 60
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@19
    .line 61
    iget-object v3, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@1b
    sget-object v2, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    #@23
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 60
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 64
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    #@2a
    iput-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@2c
    .line 55
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/CellNetworkScanResult;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOperators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 103
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "CellNetworkScanResult: {"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 104
    const-string/jumbo v3, " status:"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v3

    #@12
    iget v4, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@17
    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 106
    iget-object v3, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@1d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "network$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    #@2d
    .line 107
    .local v0, "network":Lcom/android/internal/telephony/OperatorInfo;
    const-string/jumbo v3, " network:"

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@37
    goto :goto_0

    #@38
    .line 110
    .end local v0    # "network":Lcom/android/internal/telephony/OperatorInfo;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "}"

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 89
    iget v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    #@3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@c
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    if-lez v2, :cond_0

    #@12
    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@14
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@17
    move-result v2

    #@18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 92
    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "network$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    #@2d
    .line 93
    .local v0, "network":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@30
    goto :goto_0

    #@31
    .line 96
    .end local v0    # "network":Lcom/android/internal/telephony/OperatorInfo;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 88
    :cond_1
    return-void
.end method
