.class public Landroid/hardware/radio/sim/CarrierRestrictions;
.super Ljava/lang/Object;
.source "CarrierRestrictions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/CarrierRestrictions$CarrierRestrictionStatus;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/sim/CarrierRestrictions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

.field public blacklist allowedCarriers:[Landroid/hardware/radio/sim/Carrier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist allowedCarriersPrioritized:Z

.field public blacklist excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

.field public blacklist excludedCarriers:[Landroid/hardware/radio/sim/Carrier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/hardware/radio/sim/CarrierRestrictions$1;

    invoke-direct {v0}, Landroid/hardware/radio/sim/CarrierRestrictions$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    .line 37
    iput v0, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->status:I

    .line 39
    new-array v1, v0, [Landroid/hardware/radio/sim/CarrierInfo;

    iput-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 45
    new-array v0, v0, [Landroid/hardware/radio/sim/CarrierInfo;

    iput-object v0, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 122
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 125
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/radio/sim/CarrierRestrictions;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 124
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 127
    :cond_19
    return v1

    .line 129
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 130
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 132
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    invoke-direct {p0, v1}, Landroid/hardware/radio/sim/CarrierRestrictions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    invoke-direct {p0, v1}, Landroid/hardware/radio/sim/CarrierRestrictions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    invoke-direct {p0, v1}, Landroid/hardware/radio/sim/CarrierRestrictions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 117
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    invoke-direct {p0, v1}, Landroid/hardware/radio/sim/CarrierRestrictions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 118
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 78
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_da

    .line 81
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 95
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/radio/sim/Carrier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/sim/Carrier;

    iput-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 95
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_46
    :try_start_46
    sget-object v2, Landroid/hardware/radio/sim/Carrier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/sim/Carrier;

    iput-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 95
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 95
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->status:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 95
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_9e
    :try_start_9e
    sget-object v2, Landroid/hardware/radio/sim/CarrierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/sim/CarrierInfo;

    iput-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_9e .. :try_end_ac} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_be

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b8

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 95
    :cond_b8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_be
    :try_start_be
    sget-object v2, Landroid/hardware/radio/sim/CarrierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/sim/CarrierInfo;

    iput-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_d8

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d2

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :cond_d2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catchall_d8
    move-exception v2

    goto :goto_e2

    .line 80
    :cond_da
    :try_start_da
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/radio/sim/CarrierRestrictions;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_e2
    .catchall {:try_start_da .. :try_end_e2} :catchall_d8

    .line 94
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/radio/sim/CarrierRestrictions;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_e2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_eb

    .line 95
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_eb
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 103
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowedCarriers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excludedCarriers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowedCarriersPrioritized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowedCarrierInfoList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excludedCarrierInfoList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierRestrictions"

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

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 66
    iget-boolean v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    iget v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 71
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void
.end method
