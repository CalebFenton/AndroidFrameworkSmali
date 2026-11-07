.class public Landroid/hardware/radio/network/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/SignalStrength;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist cdma:Landroid/hardware/radio/network/CdmaSignalStrength;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist evdo:Landroid/hardware/radio/network/EvdoSignalStrength;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist gsm:Landroid/hardware/radio/network/GsmSignalStrength;

.field public blacklist lte:Landroid/hardware/radio/network/LteSignalStrength;

.field public blacklist nr:Landroid/hardware/radio/network/NrSignalStrength;

.field public blacklist tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

.field public blacklist wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/hardware/radio/network/SignalStrength$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 135
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 136
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 138
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 125
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 129
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/SignalStrength;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 131
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 85
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_102

    .line 88
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 104
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/radio/network/GsmSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/GsmSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 104
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_46
    :try_start_46
    sget-object v2, Landroid/hardware/radio/network/CdmaSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/CdmaSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 104
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_66
    :try_start_66
    sget-object v2, Landroid/hardware/radio/network/EvdoSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/EvdoSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 104
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_86
    :try_start_86
    sget-object v2, Landroid/hardware/radio/network/LteSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/LteSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a6

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a0

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 104
    :cond_a0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_a6
    :try_start_a6
    sget-object v2, Landroid/hardware/radio/network/TdscdmaSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/TdscdmaSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c6

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c0

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 104
    :cond_c0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_c6
    :try_start_c6
    sget-object v2, Landroid/hardware/radio/network/WcdmaSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/WcdmaSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d4
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 104
    :cond_e0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_e6
    :try_start_e6
    sget-object v2, Landroid/hardware/radio/network/NrSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/NrSignalStrength;

    iput-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_100

    .line 103
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fa

    .line 106
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    nop

    .line 108
    return-void

    .line 104
    :cond_fa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :catchall_100
    move-exception v2

    goto :goto_10a

    .line 87
    :cond_102
    :try_start_102
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/radio/network/SignalStrength;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_100

    .line 103
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/radio/network/SignalStrength;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_10a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_113

    .line 104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_113
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 111
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 112
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evdo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tdscdma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wcdma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalStrength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 69
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 72
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 76
    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 78
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void
.end method
