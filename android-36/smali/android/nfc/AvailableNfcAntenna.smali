.class public final Landroid/nfc/AvailableNfcAntenna;
.super Ljava/lang/Object;
.source "AvailableNfcAntenna.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/AvailableNfcAntenna;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocationX:I

.field private final blacklist mLocationY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/nfc/AvailableNfcAntenna$1;

    invoke-direct {v0}, Landroid/nfc/AvailableNfcAntenna$1;-><init>()V

    sput-object v0, Landroid/nfc/AvailableNfcAntenna;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "locationX"    # I
    .param p2, "locationY"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    .line 44
    iput p2, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/AvailableNfcAntenna-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/AvailableNfcAntenna;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 110
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 111
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 112
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/nfc/AvailableNfcAntenna;

    .line 113
    .local v2, "other":Landroid/nfc/AvailableNfcAntenna;
    iget v3, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    iget v4, v2, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    if-eq v3, v4, :cond_1d

    return v1

    .line 114
    :cond_1d
    iget v3, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    iget v4, v2, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0
.end method

.method public whitelist getLocationX()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    return v0
.end method

.method public whitelist getLocationY()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 96
    const/16 v0, 0x1f

    .line 97
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 98
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    add-int/2addr v2, v3

    .line 99
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    add-int/2addr v1, v3

    .line 100
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvailableNfcAntenna x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget v0, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/nfc/AvailableNfcAntenna;->mLocationY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
