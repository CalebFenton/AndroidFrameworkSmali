.class public abstract Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;
.super Landroid/os/Binder;
.source "IOnDeviceSandboxedInferenceService.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_processRequest:I = 0x3

.field static final blacklist TRANSACTION_processRequestStreaming:I = 0x4

.field static final blacklist TRANSACTION_registerRemoteStorageService:I = 0x1

.field static final blacklist TRANSACTION_requestTokenInfo:I = 0x2

.field static final blacklist TRANSACTION_updateProcessingState:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.service.ondeviceintelligence.IOnDeviceSandboxedInferenceService"

    invoke-virtual {p0, p0, v0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.service.ondeviceintelligence.IOnDeviceSandboxedInferenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_14

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "updateProcessingState"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "processRequestStreaming"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "processRequest"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "requestTokenInfo"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "registerRemoteStorageService"

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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 301
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v8, "android.service.ondeviceintelligence.IOnDeviceSandboxedInferenceService"

    .line 107
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 108
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 111
    move-object v10, p3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v9

    .line 114
    :cond_17
    move-object v10, p3

    packed-switch p1, :pswitch_data_f4

    .line 194
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 185
    :pswitch_20
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 187
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    move-result-object v2

    .line 188
    .local v2, "_arg1":Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v1, v2}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    .line 190
    goto/16 :goto_f3

    .line 165
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .local v1, "_arg0":I
    sget-object v2, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    .line 169
    .local v2, "_arg1":Landroid/app/ondeviceintelligence/Feature;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 171
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .local v4, "_arg3":I
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 175
    .local v5, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    sget-object v6, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/infra/AndroidFuture;

    .line 177
    .local v6, "_arg5":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    move-result-object v7

    .line 178
    .local v7, "_arg6":Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 180
    goto/16 :goto_f3

    .line 145
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    .end local v6    # "_arg5":Lcom/android/internal/infra/AndroidFuture;
    .end local v7    # "_arg6":Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    .line 149
    .restart local v2    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 151
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 153
    .restart local v4    # "_arg3":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 155
    .restart local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/infra/AndroidFuture;

    .line 157
    .restart local v6    # "_arg5":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ondeviceintelligence/IResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IResponseCallback;

    move-result-object v7

    .line 158
    .local v7, "_arg6":Landroid/app/ondeviceintelligence/IResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 160
    goto :goto_f3

    .line 129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    .end local v6    # "_arg5":Lcom/android/internal/infra/AndroidFuture;
    .end local v7    # "_arg6":Landroid/app/ondeviceintelligence/IResponseCallback;
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    .line 133
    .restart local v2    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 135
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 137
    .local v4, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    move-result-object v5

    .line 138
    .local v5, "_arg4":Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 140
    goto :goto_f3

    .line 119
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    .end local v5    # "_arg4":Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IRemoteStorageService;

    move-result-object v1

    .line 121
    .local v1, "_arg0":Landroid/service/ondeviceintelligence/IRemoteStorageService;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    .line 122
    .local v2, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v1, v2}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->registerRemoteStorageService(Landroid/service/ondeviceintelligence/IRemoteStorageService;Landroid/os/IRemoteCallback;)V

    .line 124
    nop

    .line 197
    .end local v1    # "_arg0":Landroid/service/ondeviceintelligence/IRemoteStorageService;
    .end local v2    # "_arg1":Landroid/os/IRemoteCallback;
    :goto_f3
    return v9

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_ad
        :pswitch_71
        :pswitch_38
        :pswitch_20
    .end packed-switch
.end method
