.class public abstract Landroid/net/wifi/ISoftApCallback$Stub;
.super Landroid/os/Binder;
.source "ISoftApCallback.java"

# interfaces
.implements Landroid/net/wifi/ISoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ISoftApCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISoftApCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ISoftApCallback"

.field static final blacklist TRANSACTION_onBlockedClientConnecting:I = 0x4

.field static final blacklist TRANSACTION_onCapabilityChanged:I = 0x3

.field static final blacklist TRANSACTION_onClientsDisconnected:I = 0x5

.field static final blacklist TRANSACTION_onConnectedClientsOrInfoChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.net.wifi.ISoftApCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/ISoftApCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "android.net.wifi.ISoftApCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/ISoftApCallback;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/ISoftApCallback;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/ISoftApCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_14

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string v0, "onClientsDisconnected"

    return-object v0

    .line 118
    :pswitch_8
    const-string v0, "onBlockedClientConnecting"

    return-object v0

    .line 114
    :pswitch_b
    const-string v0, "onCapabilityChanged"

    return-object v0

    .line 110
    :pswitch_e
    const-string v0, "onConnectedClientsOrInfoChanged"

    return-object v0

    .line 106
    :pswitch_11
    const-string v0, "onStateChanged"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg0"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/SoftApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApInfo;

    .line 164
    .local v1, "v":Landroid/net/wifi/SoftApInfo;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 172
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 355
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/net/wifi/ISoftApCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "android.net.wifi.ISoftApCallback"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_98

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 204
    :pswitch_1e
    sget-object v2, Landroid/net/wifi/SoftApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 206
    .local v2, "_arg0":Landroid/net/wifi/SoftApInfo;
    sget-object v3, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/ISoftApCallback$Stub;->onClientsDisconnected(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    .line 208
    goto :goto_97

    .line 195
    .end local v2    # "_arg0":Landroid/net/wifi/SoftApInfo;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    :pswitch_30
    sget-object v2, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 197
    .local v2, "_arg0":Landroid/net/wifi/WifiClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/ISoftApCallback$Stub;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 199
    goto :goto_97

    .line 188
    .end local v2    # "_arg0":Landroid/net/wifi/WifiClient;
    .end local v3    # "_arg1":I
    :pswitch_40
    sget-object v2, Landroid/net/wifi/SoftApCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApCapability;

    .line 189
    .local v2, "_arg0":Landroid/net/wifi/SoftApCapability;
    invoke-virtual {p0, v2}, Landroid/net/wifi/ISoftApCallback$Stub;->onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V

    .line 190
    goto :goto_97

    .line 158
    .end local v2    # "_arg0":Landroid/net/wifi/SoftApCapability;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .local v2, "N":I
    const/4 v3, 0x0

    if-gez v2, :cond_55

    move-object v4, v3

    goto :goto_5a

    :cond_55
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v4, "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/SoftApInfo;>;"
    :goto_5a
    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v7, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v7, p2, v4}, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 169
    .end local v2    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "N":I
    if-gez v2, :cond_6e

    goto :goto_73

    :cond_6e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v3, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    :goto_73
    invoke-static {v5, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v3}, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 179
    .end local v2    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 181
    .local v2, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 182
    .local v5, "_arg3":Z
    invoke-virtual {p0, v4, v3, v2, v5}, Landroid/net/wifi/ISoftApCallback$Stub;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V

    .line 183
    goto :goto_97

    .line 150
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    .end local v4    # "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/SoftApInfo;>;"
    .end local v5    # "_arg3":Z
    :pswitch_8b
    sget-object v2, Landroid/net/wifi/SoftApState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApState;

    .line 151
    .local v2, "_arg0":Landroid/net/wifi/SoftApState;
    invoke-virtual {p0, v2}, Landroid/net/wifi/ISoftApCallback$Stub;->onStateChanged(Landroid/net/wifi/SoftApState;)V

    .line 152
    nop

    .line 215
    .end local v2    # "_arg0":Landroid/net/wifi/SoftApState;
    :goto_97
    return v1

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_4c
        :pswitch_40
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
