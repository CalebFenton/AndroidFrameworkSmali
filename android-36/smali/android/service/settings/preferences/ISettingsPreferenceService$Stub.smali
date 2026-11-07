.class public abstract Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;
.super Landroid/os/Binder;
.source "ISettingsPreferenceService.java"

# interfaces
.implements Landroid/service/settings/preferences/ISettingsPreferenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/ISettingsPreferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/ISettingsPreferenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_setPreferenceValue:[Ljava/lang/String;

.field static final blacklist TRANSACTION_getAllPreferenceMetadata:I = 0x2

.field static final blacklist TRANSACTION_getPreferenceValue:I = 0x3

.field static final blacklist TRANSACTION_setPreferenceValue:I = 0x4


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 211
    const-string v0, "android.permission.READ_SYSTEM_PREFERENCES"

    const-string v1, "android.permission.WRITE_SYSTEM_PREFERENCES"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->PERMISSIONS_setPreferenceValue:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    nop

    .line 47
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.service.settings.preferences.ISettingsPreferenceService"

    invoke-virtual {p0, p0, v0}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    if-eqz p1, :cond_d

    .line 41
    iput-object p1, p0, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 42
    return-void

    .line 39
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/settings/preferences/ISettingsPreferenceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.service.settings.preferences.ISettingsPreferenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/settings/preferences/ISettingsPreferenceService;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/service/settings/preferences/ISettingsPreferenceService;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_10

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_5
    const-string/jumbo v0, "setPreferenceValue"

    return-object v0

    .line 79
    :pswitch_9
    const-string v0, "getPreferenceValue"

    return-object v0

    .line 75
    :pswitch_c
    const-string v0, "getAllPreferenceMetadata"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method protected blacklist getAllPreferenceMetadata_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_SYSTEM_PREFERENCES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 204
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 219
    const/4 v0, 0x3

    return v0
.end method

.method protected blacklist getPreferenceValue_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_SYSTEM_PREFERENCES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 209
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 94
    invoke-static {p1}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const-string v0, "android.service.settings.preferences.ISettingsPreferenceService"

    .line 99
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 106
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_1e
    sget-object v2, Landroid/service/settings/preferences/SetValueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/preferences/SetValueRequest;

    .line 133
    .local v2, "_arg0":Landroid/service/settings/preferences/SetValueRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/settings/preferences/ISetValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/preferences/ISetValueCallback;

    move-result-object v3

    .line 134
    .local v3, "_arg1":Landroid/service/settings/preferences/ISetValueCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->setPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/service/settings/preferences/ISetValueCallback;)V

    .line 136
    goto :goto_63

    .line 121
    .end local v2    # "_arg0":Landroid/service/settings/preferences/SetValueRequest;
    .end local v3    # "_arg1":Landroid/service/settings/preferences/ISetValueCallback;
    :pswitch_35
    sget-object v2, Landroid/service/settings/preferences/GetValueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/preferences/GetValueRequest;

    .line 123
    .local v2, "_arg0":Landroid/service/settings/preferences/GetValueRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/settings/preferences/IGetValueCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/preferences/IGetValueCallback;

    move-result-object v3

    .line 124
    .local v3, "_arg1":Landroid/service/settings/preferences/IGetValueCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V

    .line 126
    goto :goto_63

    .line 111
    .end local v2    # "_arg0":Landroid/service/settings/preferences/GetValueRequest;
    .end local v3    # "_arg1":Landroid/service/settings/preferences/IGetValueCallback;
    :pswitch_4c
    sget-object v2, Landroid/service/settings/preferences/MetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/preferences/MetadataRequest;

    .line 113
    .local v2, "_arg0":Landroid/service/settings/preferences/MetadataRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/settings/preferences/IMetadataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/preferences/IMetadataCallback;

    move-result-object v3

    .line 114
    .local v3, "_arg1":Landroid/service/settings/preferences/IMetadataCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/service/settings/preferences/IMetadataCallback;)V

    .line 116
    nop

    .line 143
    .end local v2    # "_arg0":Landroid/service/settings/preferences/MetadataRequest;
    .end local v3    # "_arg1":Landroid/service/settings/preferences/IMetadataCallback;
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setPreferenceValue_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->PERMISSIONS_setPreferenceValue:[Ljava/lang/String;

    invoke-static {}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 215
    return-void
.end method
