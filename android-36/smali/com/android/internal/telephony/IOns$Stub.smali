.class public abstract Lcom/android/internal/telephony/IOns$Stub;
.super Landroid/os/Binder;
.source "IOns.java"

# interfaces
.implements Lcom/android/internal/telephony/IOns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOns$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x4

.field static final blacklist TRANSACTION_isEnabled:I = 0x2

.field static final blacklist TRANSACTION_setEnable:I = 0x1

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x3

.field static final blacklist TRANSACTION_updateAvailableNetworks:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "com.android.internal.telephony.IOns"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IOns$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_4
    const-string v0, "com.android.internal.telephony.IOns"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IOns;

    if-eqz v1, :cond_14

    .line 124
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IOns;

    return-object v1

    .line 126
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IOns$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IOns$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 135
    packed-switch p0, :pswitch_data_18

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 155
    :pswitch_5
    const-string/jumbo v0, "updateAvailableNetworks"

    return-object v0

    .line 151
    :pswitch_9
    const-string v0, "getPreferredDataSubscriptionId"

    return-object v0

    .line 147
    :pswitch_c
    const-string/jumbo v0, "setPreferredDataSubscriptionId"

    return-object v0

    .line 143
    :pswitch_10
    const-string v0, "isEnabled"

    return-object v0

    .line 139
    :pswitch_13
    const-string/jumbo v0, "setEnable"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 430
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 166
    invoke-static {p1}, Lcom/android/internal/telephony/IOns$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const-string v0, "com.android.internal.telephony.IOns"

    .line 171
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 178
    :cond_16
    packed-switch p1, :pswitch_data_98

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 232
    :pswitch_1e
    sget-object v2, Landroid/telephony/AvailableNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;

    move-result-object v3

    .line 236
    .local v3, "_arg1":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IOns$Stub;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto :goto_96

    .line 220
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IOns$Stub;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 225
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    goto :goto_96

    .line 205
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 209
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v4

    .line 211
    .local v4, "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/IOns$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_96

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IOns$Stub;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 198
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    goto :goto_96

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 185
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IOns$Stub;->setEnable(ZLjava/lang/String;)Z

    move-result v4

    .line 188
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    nop

    .line 247
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_80
        :pswitch_6e
        :pswitch_50
        :pswitch_3a
        :pswitch_1e
    .end packed-switch
.end method
