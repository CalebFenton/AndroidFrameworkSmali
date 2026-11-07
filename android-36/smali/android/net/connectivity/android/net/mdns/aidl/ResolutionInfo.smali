.class public Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
.super Ljava/lang/Object;
.source "ResolutionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist domain:Ljava/lang/String;

.field public final blacklist hostname:Ljava/lang/String;

.field public final blacklist id:I

.field public final blacklist interfaceIdx:I

.field public final blacklist port:I

.field public final blacklist registrationType:Ljava/lang/String;

.field public final blacklist result:I

.field public final blacklist serviceFullName:Ljava/lang/String;

.field public final blacklist serviceName:Ljava/lang/String;

.field public final blacklist txtRecord:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "result"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "registrationType"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "serviceFullName"    # Ljava/lang/String;
    .param p7, "hostname"    # Ljava/lang/String;
    .param p8, "port"    # I
    .param p9, "txtRecord"    # [B
    .param p10, "interfaceIdx"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->id:I

    .line 111
    iput p2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->result:I

    .line 112
    iput-object p3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceName:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->registrationType:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->domain:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceFullName:Ljava/lang/String;

    .line 116
    iput-object p7, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->hostname:Ljava/lang/String;

    .line 117
    iput p8, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->port:I

    .line 118
    iput-object p9, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->txtRecord:[B

    .line 119
    iput p10, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->interfaceIdx:I

    .line 120
    return-void
.end method

.method private static blacklist internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .registers 16
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 123
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;-><init>()V

    .line 124
    .local v0, "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 125
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_18e

    :try_start_15
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    .line 128
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 172
    :goto_25
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v3

    return-object v3

    .line 170
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    .local v3, "_aidl_temp_id":I
    invoke-virtual {v0, v3}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setId(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_53
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 135
    .local v6, "_aidl_temp_result":I
    invoke-virtual {v0, v6}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setResult(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 136
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_7d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_77

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_77
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "_aidl_temp_serviceName":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setServiceName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 140
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-lt v8, v2, :cond_a1

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9b

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_9b
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "_aidl_temp_registrationType":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setRegistrationType(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    sub-int/2addr v9, v1

    if-lt v9, v2, :cond_c5

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_bf

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_bf
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_c5
    :try_start_c5
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "_aidl_temp_domain":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setDomain(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 148
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    sub-int/2addr v10, v1

    if-lt v10, v2, :cond_e9

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_d6
    .catchall {:try_start_c5 .. :try_end_d6} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_e3

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_e3
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_e9
    :try_start_e9
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "_aidl_temp_serviceFullName":Ljava/lang/String;
    invoke-virtual {v0, v10}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setServiceFullName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    sub-int/2addr v11, v1

    if-lt v11, v2, :cond_10d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_fa
    .catchall {:try_start_e9 .. :try_end_fa} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_107

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_107
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_10d
    :try_start_10d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "_aidl_temp_hostname":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setHostname(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 156
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    sub-int/2addr v12, v1

    if-lt v12, v2, :cond_131

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_11e
    .catchall {:try_start_10d .. :try_end_11e} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_12b

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_12b
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_131
    :try_start_131
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 159
    .local v12, "_aidl_temp_port":I
    invoke-virtual {v0, v12}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setPort(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    sub-int/2addr v13, v1

    if-lt v13, v2, :cond_155

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_142
    .catchall {:try_start_131 .. :try_end_142} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_14f

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_14f
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_155
    :try_start_155
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 163
    .local v13, "_aidl_temp_txtRecord":[B
    invoke-virtual {v0, v13}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setTxtRecord([B)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    sub-int/2addr v14, v1

    if-lt v14, v2, :cond_179

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_end_166
    .catchall {:try_start_155 .. :try_end_166} :catchall_18c

    .line 169
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_173

    .line 172
    add-int v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    move-result-object v4

    return-object v4

    .line 170
    :cond_173
    new-instance v5, Landroid/os/BadParcelableException;

    invoke-direct {v5, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 166
    :cond_179
    :try_start_179
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 167
    .local v14, "_aidl_temp_interfaceIdx":I
    invoke-virtual {v0, v14}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->setInterfaceIdx(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    :try_end_180
    .catchall {:try_start_179 .. :try_end_180} :catchall_18c

    .line 169
    nop

    .end local v3    # "_aidl_temp_id":I
    .end local v6    # "_aidl_temp_result":I
    .end local v7    # "_aidl_temp_serviceName":Ljava/lang/String;
    .end local v8    # "_aidl_temp_registrationType":Ljava/lang/String;
    .end local v9    # "_aidl_temp_domain":Ljava/lang/String;
    .end local v10    # "_aidl_temp_serviceFullName":Ljava/lang/String;
    .end local v11    # "_aidl_temp_hostname":Ljava/lang/String;
    .end local v12    # "_aidl_temp_port":I
    .end local v13    # "_aidl_temp_txtRecord":[B
    .end local v14    # "_aidl_temp_interfaceIdx":I
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_186

    .line 172
    goto/16 :goto_25

    .line 170
    :cond_186
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :catchall_18c
    move-exception v3

    goto :goto_196

    .line 127
    :cond_18e
    :try_start_18e
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_196
    .catchall {:try_start_18e .. :try_end_196} :catchall_18c

    .line 169
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_196
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_19b

    .line 172
    goto/16 :goto_25

    .line 170
    :cond_19b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 194
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 195
    :cond_8
    instance-of v2, p1, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    if-nez v2, :cond_d

    return v1

    .line 196
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    .line 197
    .local v2, "that":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 198
    :cond_23
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->result:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->result:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 199
    :cond_36
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    return v1

    .line 200
    :cond_41
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->registrationType:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->registrationType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    return v1

    .line 201
    :cond_4c
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->domain:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->domain:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    return v1

    .line 202
    :cond_57
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceFullName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceFullName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    return v1

    .line 203
    :cond_62
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->hostname:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->hostname:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    return v1

    .line 204
    :cond_6d
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    return v1

    .line 205
    :cond_80
    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->txtRecord:[B

    iget-object v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->txtRecord:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    return v1

    .line 206
    :cond_8b
    iget v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->interfaceIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->interfaceIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    return v1

    .line 207
    :cond_9e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 212
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->result:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->registrationType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->domain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceFullName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->hostname:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->txtRecord:[B

    aput-object v2, v0, v1

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->interfaceIdx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

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

    .line 178
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 179
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->registrationType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->domain:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceFullName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceFullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->hostname:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txtRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->txtRecord:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceIdx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->interfaceIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResolutionInfo"

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

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 92
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->result:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->registrationType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->serviceFullName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->port:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->txtRecord:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 102
    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->interfaceIdx:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 104
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void
.end method
