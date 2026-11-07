.class public abstract Landroid/hardware/contexthub/IContextHubEndpoint$Stub;
.super Landroid/os/Binder;
.source "IContextHubEndpoint.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubEndpoint$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSession:I = 0x3

.field static final blacklist TRANSACTION_getAssignedHubEndpointInfo:I = 0x1

.field static final blacklist TRANSACTION_onCallbackFinished:I = 0x8

.field static final blacklist TRANSACTION_openSession:I = 0x2

.field static final blacklist TRANSACTION_openSessionRequestComplete:I = 0x4

.field static final blacklist TRANSACTION_sendMessage:I = 0x6

.field static final blacklist TRANSACTION_sendMessageDeliveryStatus:I = 0x7

.field static final blacklist TRANSACTION_unregister:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    nop

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.hardware.contexthub.IContextHubEndpoint"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_d

    .line 104
    iput-object p1, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 105
    return-void

    .line 102
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    const-string v0, "android.hardware.contexthub.IContextHubEndpoint"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHubEndpoint;

    if-eqz v1, :cond_14

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IContextHubEndpoint;

    return-object v1

    .line 125
    :cond_14
    new-instance v1, Landroid/hardware/contexthub/IContextHubEndpoint$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 134
    packed-switch p0, :pswitch_data_1e

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 166
    :pswitch_5
    const-string v0, "onCallbackFinished"

    return-object v0

    .line 162
    :pswitch_8
    const-string v0, "sendMessageDeliveryStatus"

    return-object v0

    .line 158
    :pswitch_b
    const-string v0, "sendMessage"

    return-object v0

    .line 154
    :pswitch_e
    const-string v0, "unregister"

    return-object v0

    .line 150
    :pswitch_11
    const-string v0, "openSessionRequestComplete"

    return-object v0

    .line 146
    :pswitch_14
    const-string v0, "closeSession"

    return-object v0

    .line 142
    :pswitch_17
    const-string v0, "openSession"

    return-object v0

    .line 138
    :pswitch_1a
    const-string v0, "getAssignedHubEndpointInfo"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method protected blacklist closeSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 472
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 501
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 177
    invoke-static {p1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist onCallbackFinished_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 497
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const-string v0, "android.hardware.contexthub.IContextHubEndpoint"

    .line 182
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_16
    packed-switch p1, :pswitch_data_a4

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 264
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->onCallbackFinished()V

    .line 265
    goto/16 :goto_a3

    .line 252
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 257
    .local v4, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessageDeliveryStatus(IIB)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_a3

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":B
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/HubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubMessage;

    .line 243
    .local v3, "_arg1":Landroid/hardware/contexthub/HubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v4

    .line 244
    .local v4, "_arg2":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_a3

    .line 232
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/HubMessage;
    .end local v4    # "_arg2":Landroid/hardware/location/IContextHubTransactionCallback;
    :pswitch_57
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->unregister()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_a3

    .line 224
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSessionRequestComplete(I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_a3

    .line 213
    .end local v2    # "_arg0":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->closeSession(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_a3

    .line 201
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7e
    sget-object v2, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 203
    .local v2, "_arg0":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_a3

    .line 193
    .end local v2    # "_arg0":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_98
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v2

    .line 194
    .local v2, "_result":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    nop

    .line 272
    .end local v2    # "_result":Landroid/hardware/contexthub/HubEndpointInfo;
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_98
        :pswitch_7e
        :pswitch_6c
        :pswitch_5e
        :pswitch_57
        :pswitch_39
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist openSessionRequestComplete_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 477
    return-void
.end method

.method protected blacklist openSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 467
    return-void
.end method

.method protected blacklist sendMessageDeliveryStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 492
    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 487
    return-void
.end method

.method protected blacklist unregister_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 482
    return-void
.end method
