.class public abstract Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;
.super Landroid/os/Binder;
.source "IAdvancedProtectionService.java"

# interfaces
.implements Landroid/security/advancedprotection/IAdvancedProtectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/advancedprotection/IAdvancedProtectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/IAdvancedProtectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAdvancedProtectionFeatures:I = 0x5

.field static final blacklist TRANSACTION_isAdvancedProtectionEnabled:I = 0x1

.field static final blacklist TRANSACTION_logDialogShown:I = 0x6

.field static final blacklist TRANSACTION_registerAdvancedProtectionCallback:I = 0x2

.field static final blacklist TRANSACTION_setAdvancedProtectionEnabled:I = 0x4

.field static final blacklist TRANSACTION_unregisterAdvancedProtectionCallback:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    nop

    .line 62
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.security.advancedprotection.IAdvancedProtectionService"

    invoke-virtual {p0, p0, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    if-eqz p1, :cond_d

    .line 56
    iput-object p1, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 57
    return-void

    .line 54
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.security.advancedprotection.IAdvancedProtectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/advancedprotection/IAdvancedProtectionService;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/security/advancedprotection/IAdvancedProtectionService;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_1c

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 110
    :pswitch_5
    const-string/jumbo v0, "logDialogShown"

    return-object v0

    .line 106
    :pswitch_9
    const-string v0, "getAdvancedProtectionFeatures"

    return-object v0

    .line 102
    :pswitch_c
    const-string/jumbo v0, "setAdvancedProtectionEnabled"

    return-object v0

    .line 98
    :pswitch_10
    const-string/jumbo v0, "unregisterAdvancedProtectionCallback"

    return-object v0

    .line 94
    :pswitch_14
    const-string/jumbo v0, "registerAdvancedProtectionCallback"

    return-object v0

    .line 90
    :pswitch_18
    const-string/jumbo v0, "isAdvancedProtectionEnabled"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method protected blacklist getAdvancedProtectionFeatures_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 332
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 341
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 121
    invoke-static {p1}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isAdvancedProtectionEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 312
    return-void
.end method

.method protected blacklist logDialogShown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 337
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

    .line 125
    const-string v0, "android.security.advancedprotection.IAdvancedProtectionService"

    .line 126
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 133
    :cond_16
    packed-switch p1, :pswitch_data_7e

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 184
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->logDialogShown(IIZ)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_7c

    .line 171
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_34
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/security/advancedprotection/AdvancedProtectionFeature;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 174
    goto :goto_7c

    .line 163
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/security/advancedprotection/AdvancedProtectionFeature;>;"
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 164
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->setAdvancedProtectionEnabled(Z)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_7c

    .line 154
    .end local v2    # "_arg0":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    move-result-object v2

    .line 155
    .local v2, "_arg0":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_7c

    .line 145
    .end local v2    # "_arg0":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    move-result-object v2

    .line 146
    .restart local v2    # "_arg0":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_7c

    .line 137
    .end local v2    # "_arg0":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :pswitch_71
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->isAdvancedProtectionEnabled()Z

    move-result v2

    .line 138
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    nop

    .line 194
    .end local v2    # "_result":Z
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_71
        :pswitch_5f
        :pswitch_4d
        :pswitch_3f
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist registerAdvancedProtectionCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 317
    return-void
.end method

.method protected blacklist setAdvancedProtectionEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 327
    return-void
.end method

.method protected blacklist unregisterAdvancedProtectionCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 322
    return-void
.end method
