.class public final Lcom/android/internal/telephony/NetworkScanResult;
.super Ljava/lang/Object;
.source "NetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/NetworkScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCAN_STATUS_COMPLETE:I = 0x2

.field public static final blacklist SCAN_STATUS_PARTIAL:I = 0x1


# instance fields
.field public blacklist networkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist scanError:I

.field public blacklist scanStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkScanResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/NetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/List;)V
    .registers 4
    .param p1, "scanStatus"    # I
    .param p2, "scanError"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p3, "networkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    .line 66
    iput p2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 67
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 68
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "ni":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/CellInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/NetworkScanResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/NetworkScanResult;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_22

    .line 98
    .local v1, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    nop

    .line 100
    if-nez p1, :cond_8

    .line 101
    return v0

    .line 104
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    if-ne v2, v3, :cond_20

    iget v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    iget v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    iget-object v3, v1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    nop

    .line 104
    :goto_21
    return v0

    .line 96
    .end local v1    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catch_22
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 122
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 124
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 122
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scanStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", scanError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", networkInfos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 80
    return-void
.end method
