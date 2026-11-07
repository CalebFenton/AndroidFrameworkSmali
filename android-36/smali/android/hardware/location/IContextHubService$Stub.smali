.class public abstract Landroid/hardware/location/IContextHubService$Stub;
.super Landroid/os/Binder;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubService"

.field static final greylist-max-o TRANSACTION_createClient:I = 0x9

.field static final blacklist TRANSACTION_createPendingIntentClient:I = 0xa

.field static final greylist-max-o TRANSACTION_disableNanoApp:I = 0x10

.field static final greylist-max-o TRANSACTION_enableNanoApp:I = 0xf

.field static final blacklist TRANSACTION_findEndpoints:I = 0x14

.field static final blacklist TRANSACTION_findEndpointsWithService:I = 0x15

.field static final greylist-max-o TRANSACTION_findNanoAppOnHub:I = 0x7

.field static final greylist-max-o TRANSACTION_getContextHubHandles:I = 0x2

.field static final greylist-max-o TRANSACTION_getContextHubInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getContextHubs:I = 0xb

.field static final blacklist TRANSACTION_getHubs:I = 0xc

.field static final greylist-max-o TRANSACTION_getNanoAppInstanceInfo:I = 0x6

.field static final blacklist TRANSACTION_getPreloadedNanoAppIds:I = 0x12

.field static final greylist-max-o TRANSACTION_loadNanoApp:I = 0x4

.field static final greylist-max-o TRANSACTION_loadNanoAppOnHub:I = 0xd

.field static final blacklist TRANSACTION_onDiscoveryCallbackFinished:I = 0x1a

.field static final greylist-max-o TRANSACTION_queryNanoApps:I = 0x11

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_registerEndpoint:I = 0x16

.field static final blacklist TRANSACTION_registerEndpointDiscoveryCallbackDescriptor:I = 0x18

.field static final blacklist TRANSACTION_registerEndpointDiscoveryCallbackId:I = 0x17

.field static final greylist-max-o TRANSACTION_sendMessage:I = 0x8

.field static final blacklist TRANSACTION_setTestMode:I = 0x13

.field static final greylist-max-o TRANSACTION_unloadNanoApp:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadNanoAppFromHub:I = 0xe

.field static final blacklist TRANSACTION_unregisterEndpointDiscoveryCallback:I = 0x19


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    nop

    .line 159
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 160
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 148
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 149
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 150
    if-eqz p1, :cond_d

    .line 153
    iput-object p1, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 154
    return-void

    .line 151
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 167
    if-nez p0, :cond_4

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_4
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 171
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IContextHubService;

    if-eqz v1, :cond_14

    .line 172
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubService;

    return-object v1

    .line 174
    :cond_14
    new-instance v1, Landroid/hardware/location/IContextHubService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 183
    packed-switch p0, :pswitch_data_54

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 287
    :pswitch_5
    const-string v0, "onDiscoveryCallbackFinished"

    return-object v0

    .line 283
    :pswitch_8
    const-string v0, "unregisterEndpointDiscoveryCallback"

    return-object v0

    .line 279
    :pswitch_b
    const-string v0, "registerEndpointDiscoveryCallbackDescriptor"

    return-object v0

    .line 275
    :pswitch_e
    const-string v0, "registerEndpointDiscoveryCallbackId"

    return-object v0

    .line 271
    :pswitch_11
    const-string v0, "registerEndpoint"

    return-object v0

    .line 267
    :pswitch_14
    const-string v0, "findEndpointsWithService"

    return-object v0

    .line 263
    :pswitch_17
    const-string v0, "findEndpoints"

    return-object v0

    .line 259
    :pswitch_1a
    const-string v0, "setTestMode"

    return-object v0

    .line 255
    :pswitch_1d
    const-string v0, "getPreloadedNanoAppIds"

    return-object v0

    .line 251
    :pswitch_20
    const-string v0, "queryNanoApps"

    return-object v0

    .line 247
    :pswitch_23
    const-string v0, "disableNanoApp"

    return-object v0

    .line 243
    :pswitch_26
    const-string v0, "enableNanoApp"

    return-object v0

    .line 239
    :pswitch_29
    const-string v0, "unloadNanoAppFromHub"

    return-object v0

    .line 235
    :pswitch_2c
    const-string v0, "loadNanoAppOnHub"

    return-object v0

    .line 231
    :pswitch_2f
    const-string v0, "getHubs"

    return-object v0

    .line 227
    :pswitch_32
    const-string v0, "getContextHubs"

    return-object v0

    .line 223
    :pswitch_35
    const-string v0, "createPendingIntentClient"

    return-object v0

    .line 219
    :pswitch_38
    const-string v0, "createClient"

    return-object v0

    .line 215
    :pswitch_3b
    const-string v0, "sendMessage"

    return-object v0

    .line 211
    :pswitch_3e
    const-string v0, "findNanoAppOnHub"

    return-object v0

    .line 207
    :pswitch_41
    const-string v0, "getNanoAppInstanceInfo"

    return-object v0

    .line 203
    :pswitch_44
    const-string v0, "unloadNanoApp"

    return-object v0

    .line 199
    :pswitch_47
    const-string v0, "loadNanoApp"

    return-object v0

    .line 195
    :pswitch_4a
    const-string v0, "getContextHubInfo"

    return-object v0

    .line 191
    :pswitch_4d
    const-string v0, "getContextHubHandles"

    return-object v0

    .line 187
    :pswitch_50
    const-string v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 178
    return-object p0
