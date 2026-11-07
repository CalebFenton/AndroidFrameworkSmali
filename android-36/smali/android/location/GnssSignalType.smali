.class public final Landroid/location/GnssSignalType;
.super Ljava/lang/Object;
.source "GnssSignalType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCarrierFrequencyHz:D

.field private final blacklist mCodeType:Ljava/lang/String;

.field private final blacklist mConstellationType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/location/GnssSignalType$1;

    invoke-direct {v0}, Landroid/location/GnssSignalType$1;-><init>()V

    sput-object v0, Landroid/location/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IDLjava/lang/String;)V
    .registers 5
    .param p1, "constellationType"    # I
    .param p2, "carrierFrequencyHz"    # D
    .param p4, "codeType"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/location/GnssSignalType;->mConstellationType:I

    .line 64
    iput-wide p2, p0, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    .line 65
    iput-object p4, p0, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(IDLjava/lang/String;Landroid/location/GnssSignalType-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/GnssSignalType;-><init>(IDLjava/lang/String;)V

    return-void
.end method

.method public static whitelist create(IDLjava/lang/String;)Landroid/location/GnssSignalType;
    .registers 6
    .param p0, "constellationType"    # I
    .param p1, "carrierFrequencyHz"    # D
    .param p3, "codeType"    # Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "carrierFrequencyHz must be greater than 0."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/location/GnssSignalType;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/location/GnssSignalType;-><init>(IDLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 131
    return v1

    .line 133
    :cond_8
    instance-of v2, p1, Landroid/location/GnssSignalType;

    if-eqz v2, :cond_2c

    .line 134
    move-object v2, p1

    check-cast v2, Landroid/location/GnssSignalType;

    .line 135
    .local v2, "other":Landroid/location/GnssSignalType;
    iget v3, p0, Landroid/location/GnssSignalType;->mConstellationType:I

    iget v4, v2, Landroid/location/GnssSignalType;->mConstellationType:I

    if-ne v3, v4, :cond_2a

    iget-wide v3, p0, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    iget-wide v5, v2, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    .line 136
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 135
    :goto_2b
    return v0

    .line 139
    .end local v2    # "other":Landroid/location/GnssSignalType;
    :cond_2c
    return v1
.end method

.method public whitelist getCarrierFrequencyHz()D
    .registers 3

    .line 77
    iget-wide v0, p0, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    return-wide v0
.end method

.method public whitelist getCodeType()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConstellationType()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/location/GnssSignalType;->mConstellationType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 144
    iget v0, p0, Landroid/location/GnssSignalType;->mConstellationType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "GnssSignalType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "Constellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSignalType;->mConstellationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", CarrierFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", CodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget v0, p0, Landroid/location/GnssSignalType;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Landroid/location/GnssSignalType;->mCarrierFrequencyHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget-object v0, p0, Landroid/location/GnssSignalType;->mCodeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return-void
.end method
