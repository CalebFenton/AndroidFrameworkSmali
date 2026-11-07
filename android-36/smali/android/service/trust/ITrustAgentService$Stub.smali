.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentService.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final greylist-max-o TRANSACTION_onConfigure:I = 0x8

.field static final greylist-max-o TRANSACTION_onDeviceLocked:I = 0x6

.field static final greylist-max-o TRANSACTION_onDeviceUnlocked:I = 0x7

.field static final greylist-max-o TRANSACTION_onEscrowTokenAdded:I = 0xa

.field static final greylist-max-o TRANSACTION_onEscrowTokenRemoved:I = 0xc

.field static final greylist-max-o TRANSACTION_onTokenStateReceived:I = 0xb

.field static final greylist-max-o TRANSACTION_onTrustTimeout:I = 0x5

.field static final greylist-max-o TRANSACTION_onUnlockAttempt:I = 0x1

.field static final greylist-max-o TRANSACTION_onUnlockLockout:I = 0x4

.field static final blacklist TRANSACTION_onUserMayRequestUnlock:I = 0x3

.field static final blacklist TRANSACTION_onUserRequestedUnlock:I = 0x2

.field static final greylist-max-o TRANSACTION_setCallback:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/service/trust/ITrustAgentService;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_36

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string/jumbo v0, "onEscrowTokenRemoved"

    return-object v0

    .line 135
    :pswitch_9
    const-string/jumbo v0, "onTokenStateReceived"

    return-object v0

    .line 131
    :pswitch_d
    const-string/jumbo v0, "onEscrowTokenAdded"

    return-object v0

    .line 127
    :pswitch_11
    const-string/jumbo v0, "setCallback"

    return-object v0

    .line 123
    :pswitch_15
    const-string/jumbo v0, "onConfigure"

    return-object v0

    .line 119
    :pswitch_19
    const-string/jumbo v0, "onDeviceUnlocked"

    return-object v0

    .line 115
    :pswitch_1d
    const-string/jumbo v0, "onDeviceLocked"

    return-object v0

    .line 111
    :pswitch_21
    const-string/jumbo v0, "onTrustTimeout"

    return-object v0

    .line 107
    :pswitch_25
    const-string/jumbo v0, "onUnlockLockout"

    return-object v0

    .line 103
    :pswitch_29
    const-string/jumbo v0, "onUserMayRequestUnlock"

    return-object v0

    .line 99
    :pswitch_2d
    const-string/jumbo v0, "onUserRequestedUnlock"

    return-object v0

    .line 95
    :pswitch_31
    const-string/jumbo v0, "onUnlockAttempt"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 443
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/service/trust/ITrustAgentService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    const-string v0, "android.service.trust.ITrustAgentService"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_16
    packed-switch p1, :pswitch_data_a6

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 251
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 253
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 254
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenRemoved(JZ)V

    .line 256
    goto/16 :goto_a5

    .line 241
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 243
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentService$Stub;->onTokenStateReceived(JI)V

    .line 246
    goto :goto_a5

    .line 229
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 231
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 233
    .local v3, "_arg1":J
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 234
    .local v5, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    .line 236
    goto :goto_a5

    .line 221
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Landroid/os/UserHandle;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 224
    goto :goto_a5

    .line 211
    .end local v2    # "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    :pswitch_63
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 213
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 214
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 216
    goto :goto_a5

    .line 205
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_74
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    .line 206
    goto :goto_a5

    .line 200
    :pswitch_78
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    .line 201
    goto :goto_a5

    .line 195
    :pswitch_7c
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    .line 196
    goto :goto_a5

    .line 188
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockLockout(I)V

    .line 191
    goto :goto_a5

    .line 182
    .end local v2    # "_arg0":I
    :pswitch_8b
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onUserMayRequestUnlock()V

    .line 183
    goto :goto_a5

    .line 175
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 176
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUserRequestedUnlock(Z)V

    .line 178
    goto :goto_a5

    .line 167
    .end local v2    # "_arg0":Z
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 168
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

    .line 170
    nop

    .line 263
    .end local v2    # "_arg0":Z
    :goto_a5
    return v1

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_8f
        :pswitch_8b
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_63
        :pswitch_54
        :pswitch_3d
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
