.class public abstract Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;
.super Landroid/os/Binder;
.source "IOnDeviceIntelligenceManager.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFeature:I = 0x3

.field static final blacklist TRANSACTION_getFeatureDetails:I = 0x5

.field static final blacklist TRANSACTION_getLatestInferenceInfo:I = 0xb

.field static final blacklist TRANSACTION_getRemoteServicePackageName:I = 0xa

.field static final blacklist TRANSACTION_getVersion:I = 0x2

.field static final blacklist TRANSACTION_listFeatures:I = 0x4

.field static final blacklist TRANSACTION_processRequest:I = 0x8

.field static final blacklist TRANSACTION_processRequestStreaming:I = 0x9

.field static final blacklist TRANSACTION_requestFeatureDownload:I = 0x6

.field static final blacklist TRANSACTION_requestTokenInfo:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.app.ondeviceintelligence.IOnDeviceIntelligenceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.app.ondeviceintelligence.IOnDeviceIntelligenceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_24

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_5
    const-string v0, "getLatestInferenceInfo"

    return-object v0

    .line 124
    :pswitch_8
    const-string v0, "getRemoteServicePackageName"

    return-object v0

    .line 120
    :pswitch_b
    const-string v0, "processRequestStreaming"

    return-object v0

    .line 116
    :pswitch_e
    const-string v0, "processRequest"

    return-object v0

    .line 112
    :pswitch_11
    const-string v0, "requestTokenInfo"

    return-object v0

    .line 108
    :pswitch_14
    const-string v0, "requestFeatureDownload"

    return-object v0

    .line 104
    :pswitch_17
    const-string v0, "getFeatureDetails"

    return-object v0

    .line 100
    :pswitch_1a
    const-string v0, "listFeatures"

    return-object v0

    .line 96
    :pswitch_1d
    const-string v0, "getFeature"

    return-object v0

    .line 92
    :pswitch_20
    const-string v0, "getVersion"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x2
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

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 484
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 139
    invoke-static {p1}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 143
    const-string v7, "android.app.ondeviceintelligence.IOnDeviceIntelligenceManager"

    .line 144
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 145
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 148
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v8

    .line 151
    :cond_16
    packed-switch p1, :pswitch_data_154

    .line 278
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 269
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 270
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v1, v2}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->getLatestInferenceInfo(J)Ljava/util/List;

    move-result-object v3

    .line 272
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ondeviceintelligence/InferenceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 274
    goto/16 :goto_152

    .line 261
    .end local v1    # "_arg0":J
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ondeviceintelligence/InferenceInfo;>;"
    :pswitch_31
    invoke-virtual {p0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->getRemoteServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    goto/16 :goto_152

    .line 243
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3d
    sget-object v1, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ondeviceintelligence/Feature;

    .line 245
    .local v1, "_arg0":Landroid/app/ondeviceintelligence/Feature;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 247
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .local v3, "_arg2":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 251
    .local v4, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 253
    .local v5, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    move-result-object v6

    .line 254
    .local v6, "_arg5":Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto/16 :goto_152

    .line 224
    .end local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    .end local v6    # "_arg5":Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    :pswitch_75
    sget-object v0, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ondeviceintelligence/Feature;

    .line 226
    .restart local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 228
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .restart local v3    # "_arg2":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 232
    .restart local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 234
    .restart local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ondeviceintelligence/IResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IResponseCallback;

    move-result-object v6

    .line 235
    .local v6, "_arg5":Landroid/app/ondeviceintelligence/IResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_152

    .line 209
    .end local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    .end local v6    # "_arg5":Landroid/app/ondeviceintelligence/IResponseCallback;
    :pswitch_b1
    sget-object v1, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ondeviceintelligence/Feature;

    .line 211
    .restart local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 213
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 215
    .local v3, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    move-result-object v4

    .line 216
    .local v4, "_arg3":Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_152

    .line 196
    .end local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    .end local v4    # "_arg3":Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    :pswitch_dc
    sget-object v1, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ondeviceintelligence/Feature;

    .line 198
    .restart local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 200
    .local v2, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IDownloadCallback;

    move-result-object v3

    .line 201
    .local v3, "_arg2":Landroid/app/ondeviceintelligence/IDownloadCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_152

    .line 185
    .end local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    .end local v2    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    .end local v3    # "_arg2":Landroid/app/ondeviceintelligence/IDownloadCallback;
    :pswitch_fe
    sget-object v1, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ondeviceintelligence/Feature;

    .line 187
    .restart local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    move-result-object v2

    .line 188
    .local v2, "_arg1":Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v1, v2}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_152

    .line 176
    .end local v1    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    .end local v2    # "_arg1":Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    move-result-object v1

    .line 177
    .local v1, "_arg0":Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v1}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_152

    .line 165
    .end local v1    # "_arg0":Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ondeviceintelligence/IFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IFeatureCallback;

    move-result-object v2

    .line 168
    .local v2, "_arg1":Landroid/app/ondeviceintelligence/IFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v1, v2}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_152

    .line 156
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/ondeviceintelligence/IFeatureCallback;
    :pswitch_140
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 157
    .local v1, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v1}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;->getVersion(Landroid/os/RemoteCallback;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    nop

    .line 281
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    :goto_152
    return v8

    nop

    :pswitch_data_154
    .packed-switch 0x2
        :pswitch_140
        :pswitch_12a
        :pswitch_118
        :pswitch_fe
        :pswitch_dc
        :pswitch_b1
        :pswitch_75
        :pswitch_3d
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
