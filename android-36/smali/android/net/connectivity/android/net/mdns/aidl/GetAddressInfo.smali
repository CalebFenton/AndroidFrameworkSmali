.class public Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
.super Ljava/lang/Object;
.source "GetAddressInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist address:Ljava/lang/String;

.field public final blacklist hostname:Ljava/lang/String;

.field public final blacklist id:I

.field public final blacklist interfaceIdx:I

.field public final blacklist netId:I

.field public final blacklist result:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "result"    # I
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "interfaceIdx"    # I
    .param p6, "netId"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->id:I

    .line 83
    iput p2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->result:I

    .line 84
    iput-object p3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->hostname:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->address:Ljava/lang/String;

    .line 86
    iput p5, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->interfaceIdx:I

    .line 87
    iput p6, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->netId:I

    .line 88
    return-void
.end method

.method private static blacklist internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .registers 12
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 91
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;-><init>()V

    .line 92
    .local v0, "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 93
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_fe

    :try_start_15
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    .line 96
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_fc

    .line 121
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 124
    :goto_25
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v3

    return-object v3

    .line 122
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .local v3, "_aidl_temp_id":I
    invoke-virtual {v0, v3}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->setId(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_fc

    .line 121
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 124
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v4

    return-object v4

    .line 122
    :cond_53
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 102
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 103
    .local v6, "_aidl_temp_result":I
    invoke-virtual {v0, v6}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->setResult(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;

    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_7d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_fc

    .line 121
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_77

    .line 124
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v4

    return-object v4

    .line 122
    :cond_77
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "_aidl_temp_hostname":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->setHostname(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;

    .line 108
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-lt v8, v2, :cond_a1

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_fc

    .line 121
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9b

    .line 124
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v4

    return-object v4

    .line 122
    :cond_9b
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "_aidl_temp_address":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->setAddress(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    sub-int/2addr v9, v1

    if-lt v9, v2, :cond_c5

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_fc

    .line 121
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_bf

    .line 124
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v4

    return-object v4

    .line 122
    :cond_bf
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_c5
    :try_start_c5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 115
    .local v9, "_aidl_temp_interfaceIdx":I
    invoke-virtual {v0, v9}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->setInterfaceIdx(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    sub-int/2addr v10, v1

    if-lt v10, v2, :cond_e9

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_end_d6
    .catchall {:try_start_c5 .. :try_end_d6} :catchall_fc

    .line 121
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_e3

    .line 124
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v4

    return-object v4

    .line 122
    :cond_e3
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_e9
    :try_start_e9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 119
    .local v10, "_aidl_temp_netId":I
    invoke-virtual {v0, v10}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->setNetId(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_fc

    .line 121
    nop

    .end local v3    # "_aidl_temp_id":I
    .end local v6    # "_aidl_temp_result":I
    .end local v7    # "_aidl_temp_hostname":Ljava/lang/String;
    .end local v8    # "_aidl_temp_address":Ljava/lang/String;
    .end local v9    # "_aidl_temp_interfaceIdx":I
    .end local v10    # "_aidl_temp_netId":I
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_f6

    .line 124
    goto/16 :goto_25

    .line 122
    :cond_f6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :catchall_fc
    move-exception v3

    goto :goto_106

    .line 95
    :cond_fe
    :try_start_fe
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_106
    .catchall {:try_start_fe .. :try_end_106} :catchall_fc

    .line 121
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_106
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_10b

    .line 124
    goto/16 :goto_25

    .line 122
    :cond_10b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 142
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 143
    :cond_8
    instance-of v2, p1, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    if-nez v2, :cond_d

    return v1

    .line 144
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    .line 145
    .local v2, "that":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 146
    :cond_23
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->result:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->result:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 147
    :cond_36
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->hostname:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->hostname:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    return v1

    .line 148
    :cond_41
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->address:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    return v1

    .line 149
    :cond_4c
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->interfaceIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->interfaceIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    return v1

    .line 150
    :cond_5f
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->netId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    return v1

    .line 151
    :cond_72
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 156
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->result:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->hostname:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->address:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->interfaceIdx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 130
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 131
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->hostname:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->address:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceIdx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->interfaceIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAddressInfo"

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

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 68
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->result:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->interfaceIdx:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->netId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 76
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void
.end method
