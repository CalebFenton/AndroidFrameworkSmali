.class public abstract Landroid/hardware/location/IGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardware.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addCircularFence:I = 0x5

.field static final greylist-max-o TRANSACTION_getMonitoringTypes:I = 0x3

.field static final greylist-max-o TRANSACTION_getStatusOfMonitoringType:I = 0x4

.field static final greylist-max-o TRANSACTION_pauseGeofence:I = 0x7

.field static final greylist-max-o TRANSACTION_registerForMonitorStateChangeCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_removeGeofence:I = 0x6

.field static final greylist-max-o TRANSACTION_resumeGeofence:I = 0x8

.field static final greylist-max-o TRANSACTION_setFusedGeofenceHardware:I = 0x2

.field static final greylist-max-o TRANSACTION_setGpsGeofenceHardware:I = 0x1

.field static final greylist-max-o TRANSACTION_unregisterForMonitorStateChangeCallback:I = 0xa


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    nop

    .line 76
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.hardware.location.IGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_d

    .line 70
    iput-object p1, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 71
    return-void

    .line 68
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.hardware.location.IGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardware;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IGeofenceHardware;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 100
    packed-switch p0, :pswitch_data_24

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 140
    :pswitch_5
    const-string v0, "unregisterForMonitorStateChangeCallback"

    return-object v0

    .line 136
    :pswitch_8
    const-string v0, "registerForMonitorStateChangeCallback"

    return-object v0

    .line 132
    :pswitch_b
    const-string v0, "resumeGeofence"

    return-object v0

    .line 128
    :pswitch_e
    const-string v0, "pauseGeofence"

    return-object v0

    .line 124
    :pswitch_11
    const-string v0, "removeGeofence"

    return-object v0

    .line 120
    :pswitch_14
    const-string v0, "addCircularFence"

    return-object v0

    .line 116
    :pswitch_17
    const-string v0, "getStatusOfMonitoringType"

    return-object v0

    .line 112
    :pswitch_1a
    const-string v0, "getMonitoringTypes"

    return-object v0

    .line 108
    :pswitch_1d
    const-string v0, "setFusedGeofenceHardware"

    return-object v0

    .line 104
    :pswitch_20
    const-string v0, "setGpsGeofenceHardware"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
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
.method protected blacklist addCircularFence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 498
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 527
    const/16 v0, 0x9

    return v0
.end method

.method protected blacklist getMonitoringTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 488
    return-void
.end method

.method protected blacklist getStatusOfMonitoringType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 493
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Landroid/hardware/location/IGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 155
    const-string v0, "android.hardware.location.IGeofenceHardware"

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 163
    :cond_16
    packed-switch p1, :pswitch_data_100

    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 267
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    move-result-object v3

    .line 270
    .local v3, "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v4

    .line 272
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    goto/16 :goto_ff

    .line 255
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v4    # "_result":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    move-result-object v3

    .line 258
    .restart local v3    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v4

    .line 260
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto/16 :goto_ff

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v4    # "_result":Z
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 246
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IGeofenceHardware$Stub;->resumeGeofence(III)Z

    move-result v5

    .line 248
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    goto/16 :goto_ff

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 232
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->pauseGeofence(II)Z

    move-result v4

    .line 234
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto/16 :goto_ff

    .line 217
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 220
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->removeGeofence(II)Z

    move-result v4

    .line 222
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_ff

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 207
    .local v3, "_arg1":Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v4

    .line 208
    .local v4, "_arg2":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IGeofenceHardware$Stub;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v5

    .line 210
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 212
    goto :goto_ff

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .end local v4    # "_arg2":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v5    # "_result":Z
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->getStatusOfMonitoringType(I)I

    move-result v3

    .line 196
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    goto :goto_ff

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_d0
    invoke-virtual {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getMonitoringTypes()[I

    move-result-object v2

    .line 186
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 188
    goto :goto_ff

    .line 177
    .end local v2    # "_result":[I
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IFusedGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;

    move-result-object v2

    .line 178
    .local v2, "_arg0":Landroid/location/IFusedGeofenceHardware;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_ff

    .line 168
    .end local v2    # "_arg0":Landroid/location/IFusedGeofenceHardware;
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v2

    .line 169
    .local v2, "_arg0":Landroid/location/IGpsGeofenceHardware;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    nop

    .line 281
    .end local v2    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :goto_ff
    return v1

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_ed
        :pswitch_db
        :pswitch_d0
        :pswitch_be
        :pswitch_9c
        :pswitch_86
        :pswitch_6f
        :pswitch_54
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist pauseGeofence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 508
    return-void
.end method

.method protected blacklist registerForMonitorStateChangeCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 518
    return-void
.end method

.method protected blacklist removeGeofence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 503
    return-void
.end method

.method protected blacklist resumeGeofence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 513
    return-void
.end method

.method protected blacklist unregisterForMonitorStateChangeCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 523
    return-void
.end method
