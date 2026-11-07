.class public abstract Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;
.super Landroid/os/Binder;
.source "ICarrierConfigLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/ICarrierConfigLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICarrierConfigLoader"

.field static final greylist-max-o TRANSACTION_getConfigForSubId:I = 0x1

.field static final blacklist TRANSACTION_getConfigForSubIdWithFeature:I = 0x2

.field static final blacklist TRANSACTION_getConfigSubsetForSubIdWithFeature:I = 0x7

.field static final greylist-max-o TRANSACTION_getDefaultCarrierServicePackageName:I = 0x6

.field static final greylist-max-o TRANSACTION_notifyConfigChangedForSubId:I = 0x4

.field static final blacklist TRANSACTION_overrideConfig:I = 0x3

.field static final greylist-max-o TRANSACTION_updateConfigForPhoneId:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    nop

    .line 64
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    if-eqz p1, :cond_d

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 59
    return-void

    .line 56
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ICarrierConfigLoader;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_1c

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_5
    const-string v0, "getConfigSubsetForSubIdWithFeature"

    return-object v0

    .line 112
    :pswitch_8
    const-string v0, "getDefaultCarrierServicePackageName"

    return-object v0

    .line 108
    :pswitch_b
    const-string/jumbo v0, "updateConfigForPhoneId"

    return-object v0

    .line 104
    :pswitch_f
    const-string v0, "notifyConfigChangedForSubId"

    return-object v0

    .line 100
    :pswitch_12
    const-string v0, "overrideConfig"

    return-object v0

    .line 96
    :pswitch_15
    const-string v0, "getConfigForSubIdWithFeature"

    return-object v0

    .line 92
    :pswitch_18
    const-string v0, "getConfigForSubId"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method protected blacklist getDefaultCarrierServicePackageName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 391
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 396
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 127
    invoke-static {p1}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 131
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    .line 132
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 139
    :cond_16
    packed-switch p1, :pswitch_data_b4

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 210
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigSubsetForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 219
    .local v6, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    goto/16 :goto_b2

    .line 202
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/PersistableBundle;
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    goto :goto_b2

    .line 192
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_b2

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->notifyConfigChangedForSubId(I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_b2

    .line 170
    .end local v2    # "_arg0":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 174
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 175
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_b2

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":Z
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 163
    .local v5, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_b2

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/PersistableBundle;
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubId(ILjava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 149
    .local v4, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    nop

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/PersistableBundle;
    :goto_b2
    return v1

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_82
        :pswitch_68
        :pswitch_5a
        :pswitch_48
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist overrideConfig_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 380
    return-void
.end method

.method protected blacklist updateConfigForPhoneId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 386
    return-void
.end method
