.class public abstract Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateManager.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelBaseStateOverride:I = 0x6

.field static final blacklist TRANSACTION_cancelStateRequest:I = 0x4

.field static final blacklist TRANSACTION_getDeviceStateInfo:I = 0x1

.field static final blacklist TRANSACTION_onStateRequestOverlayDismissed:I = 0x7

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_requestBaseStateOverride:I = 0x5

.field static final blacklist TRANSACTION_requestState:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    nop

    .line 146
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 147
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_d

    .line 140
    iput-object p1, p0, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 141
    return-void

    .line 138
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_4

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_4
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManager;

    if-eqz v1, :cond_14

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/hardware/devicestate/IDeviceStateManager;

    return-object v1

    .line 161
    :cond_14
    new-instance v1, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 170
    packed-switch p0, :pswitch_data_1a

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 198
    :pswitch_5
    const-string v0, "onStateRequestOverlayDismissed"

    return-object v0

    .line 194
    :pswitch_8
    const-string v0, "cancelBaseStateOverride"

    return-object v0

    .line 190
    :pswitch_b
    const-string v0, "requestBaseStateOverride"

    return-object v0

    .line 186
    :pswitch_e
    const-string v0, "cancelStateRequest"

    return-object v0

    .line 182
    :pswitch_11
    const-string v0, "requestState"

    return-object v0

    .line 178
    :pswitch_14
    const-string v0, "registerCallback"

    return-object v0

    .line 174
    :pswitch_17
    const-string v0, "getDeviceStateInfo"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 165
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 521
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 209
    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist onStateRequestOverlayDismissed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 517
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

    .line 213
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    .line 214
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 215
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 218
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    return v1

    .line 221
    :cond_16
    packed-switch p1, :pswitch_data_88

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 281
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 282
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->onStateRequestOverlayDismissed(Z)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto :goto_87

    .line 274
    .end local v2    # "_arg0":Z
    :pswitch_2c
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->cancelBaseStateOverride()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto :goto_87

    .line 262
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 264
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 267
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->requestBaseStateOverride(Landroid/os/IBinder;II)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_87

    .line 255
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_49
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->cancelStateRequest()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_87

    .line 243
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 245
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 248
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->requestState(Landroid/os/IBinder;II)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto :goto_87

    .line 233
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v3

    .line 236
    .local v3, "_result":Landroid/hardware/devicestate/DeviceStateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_87

    .line 225
    .end local v2    # "_arg0":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    .end local v3    # "_result":Landroid/hardware/devicestate/DeviceStateInfo;
    :pswitch_7c
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    .line 226
    .local v2, "_result":Landroid/hardware/devicestate/DeviceStateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 228
    nop

    .line 292
    .end local v2    # "_result":Landroid/hardware/devicestate/DeviceStateInfo;
    :goto_87
    return v1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_66
        :pswitch_50
        :pswitch_49
        :pswitch_33
        :pswitch_2c
        :pswitch_1e
    .end packed-switch
.end method
