.class public abstract Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;
.super Landroid/os/Binder;
.source "IOnDevicePersonalizationManagingService.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_execute:I = 0x2

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_isFeatureEnabled:I = 0x5

.field static final blacklist TRANSACTION_logApiCallStats:I = 0x6

.field static final blacklist TRANSACTION_registerMeasurementEvent:I = 0x4

.field static final blacklist TRANSACTION_requestSurfacePackage:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_18

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 96
    :pswitch_5
    const-string v0, "logApiCallStats"

    return-object v0

    .line 92
    :pswitch_8
    const-string v0, "isFeatureEnabled"

    return-object v0

    .line 88
    :pswitch_b
    const-string v0, "registerMeasurementEvent"

    return-object v0

    .line 84
    :pswitch_e
    const-string v0, "requestSurfacePackage"

    return-object v0

    .line 80
    :pswitch_11
    const-string v0, "execute"

    return-object v0

    .line 76
    :pswitch_14
    const-string v0, "getVersion"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 361
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 107
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    .line 112
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v0, 0xffffff

    if-gt v10, v0, :cond_13

    .line 113
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    :cond_13
    const v0, 0x5f4e5446

    if-ne v10, v0, :cond_1c

    .line 116
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v14

    .line 119
    :cond_1c
    packed-switch v10, :pswitch_data_104

    .line 217
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 199
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 205
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 207
    .local v5, "_arg3":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 209
    .local v7, "_arg4":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 210
    .local v9, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->logApiCallStats(Ljava/lang/String;IJJJI)V

    .line 212
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto/16 :goto_103

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    .end local v7    # "_arg4":J
    .end local v9    # "_arg5":I
    :pswitch_48
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/adservices/ondevicepersonalization/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/ondevicepersonalization/CallerMetadata;

    .line 190
    .local v2, "_arg1":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;

    move-result-object v3

    .line 191
    .local v3, "_arg2":Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->isFeatureEnabled(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;)V

    .line 193
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto/16 :goto_103

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .end local v3    # "_arg2":Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
    :pswitch_67
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 175
    .local v2, "_arg1":Landroid/os/Bundle;
    sget-object v3, Landroid/adservices/ondevicepersonalization/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/ondevicepersonalization/CallerMetadata;

    .line 177
    .local v3, "_arg2":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;

    move-result-object v4

    .line 178
    .local v4, "_arg3":Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->registerMeasurementEvent(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;)V

    .line 180
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto/16 :goto_103

    .line 150
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .end local v4    # "_arg3":Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;
    :pswitch_8e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 154
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 160
    .local v5, "_arg4":I
    sget-object v6, Landroid/adservices/ondevicepersonalization/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/adservices/ondevicepersonalization/CallerMetadata;

    .line 162
    .local v6, "_arg5":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;

    move-result-object v7

    .line 163
    .local v7, "_arg6":Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->requestSurfacePackage(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;)V

    .line 165
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_103

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .end local v7    # "_arg6":Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    :pswitch_bd
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 135
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 137
    .local v3, "_arg2":Landroid/os/Bundle;
    sget-object v0, Landroid/adservices/ondevicepersonalization/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/adservices/ondevicepersonalization/CallerMetadata;

    .line 139
    .local v4, "_arg3":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    sget-object v0, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;

    .line 141
    .local v5, "_arg4":Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;

    move-result-object v6

    .line 142
    .local v6, "_arg5":Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->execute(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;)V

    .line 144
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_103

    .line 123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .end local v5    # "_arg4":Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;
    .end local v6    # "_arg5":Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    :pswitch_f8
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    nop

    .line 220
    .end local v0    # "_result":Ljava/lang/String;
    :goto_103
    return v14

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_f8
        :pswitch_bd
        :pswitch_8e
        :pswitch_67
        :pswitch_48
        :pswitch_24
    .end packed-switch
.end method
