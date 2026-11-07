.class public abstract Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioNetworkResponse.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_cancelEmergencyNetworkScanResponse:I = 0x27

.field static final blacklist TRANSACTION_exitEmergencyModeResponse:I = 0x26

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmapResponse:I = 0x2

.field static final blacklist TRANSACTION_getAvailableBandModesResponse:I = 0x3

.field static final blacklist TRANSACTION_getAvailableNetworksResponse:I = 0x4

.field static final blacklist TRANSACTION_getBarringInfoResponse:I = 0x5

.field static final blacklist TRANSACTION_getCdmaRoamingPreferenceResponse:I = 0x6

.field static final blacklist TRANSACTION_getCellInfoListResponse:I = 0x7

.field static final blacklist TRANSACTION_getDataRegistrationStateResponse:I = 0x8

.field static final blacklist TRANSACTION_getImsRegistrationStateResponse:I = 0x9

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNetworkSelectionModeResponse:I = 0xa

.field static final blacklist TRANSACTION_getOperatorResponse:I = 0xb

.field static final blacklist TRANSACTION_getSignalStrengthResponse:I = 0xc

.field static final blacklist TRANSACTION_getSystemSelectionChannelsResponse:I = 0xd

.field static final blacklist TRANSACTION_getUsageSettingResponse:I = 0x23

.field static final blacklist TRANSACTION_getVoiceRadioTechnologyResponse:I = 0xe

.field static final blacklist TRANSACTION_getVoiceRegistrationStateResponse:I = 0xf

.field static final blacklist TRANSACTION_isCellularIdentifierTransparencyEnabledResponse:I = 0x2c

.field static final blacklist TRANSACTION_isN1ModeEnabledResponse:I = 0x2a

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabledResponse:I = 0x10

.field static final blacklist TRANSACTION_isNullCipherAndIntegrityEnabledResponse:I = 0x29

.field static final blacklist TRANSACTION_isSatelliteEnabledForCarrierResponse:I = 0x32

.field static final blacklist TRANSACTION_isSecurityAlgorithmsUpdatedEnabledResponse:I = 0x2f

.field static final blacklist TRANSACTION_setAllowedNetworkTypesBitmapResponse:I = 0x11

.field static final blacklist TRANSACTION_setBandModeResponse:I = 0x12

.field static final blacklist TRANSACTION_setBarringPasswordResponse:I = 0x13

.field static final blacklist TRANSACTION_setCdmaRoamingPreferenceResponse:I = 0x14

.field static final blacklist TRANSACTION_setCellInfoListRateResponse:I = 0x15

.field static final blacklist TRANSACTION_setCellularIdentifierTransparencyEnabledResponse:I = 0x2d

.field static final blacklist TRANSACTION_setEmergencyModeResponse:I = 0x24

.field static final blacklist TRANSACTION_setIndicationFilterResponse:I = 0x16

.field static final blacklist TRANSACTION_setLinkCapacityReportingCriteriaResponse:I = 0x17

.field static final blacklist TRANSACTION_setLocationUpdatesResponse:I = 0x18

.field static final blacklist TRANSACTION_setN1ModeEnabledResponse:I = 0x2b

.field static final blacklist TRANSACTION_setNetworkSelectionModeAutomaticResponse:I = 0x19

.field static final blacklist TRANSACTION_setNetworkSelectionModeManualResponse:I = 0x1a

.field static final blacklist TRANSACTION_setNrDualConnectivityStateResponse:I = 0x1b

.field static final blacklist TRANSACTION_setNullCipherAndIntegrityEnabledResponse:I = 0x28

.field static final blacklist TRANSACTION_setSatelliteEnabledForCarrierResponse:I = 0x31

.field static final blacklist TRANSACTION_setSatellitePlmnResponse:I = 0x30

.field static final blacklist TRANSACTION_setSecurityAlgorithmsUpdatedEnabledResponse:I = 0x2e

.field static final blacklist TRANSACTION_setSignalStrengthReportingCriteriaResponse:I = 0x1c

.field static final blacklist TRANSACTION_setSuppServiceNotificationsResponse:I = 0x1d

.field static final blacklist TRANSACTION_setSystemSelectionChannelsResponse:I = 0x1e

.field static final blacklist TRANSACTION_setUsageSettingResponse:I = 0x22

