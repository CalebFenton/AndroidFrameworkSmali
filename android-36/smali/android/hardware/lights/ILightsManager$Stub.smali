.class public abstract Landroid/hardware/lights/ILightsManager$Stub;
.super Landroid/os/Binder;
.source "ILightsManager.java"

# interfaces
.implements Landroid/hardware/lights/ILightsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/ILightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/ILightsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSession:I = 0x4

.field static final blacklist TRANSACTION_getLightState:I = 0x2

.field static final blacklist TRANSACTION_getLights:I = 0x1

.field static final blacklist TRANSACTION_openSession:I = 0x3

.field static final blacklist TRANSACTION_setLightStates:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    nop

    .line 59
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/lights/ILightsManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.hardware.lights.ILightsManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/lights/ILightsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    if-eqz p1, :cond_d

    .line 53
    iput-object p1, p0, Landroid/hardware/lights/ILightsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 54
    return-void

    .line 51
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/lights/ILightsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.hardware.lights.ILightsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/lights/ILightsManager;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/lights/ILightsManager;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/hardware/lights/ILightsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/lights/ILightsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_14

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_5
    const-string v0, "setLightStates"

    return-object v0

    .line 99
    :pswitch_8
    const-string v0, "closeSession"

    return-object v0

    .line 95
    :pswitch_b
    const-string v0, "openSession"

    return-object v0

    .line 91
    :pswitch_e
    const-string v0, "getLightState"

    return-object v0

    .line 87
    :pswitch_11
    const-string v0, "getLights"

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method protected blacklist closeSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/hardware/lights/ILightsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_LIGHTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 303
    return-void
.end method

.method protected blacklist getLightState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/hardware/lights/ILightsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_LIGHTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 293
    return-void
.end method

.method protected blacklist getLights_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/hardware/lights/ILightsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_LIGHTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 288
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 312
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 114
    invoke-static {p1}, Landroid/hardware/lights/ILightsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 118
    const-string v0, "android.hardware.lights.ILightsManager"

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v1

    .line 126
    :cond_16
    packed-switch p1, :pswitch_data_76

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 168
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 170
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 172
    .local v3, "_arg1":[I
    sget-object v4, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 173
    .local v4, "_arg2":[Landroid/hardware/lights/LightState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/lights/ILightsManager$Stub;->setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_75

    .line 159
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[Landroid/hardware/lights/LightState;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 160
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/hardware/lights/ILightsManager$Stub;->closeSession(Landroid/os/IBinder;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_75

    .line 148
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 150
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Landroid/hardware/lights/ILightsManager$Stub;->openSession(Landroid/os/IBinder;I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_75

    .line 138
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Landroid/hardware/lights/ILightsManager$Stub;->getLightState(I)Landroid/hardware/lights/LightState;

    move-result-object v3

    .line 141
    .local v3, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_75

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/lights/LightState;
    :pswitch_6a
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->getLights()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 133
    nop

    .line 183
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :goto_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_58
        :pswitch_46
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist openSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/hardware/lights/ILightsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_LIGHTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 298
    return-void
.end method

.method protected blacklist setLightStates_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/hardware/lights/ILightsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/lights/ILightsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_LIGHTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 308
    return-void
.end method
