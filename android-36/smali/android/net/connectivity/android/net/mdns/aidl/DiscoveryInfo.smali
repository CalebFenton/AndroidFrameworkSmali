.class public Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
.super Ljava/lang/Object;
.source "DiscoveryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist domainName:Ljava/lang/String;

.field public final blacklist id:I

.field public final blacklist interfaceIdx:I

.field public final blacklist netId:I

.field public final blacklist registrationType:Ljava/lang/String;

.field public final blacklist result:I

.field public final blacklist serviceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "result"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "registrationType"    # Ljava/lang/String;
    .param p5, "domainName"    # Ljava/lang/String;
    .param p6, "interfaceIdx"    # I
    .param p7, "netId"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->id:I

    .line 90
    iput p2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->result:I

    .line 91
    iput-object p3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->serviceName:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->registrationType:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->domainName:Ljava/lang/String;

    .line 94
    iput p6, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->interfaceIdx:I

    .line 95
    iput p7, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->netId:I

    .line 96
    return-void
.end method

.method private static blacklist internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .registers 13
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;-><init>()V

    .line 100
    .local v0, "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 101
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_122

    :try_start_15
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 136
    :goto_25
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v3

    return-object v3

    .line 134
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .local v3, "_aidl_temp_id":I
    invoke-virtual {v0, v3}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setId(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    .line 108
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 136
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v4

    return-object v4

    .line 134
    :cond_53
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 111
    .local v6, "_aidl_temp_result":I
    invoke-virtual {v0, v6}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setResult(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_7d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_77

    .line 136
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v4

    return-object v4

    .line 134
    :cond_77
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "_aidl_temp_serviceName":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setServiceName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-lt v8, v2, :cond_a1

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9b

    .line 136
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v4

    return-object v4

    .line 134
    :cond_9b
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "_aidl_temp_registrationType":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setRegistrationType(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    sub-int/2addr v9, v1

    if-lt v9, v2, :cond_c5

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_bf

    .line 136
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v4

    return-object v4

    .line 134
    :cond_bf
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    :cond_c5
    :try_start_c5
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "_aidl_temp_domainName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setDomainName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    .line 124
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    sub-int/2addr v10, v1

    if-lt v10, v2, :cond_e9

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_d6
    .catchall {:try_start_c5 .. :try_end_d6} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_e3

    .line 136
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v4

    return-object v4

    .line 134
    :cond_e3
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_e9
    :try_start_e9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 127
    .local v10, "_aidl_temp_interfaceIdx":I
    invoke-virtual {v0, v10}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setInterfaceIdx(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;

    .line 128
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    sub-int/2addr v11, v1

    if-lt v11, v2, :cond_10d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_end_fa
    .catchall {:try_start_e9 .. :try_end_fa} :catchall_120

    .line 133
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_107

    .line 136
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    move-result-object v4

    return-object v4

    .line 134
    :cond_107
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 130
    :cond_10d
    :try_start_10d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 131
    .local v11, "_aidl_temp_netId":I
    invoke-virtual {v0, v11}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->setNetId(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_120

    .line 133
    nop

    .end local v3    # "_aidl_temp_id":I
    .end local v6    # "_aidl_temp_result":I
    .end local v7    # "_aidl_temp_serviceName":Ljava/lang/String;
    .end local v8    # "_aidl_temp_registrationType":Ljava/lang/String;
    .end local v9    # "_aidl_temp_domainName":Ljava/lang/String;
    .end local v10    # "_aidl_temp_interfaceIdx":I
    .end local v11    # "_aidl_temp_netId":I
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_11a

    .line 136
    goto/16 :goto_25

    .line 134
    :cond_11a
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :catchall_120
    move-exception v3

    goto :goto_12a

    .line 103
    :cond_122
    :try_start_122
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_120

    .line 133
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_12a
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_12f

    .line 136
    goto/16 :goto_25

    .line 134
    :cond_12f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 155
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 156
    :cond_8
    instance-of v2, p1, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    if-nez v2, :cond_d

    return v1

    .line 157
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    .line 158
    .local v2, "that":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 159
    :cond_23
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->result:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->result:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 160
    :cond_36
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->serviceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->serviceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    return v1

    .line 161
    :cond_41
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->registrationType:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->registrationType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    return v1

    .line 162
    :cond_4c
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->domainName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->domainName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    return v1

    .line 163
    :cond_57
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->interfaceIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->interfaceIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    return v1

    .line 164
    :cond_6a
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->netId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    return v1

    .line 165
    :cond_7d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 170
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->result:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->serviceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->registrationType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->domainName:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->interfaceIdx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

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

    .line 142
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 143
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->serviceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->registrationType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domainName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->domainName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceIdx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->interfaceIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiscoveryInfo"

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

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 74
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->result:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->registrationType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->domainName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->interfaceIdx:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->netId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 83
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void
.end method