.field static final blacklist TRANSACTION_startNetworkScanResponse:I = 0x1f

.field static final blacklist TRANSACTION_stopNetworkScanResponse:I = 0x20

.field static final blacklist TRANSACTION_supplyNetworkDepersonalizationResponse:I = 0x21

.field static final blacklist TRANSACTION_triggerEmergencyNetworkScanResponse:I = 0x25


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 928
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 929
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->markVintfStability()V

    .line 930
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 938
    if-nez p0, :cond_4

    .line 939
    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_4
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 942
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetworkResponse;

    if-eqz v1, :cond_14

    .line 943
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/network/IRadioNetworkResponse;

    return-object v1

    .line 945
    :cond_14
    new-instance v1, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 949
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 954
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 955
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 958
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    return v2

    .line 961
    :cond_16
    if-ne p1, v1, :cond_23

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    return v2

    .line 966
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    return v2

    .line 971
    :cond_33
    packed-switch p1, :pswitch_data_3e2

    .line 1429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1420
    :pswitch_3b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1422
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1423
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isSatelliteEnabledForCarrierResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1425
    goto/16 :goto_3e1

    .line 1412
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_4f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1413
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSatelliteEnabledForCarrierResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1415
    goto/16 :goto_3e1

    .line 1404
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1405
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSatellitePlmnResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1407
    goto/16 :goto_3e1

    .line 1394
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_6f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1396
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1397
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isSecurityAlgorithmsUpdatedEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1399
    goto/16 :goto_3e1

    .line 1386
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_83
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1387
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSecurityAlgorithmsUpdatedEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1389
    goto/16 :goto_3e1

    .line 1378
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_93
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1379
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCellularIdentifierTransparencyEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1381
    goto/16 :goto_3e1

    .line 1368
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1370
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1371
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isCellularIdentifierTransparencyEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1373
    goto/16 :goto_3e1

    .line 1360
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_b7
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1361
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1362
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1363
    goto/16 :goto_3e1

    .line 1350
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_c7
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1352
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1353
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1355
    goto/16 :goto_3e1

    .line 1340
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_db
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1342
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1343
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1345
    goto/16 :goto_3e1

    .line 1332
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_ef
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1333
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1335
    goto/16 :goto_3e1

    .line 1324
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_ff
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1325
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->cancelEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1327
    goto/16 :goto_3e1

    .line 1316
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_10f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1317
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->exitEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1319
    goto/16 :goto_3e1

    .line 1308
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_11f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1309
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->triggerEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1311
    goto/16 :goto_3e1

    .line 1298
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1300
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/EmergencyRegResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/EmergencyRegResult;

    .line 1301
    .local v3, "_arg1":Landroid/hardware/radio/network/EmergencyRegResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/EmergencyRegResult;)V

    .line 1303
    goto/16 :goto_3e1

    .line 1288
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/EmergencyRegResult;
    :pswitch_147
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1290
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1291
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1293
    goto/16 :goto_3e1

    .line 1280
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_15b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1281
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1283
    goto/16 :goto_3e1

    .line 1270
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_16b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1272
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1273
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1275
    goto/16 :goto_3e1

    .line 1262
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_17f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1263
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1265
    goto/16 :goto_3e1

    .line 1254
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_18f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1255
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1257
    goto/16 :goto_3e1

    .line 1246
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_19f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1247
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1249
    goto/16 :goto_3e1

    .line 1238
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1af
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1239
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1241
    goto/16 :goto_3e1

    .line 1230
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1bf
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1231
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1233
    goto/16 :goto_3e1

    .line 1222
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1cf
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1223
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1225
    goto/16 :goto_3e1

    .line 1214
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1df
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1215
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1217
    goto/16 :goto_3e1

    .line 1206
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1ef
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1207
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1209
    goto/16 :goto_3e1

    .line 1198
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1ff
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1199
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1201
    goto/16 :goto_3e1

    .line 1190
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_20f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1191
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1193
    goto/16 :goto_3e1

    .line 1182
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_21f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1183
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1185
    goto/16 :goto_3e1

    .line 1174
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_22f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1175
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1177
    goto/16 :goto_3e1

    .line 1166
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_23f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1167
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1169
    goto/16 :goto_3e1

    .line 1158
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_24f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1159
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1161
    goto/16 :goto_3e1

    .line 1150
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_25f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1151
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1153
    goto/16 :goto_3e1

    .line 1142
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_26f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1143
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1145
    goto/16 :goto_3e1

    .line 1132
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_27f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1134
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1135
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1137
    goto/16 :goto_3e1

    .line 1122
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_293
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1124
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/RegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/RegStateResult;

    .line 1125
    .local v3, "_arg1":Landroid/hardware/radio/network/RegStateResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V

    .line 1127
    goto/16 :goto_3e1

    .line 1112
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/RegStateResult;
    :pswitch_2ab
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1114
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1115
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1117
    goto/16 :goto_3e1

    .line 1102
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_2bf
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1104
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 1105
    .local v3, "_arg1":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    .line 1107
    goto/16 :goto_3e1

    .line 1092
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    :pswitch_2d7
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1094
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/SignalStrength;

    .line 1095
    .local v3, "_arg1":Landroid/hardware/radio/network/SignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V

    .line 1097
    goto/16 :goto_3e1

    .line 1078
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/SignalStrength;
    :pswitch_2ef
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1080
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    goto/16 :goto_3e1

    .line 1068
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_30b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1070
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1071
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1073
    goto/16 :goto_3e1

    .line 1056
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_31f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1058
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1060
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1061
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    .line 1063
    goto/16 :goto_3e1

    .line 1046
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_337
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1048
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/RegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/RegStateResult;

    .line 1049
    .local v3, "_arg1":Landroid/hardware/radio/network/RegStateResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V

    .line 1051
    goto/16 :goto_3e1

    .line 1036
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/RegStateResult;
    :pswitch_34f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1038
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/CellInfo;

    .line 1039
    .local v3, "_arg1":[Landroid/hardware/radio/network/CellInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V

    .line 1041
    goto/16 :goto_3e1

    .line 1026
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/network/CellInfo;
    :pswitch_367
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1028
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1029
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1031
    goto :goto_3e1

    .line 1014
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_37a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1016
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/CellIdentity;

    .line 1018
    .local v3, "_arg1":Landroid/hardware/radio/network/CellIdentity;
    sget-object v4, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/radio/network/BarringInfo;

    .line 1019
    .local v4, "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V

    .line 1021
    goto :goto_3e1

    .line 1004
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/CellIdentity;
    .end local v4    # "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    :pswitch_399
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1006
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/OperatorInfo;

    .line 1007
    .local v3, "_arg1":[Landroid/hardware/radio/network/OperatorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V

    .line 1009
    goto :goto_3e1

    .line 994
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/network/OperatorInfo;
    :pswitch_3b0
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 996
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 997
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 999
    goto :goto_3e1

    .line 984
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[I
    :pswitch_3c3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 986
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 987
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 989
    goto :goto_3e1

    .line 976
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_3d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 977
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->acknowledgeRequest(I)V

    .line 979
    nop

    .line 1432
    .end local v1    # "_arg0":I
    :goto_3e1
    return v2

    :pswitch_data_3e2
    .packed-switch 0x1
        :pswitch_3d6
        :pswitch_3c3
        :pswitch_3b0
        :pswitch_399
        :pswitch_37a
        :pswitch_367
        :pswitch_34f
        :pswitch_337
        :pswitch_31f
        :pswitch_30b
        :pswitch_2ef
        :pswitch_2d7
        :pswitch_2bf
        :pswitch_2ab
        :pswitch_293
        :pswitch_27f
        :pswitch_26f
        :pswitch_25f
        :pswitch_24f
        :pswitch_23f
        :pswitch_22f
        :pswitch_21f
        :pswitch_20f
        :pswitch_1ff
        :pswitch_1ef
        :pswitch_1df
        :pswitch_1cf
        :pswitch_1bf
        :pswitch_1af
        :pswitch_19f
        :pswitch_18f
        :pswitch_17f
        :pswitch_16b
        :pswitch_15b
        :pswitch_147
        :pswitch_12f
        :pswitch_11f
        :pswitch_10f
        :pswitch_ff
        :pswitch_ef
        :pswitch_db
        :pswitch_c7
        :pswitch_b7
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_6f
        :pswitch_5f
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