.end method

.method protected blacklist createClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1151
    return-void
.end method

.method protected blacklist createPendingIntentClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1156
    return-void
.end method

.method protected blacklist disableNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1186
    return-void
.end method

.method protected blacklist enableNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1181
    return-void
.end method

.method protected blacklist findEndpointsWithService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1211
    return-void
.end method

.method protected blacklist findEndpoints_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1206
    return-void
.end method

.method protected blacklist findNanoAppOnHub_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1141
    return-void
.end method

.method protected blacklist getContextHubHandles_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1116
    return-void
.end method

.method protected blacklist getContextHubInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1121
    return-void
.end method

.method protected blacklist getContextHubs_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1161
    return-void
.end method

.method protected blacklist getHubs_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1166
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1240
    const/16 v0, 0x19

    return v0
.end method

.method protected blacklist getNanoAppInstanceInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1136
    return-void
.end method

.method protected blacklist getPreloadedNanoAppIds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1196
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 298
    invoke-static {p1}, Landroid/hardware/location/IContextHubService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist loadNanoAppOnHub_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1171
    return-void
.end method

.method protected blacklist loadNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1126
    return-void
.end method

.method protected blacklist onDiscoveryCallbackFinished_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1236
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const-string v0, "android.hardware.location.IContextHubService"

    .line 303
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 304
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 307
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    return v1

    .line 310
    :cond_16
    packed-switch p1, :pswitch_data_288

    .line 600
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 595
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->onDiscoveryCallbackFinished()V

    .line 596
    move-object v3, p0

    goto/16 :goto_287

    .line 587
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v2

    .line 588
    .local v2, "_arg0":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    move-object v3, p0

    goto/16 :goto_287

    .line 576
    .end local v2    # "_arg0":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v3

    .line 579
    .local v3, "_arg1":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackDescriptor(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    move-object v3, p0

    goto/16 :goto_287

    .line 565
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 567
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v4

    .line 568
    .local v4, "_arg1":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackId(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object v3, p0

    goto/16 :goto_287

    .line 549
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :pswitch_69
    sget-object v2, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 551
    .local v2, "_arg0":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointCallback;

    move-result-object v3

    .line 553
    .local v3, "_arg1":Landroid/hardware/contexthub/IContextHubEndpointCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v6

    .line 558
    .local v6, "_result":Landroid/hardware/contexthub/IContextHubEndpoint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 560
    move-object v3, p0

    goto/16 :goto_287

    .line 539
    .end local v2    # "_arg0":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v3    # "_arg1":Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/hardware/contexthub/IContextHubEndpoint;
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 542
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 544
    move-object v3, p0

    goto/16 :goto_287

    .line 529
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 530
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->findEndpoints(J)Ljava/util/List;

    move-result-object v4

    .line 532
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 534
    move-object v3, p0

    goto/16 :goto_287

    .line 519
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 520
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->setTestMode(Z)Z

    move-result v3

    .line 522
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    move-object v3, p0

    goto/16 :goto_287

    .line 509
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_cd
    sget-object v2, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 510
    .local v2, "_arg0":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J

    move-result-object v3

    .line 512
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 514
    move-object v3, p0

    goto/16 :goto_287

    .line 498
    .end local v2    # "_arg0":Landroid/hardware/location/ContextHubInfo;
    .end local v3    # "_result":[J
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 501
    .local v3, "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object v3, p0

    goto/16 :goto_287

    .line 485
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 489
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 490
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    move-object v3, p0

    goto/16 :goto_287

    .line 472
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":J
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 476
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 477
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object v3, p0

    goto/16 :goto_287

    .line 459
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":J
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 463
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 464
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    move-object v3, p0

    goto/16 :goto_287

    .line 446
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":J
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 448
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 450
    .restart local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    sget-object v4, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/NanoAppBinary;

    .line 451
    .local v4, "_arg2":Landroid/hardware/location/NanoAppBinary;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    move-object v3, p0

    goto/16 :goto_287

    .line 438
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_arg2":Landroid/hardware/location/NanoAppBinary;
    :pswitch_171
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getHubs()Ljava/util/List;

    move-result-object v2

    .line 439
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/HubInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 441
    move-object v3, p0

    goto/16 :goto_287

    .line 431
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/HubInfo;>;"
    :pswitch_17e
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs()Ljava/util/List;

    move-result-object v2

    .line 432
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 434
    move-object v3, p0

    goto/16 :goto_287

    .line 416
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;"
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 418
    .local v4, "_arg0":I
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/app/PendingIntent;

    .line 420
    .local v5, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 422
    .local v6, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/location/IContextHubService$Stub;->createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v2

    .line 425
    .local v2, "_result":Landroid/hardware/location/IContextHubClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 427
    goto/16 :goto_287

    .line 400
    .end local v2    # "_result":Landroid/hardware/location/IContextHubClient;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    :pswitch_1b0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v4

    .line 404
    .local v4, "_arg1":Landroid/hardware/location/IContextHubClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 407
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/hardware/location/IContextHubService$Stub;->createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v7

    .line 409
    .local v7, "_result":Landroid/hardware/location/IContextHubClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 411
    goto/16 :goto_287

    .line 386
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/hardware/location/IContextHubClientCallback;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":Landroid/hardware/location/IContextHubClient;
    :pswitch_1d4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 390
    .local v4, "_arg1":I
    sget-object v5, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/ContextHubMessage;

    .line 391
    .local v5, "_arg2":Landroid/hardware/location/ContextHubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2, v4, v5}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v6

    .line 393
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_287

    .line 374
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/hardware/location/ContextHubMessage;
    .end local v6    # "_result":I
    :pswitch_1f4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/NanoAppFilter;

    .line 377
    .local v4, "_arg1":Landroid/hardware/location/NanoAppFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2, v4}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v5

    .line 379
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 381
    goto/16 :goto_287

    .line 364
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/hardware/location/NanoAppFilter;
    .end local v5    # "_result":[I
    :pswitch_210
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v4

    .line 367
    .local v4, "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    goto :goto_287

    .line 354
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    :pswitch_223
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp(I)I

    move-result v4

    .line 357
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    goto :goto_287

    .line 342
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_236
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/NanoApp;

    .line 345
    .local v4, "_arg1":Landroid/hardware/location/NanoApp;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v4}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v5

    .line 347
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    goto :goto_287

    .line 332
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/hardware/location/NanoApp;
    .end local v5    # "_result":I
    :pswitch_251
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v4

    .line 335
    .local v4, "_result":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    goto :goto_287

    .line 324
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/hardware/location/ContextHubInfo;
    :pswitch_264
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles()[I

    move-result-object v2

    .line 325
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 327
    goto :goto_287

    .line 315
    .end local v2    # "_result":[I
    :pswitch_270
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubCallback;

    move-result-object v2

    .line 316
    .local v2, "_arg0":Landroid/hardware/location/IContextHubCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I

    move-result v4

    .line 318
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    nop

    .line 603
    .end local v2    # "_arg0":Landroid/hardware/location/IContextHubCallback;
    .end local v4    # "_result":I
    :goto_287
    return v1

    :pswitch_data_288
    .packed-switch 0x1
        :pswitch_270
        :pswitch_264
        :pswitch_251
        :pswitch_236
        :pswitch_223
        :pswitch_210
        :pswitch_1f4
        :pswitch_1d4
        :pswitch_1b0
        :pswitch_18b
        :pswitch_17e
        :pswitch_171
        :pswitch_151
        :pswitch_135
        :pswitch_119
        :pswitch_fd
        :pswitch_e5
        :pswitch_cd
        :pswitch_b9
        :pswitch_a5
        :pswitch_91
        :pswitch_69
        :pswitch_51
        :pswitch_39
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist queryNanoApps_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1191
    return-void
.end method

.method protected blacklist registerCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1110
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1111
    return-void
.end method

.method protected blacklist registerEndpointDiscoveryCallbackDescriptor_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1226
    return-void
.end method

.method protected blacklist registerEndpointDiscoveryCallbackId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1221
    return-void
.end method

.method protected blacklist registerEndpoint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1216
    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1146
    return-void
.end method

.method protected blacklist setTestMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1200
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1201
    return-void
.end method

.method protected blacklist unloadNanoAppFromHub_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1176
    return-void
.end method

.method protected blacklist unloadNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1131
    return-void
.end method

.method protected blacklist unregisterEndpointDiscoveryCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1231
    return-void
.end method
