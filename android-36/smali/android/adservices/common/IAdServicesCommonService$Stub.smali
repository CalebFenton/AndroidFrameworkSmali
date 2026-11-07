.class public abstract Landroid/adservices/common/IAdServicesCommonService$Stub;
.super Landroid/os/Binder;
.source "IAdServicesCommonService.java"

# interfaces
.implements Landroid/adservices/common/IAdServicesCommonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/IAdServicesCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IAdServicesCommonService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableAdServices:I = 0x3

.field static final blacklist TRANSACTION_getAdServicesCommonStates:I = 0x5

.field static final blacklist TRANSACTION_isAdServicesEnabled:I = 0x1

.field static final blacklist TRANSACTION_requestAdServicesModuleOverrides:I = 0x6

.field static final blacklist TRANSACTION_requestAdServicesModuleUserChoices:I = 0x7

.field static final blacklist TRANSACTION_setAdServicesEnabled:I = 0x2

.field static final blacklist TRANSACTION_updateAdIdCache:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.adservices.common.IAdServicesCommonService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/common/IAdServicesCommonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IAdServicesCommonService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.adservices.common.IAdServicesCommonService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/common/IAdServicesCommonService;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/adservices/common/IAdServicesCommonService;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/adservices/common/IAdServicesCommonService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/common/IAdServicesCommonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string v0, "requestAdServicesModuleUserChoices"

    return-object v0

    .line 100
    :pswitch_8
    const-string v0, "requestAdServicesModuleOverrides"

    return-object v0

    .line 96
    :pswitch_b
    const-string v0, "getAdServicesCommonStates"

    return-object v0

    .line 92
    :pswitch_e
    const-string v0, "updateAdIdCache"

    return-object v0

    .line 88
    :pswitch_11
    const-string v0, "enableAdServices"

    return-object v0

    .line 84
    :pswitch_14
    const-string v0, "setAdServicesEnabled"

    return-object v0

    .line 80
    :pswitch_17
    const-string v0, "isAdServicesEnabled"

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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 344
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/adservices/common/IAdServicesCommonService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    const-string v0, "android.adservices.common.IAdServicesCommonService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_16
    packed-switch p1, :pswitch_data_ba

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 192
    :pswitch_1e
    sget-object v2, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;

    .line 194
    .local v2, "_arg0":Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/common/IAdServicesCommonService$Stub;->requestAdServicesModuleUserChoices(Landroid/adservices/common/UpdateAdServicesUserChoicesParams;Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_b8

    .line 182
    .end local v2    # "_arg0":Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    .end local v3    # "_arg1":Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;
    :pswitch_36
    sget-object v2, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;

    .line 184
    .local v2, "_arg0":Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;

    move-result-object v3

    .line 185
    .local v3, "_arg1":Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/common/IAdServicesCommonService$Stub;->requestAdServicesModuleOverrides(Landroid/adservices/common/UpdateAdServicesModuleStatesParams;Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_b8

    .line 170
    .end local v2    # "_arg0":Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    .end local v3    # "_arg1":Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;
    :pswitch_4d
    sget-object v2, Landroid/adservices/common/GetAdServicesCommonStatesParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/GetAdServicesCommonStatesParams;

    .line 172
    .local v2, "_arg0":Landroid/adservices/common/GetAdServicesCommonStatesParams;
    sget-object v3, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/common/CallerMetadata;

    .line 174
    .local v3, "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IAdServicesCommonStatesCallback;

    move-result-object v4

    .line 175
    .local v4, "_arg2":Landroid/adservices/common/IAdServicesCommonStatesCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/adservices/common/IAdServicesCommonService$Stub;->getAdServicesCommonStates(Landroid/adservices/common/GetAdServicesCommonStatesParams;Landroid/adservices/common/CallerMetadata;Landroid/adservices/common/IAdServicesCommonStatesCallback;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_b8

    .line 160
    .end local v2    # "_arg0":Landroid/adservices/common/GetAdServicesCommonStatesParams;
    .end local v3    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v4    # "_arg2":Landroid/adservices/common/IAdServicesCommonStatesCallback;
    :pswitch_6c
    sget-object v2, Landroid/adservices/common/UpdateAdIdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/UpdateAdIdRequest;

    .line 162
    .local v2, "_arg0":Landroid/adservices/common/UpdateAdIdRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/common/IUpdateAdIdCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IUpdateAdIdCallback;

    move-result-object v3

    .line 163
    .local v3, "_arg1":Landroid/adservices/common/IUpdateAdIdCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/common/IAdServicesCommonService$Stub;->updateAdIdCache(Landroid/adservices/common/UpdateAdIdRequest;Landroid/adservices/common/IUpdateAdIdCallback;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_b8

    .line 150
    .end local v2    # "_arg0":Landroid/adservices/common/UpdateAdIdRequest;
    .end local v3    # "_arg1":Landroid/adservices/common/IUpdateAdIdCallback;
    :pswitch_83
    sget-object v2, Landroid/adservices/common/AdServicesStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/AdServicesStates;

    .line 152
    .local v2, "_arg0":Landroid/adservices/common/AdServicesStates;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/common/IEnableAdServicesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IEnableAdServicesCallback;

    move-result-object v3

    .line 153
    .local v3, "_arg1":Landroid/adservices/common/IEnableAdServicesCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/common/IAdServicesCommonService$Stub;->enableAdServices(Landroid/adservices/common/AdServicesStates;Landroid/adservices/common/IEnableAdServicesCallback;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_b8

    .line 140
    .end local v2    # "_arg0":Landroid/adservices/common/AdServicesStates;
    .end local v3    # "_arg1":Landroid/adservices/common/IEnableAdServicesCallback;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 142
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 143
    .local v3, "_arg1":Z
    invoke-virtual {p0, v2, v3}, Landroid/adservices/common/IAdServicesCommonService$Stub;->setAdServicesEnabled(ZZ)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_b8

    .line 132
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/common/IAdServicesCommonCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IAdServicesCommonCallback;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Landroid/adservices/common/IAdServicesCommonCallback;
    invoke-virtual {p0, v2}, Landroid/adservices/common/IAdServicesCommonService$Stub;->isAdServicesEnabled(Landroid/adservices/common/IAdServicesCommonCallback;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    nop

    .line 204
    .end local v2    # "_arg0":Landroid/adservices/common/IAdServicesCommonCallback;
    :goto_b8
    return v1

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_9a
        :pswitch_83
        :pswitch_6c
        :pswitch_4d
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
