.class public abstract Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.super Landroid/os/Binder;
.source "IActivityRecognitionHardware.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IActivityRecognitionHardware"

.field static final greylist-max-o TRANSACTION_disableActivityEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_enableActivityEvent:I = 0x5

.field static final greylist-max-o TRANSACTION_flush:I = 0x7

.field static final greylist-max-o TRANSACTION_getSupportedActivities:I = 0x1

.field static final greylist-max-o TRANSACTION_isActivitySupported:I = 0x2

.field static final greylist-max-o TRANSACTION_registerSink:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterSink:I = 0x4


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    nop

    .line 78
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    if-eqz p1, :cond_d

    .line 72
    iput-object p1, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 73
    return-void

    .line 70
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IActivityRecognitionHardware;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IActivityRecognitionHardware;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_1a

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 130
    :pswitch_5
    const-string v0, "flush"

    return-object v0

    .line 126
    :pswitch_8
    const-string v0, "disableActivityEvent"

    return-object v0

    .line 122
    :pswitch_b
    const-string v0, "enableActivityEvent"

    return-object v0

    .line 118
    :pswitch_e
    const-string v0, "unregisterSink"

    return-object v0

    .line 114
    :pswitch_11
    const-string v0, "registerSink"

    return-object v0

    .line 110
    :pswitch_14
    const-string v0, "isActivitySupported"

    return-object v0

    .line 106
    :pswitch_17
    const-string v0, "getSupportedActivities"

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

    .line 97
    return-object p0
.end method

.method protected blacklist disableActivityEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 413
    return-void
.end method

.method protected blacklist enableActivityEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 408
    return-void
.end method

.method protected blacklist flush_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 418
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 422
    const/4 v0, 0x6

    return v0
.end method

.method protected blacklist getSupportedActivities_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 388
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 141
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isActivitySupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 393
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    .line 146
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_16
    packed-switch p1, :pswitch_data_a4

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 220
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->flush()Z

    move-result v2

    .line 221
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto/16 :goto_a3

    .line 209
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->disableActivityEvent(Ljava/lang/String;I)Z

    move-result v4

    .line 214
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 216
    goto :goto_a3

    .line 195
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 200
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result v6

    .line 202
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_a3

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object v2

    .line 186
    .local v2, "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result v3

    .line 188
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    goto :goto_a3

    .line 175
    .end local v2    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v3    # "_result":Z
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result v3

    .line 178
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 180
    goto :goto_a3

    .line 165
    .end local v2    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v3    # "_result":Z
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->isActivitySupported(Ljava/lang/String;)Z

    move-result v3

    .line 168
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto :goto_a3

    .line 157
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_98
    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getSupportedActivities()[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 160
    nop

    .line 230
    .end local v2    # "_result":[Ljava/lang/String;
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_98
        :pswitch_86
        :pswitch_70
        :pswitch_5a
        :pswitch_40
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist registerSink_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 398
    return-void
.end method

.method protected blacklist unregisterSink_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 403
    return-void
.end method
