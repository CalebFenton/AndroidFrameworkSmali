.class public abstract Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceResponse.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCallResponse:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x2

.field static final blacklist TRANSACTION_cancelPendingUssdResponse:I = 0x3

.field static final blacklist TRANSACTION_conferenceResponse:I = 0x4

.field static final blacklist TRANSACTION_dialResponse:I = 0x5

.field static final blacklist TRANSACTION_emergencyDialResponse:I = 0x6

.field static final blacklist TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x7

.field static final blacklist TRANSACTION_explicitCallTransferResponse:I = 0x8

.field static final blacklist TRANSACTION_getCallForwardStatusResponse:I = 0x9

.field static final blacklist TRANSACTION_getCallWaitingResponse:I = 0xa

.field static final blacklist TRANSACTION_getClipResponse:I = 0xb

.field static final blacklist TRANSACTION_getClirResponse:I = 0xc

.field static final blacklist TRANSACTION_getCurrentCallsResponse:I = 0xd

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCauseResponse:I = 0xe

.field static final blacklist TRANSACTION_getMuteResponse:I = 0xf

.field static final blacklist TRANSACTION_getPreferredVoicePrivacyResponse:I = 0x10

.field static final blacklist TRANSACTION_getTtyModeResponse:I = 0x11

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSimResponse:I = 0x12

.field static final blacklist TRANSACTION_hangupConnectionResponse:I = 0x13

.field static final blacklist TRANSACTION_hangupForegroundResumeBackgroundResponse:I = 0x14

.field static final blacklist TRANSACTION_hangupWaitingOrBackgroundResponse:I = 0x15

.field static final blacklist TRANSACTION_isVoNrEnabledResponse:I = 0x16

.field static final blacklist TRANSACTION_rejectCallResponse:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmfResponse:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCodeResponse:I = 0x19

.field static final blacklist TRANSACTION_sendDtmfResponse:I = 0x1a

.field static final blacklist TRANSACTION_sendUssdResponse:I = 0x1b

.field static final blacklist TRANSACTION_separateConnectionResponse:I = 0x1c

.field static final blacklist TRANSACTION_setCallForwardResponse:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaitingResponse:I = 0x1e

.field static final blacklist TRANSACTION_setClirResponse:I = 0x1f

.field static final blacklist TRANSACTION_setMuteResponse:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacyResponse:I = 0x21

.field static final blacklist TRANSACTION_setTtyModeResponse:I = 0x22

.field static final blacklist TRANSACTION_setVoNrEnabledResponse:I = 0x23

.field static final blacklist TRANSACTION_startDtmfResponse:I = 0x24

.field static final blacklist TRANSACTION_stopDtmfResponse:I = 0x25

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActiveResponse:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 883
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 884
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->markVintfStability()V

    .line 885
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 893
    if-nez p0, :cond_4

    .line 894
    const/4 v0, 0x0

    return-object v0

    .line 896
    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 897
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    if-eqz v1, :cond_14

    .line 898
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    return-object v1

    .line 900
    :cond_14
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 904
    return-object p0
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

    .line 908
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 909
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 910
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 913
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    return v2

    .line 916
    :cond_16
    if-ne p1, v1, :cond_23

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    return v2

    .line 921
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    return v2

    .line 926
    :cond_33
    packed-switch p1, :pswitch_data_2cc

    .line 1258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1251
    :pswitch_3b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1252
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1254
    goto/16 :goto_2cb

    .line 1243
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1244
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1246
    goto/16 :goto_2cb

    .line 1235
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1236
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1238
    goto/16 :goto_2cb

    .line 1227
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_6b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1228
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1230
    goto/16 :goto_2cb

    .line 1219
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_7b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1220
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1222
    goto/16 :goto_2cb

    .line 1211
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_8b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1212
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1214
    goto/16 :goto_2cb

    .line 1203
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_9b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1204
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1206
    goto/16 :goto_2cb

    .line 1195
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_ab
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1196
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1198
    goto/16 :goto_2cb

    .line 1187
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_bb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1188
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1190
    goto/16 :goto_2cb

    .line 1179
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_cb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1180
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1182
    goto/16 :goto_2cb

    .line 1171
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_db
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1172
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1174
    goto/16 :goto_2cb

    .line 1163
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_eb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1164
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1166
    goto/16 :goto_2cb

    .line 1155
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_fb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1156
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1157
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1158
    goto/16 :goto_2cb

    .line 1147
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_10b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1148
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1150
    goto/16 :goto_2cb

    .line 1139
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_11b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1140
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1142
    goto/16 :goto_2cb

    .line 1131
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1132
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1134
    goto/16 :goto_2cb

    .line 1121
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_13b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1123
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1124
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1126
    goto/16 :goto_2cb

    .line 1113
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_14f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1114
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1116
    goto/16 :goto_2cb

    .line 1105
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_15f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1106
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1108
    goto/16 :goto_2cb

    .line 1097
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_16f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1098
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1100
    goto/16 :goto_2cb

    .line 1089
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_17f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1090
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1091
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1092
    goto/16 :goto_2cb

    .line 1079
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_18f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1081
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1082
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1084
    goto/16 :goto_2cb

    .line 1069
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_1a3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1071
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1072
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1074
    goto/16 :goto_2cb

    .line 1059
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_1b7
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1061
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1062
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1064
    goto/16 :goto_2cb

    .line 1049
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_1cb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1051
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;

    .line 1052
    .local v3, "_arg1":Landroid/hardware/radio/voice/LastCallFailCauseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V

    .line 1054
    goto/16 :goto_2cb

    .line 1039
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/LastCallFailCauseInfo;
    :pswitch_1e3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1041
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/voice/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/Call;

    .line 1042
    .local v3, "_arg1":[Landroid/hardware/radio/voice/Call;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V

    .line 1044
    goto/16 :goto_2cb

    .line 1027
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/Call;
    :pswitch_1fb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1029
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1031
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1032
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    .line 1034
    goto/16 :goto_2cb

    .line 1017
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_213
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1019
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1020
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1022
    goto/16 :goto_2cb

    .line 1005
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_227
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1007
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1009
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1010
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    .line 1012
    goto/16 :goto_2cb

    .line 995
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_23f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 997
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CallForwardInfo;

    .line 998
    .local v3, "_arg1":[Landroid/hardware/radio/voice/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V

    .line 1000
    goto/16 :goto_2cb

    .line 987
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/CallForwardInfo;
    :pswitch_257
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 988
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 990
    goto :goto_2cb

    .line 979
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_266
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 980
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 982
    goto :goto_2cb

    .line 971
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_275
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 972
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 974
    goto :goto_2cb

    .line 963
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_284
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 964
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 966
    goto :goto_2cb

    .line 955
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_293
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 956
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 958
    goto :goto_2cb

    .line 947
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2a2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 948
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 950
    goto :goto_2cb

    .line 939
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 940
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acknowledgeRequest(I)V

    .line 942
    goto :goto_2cb

    .line 931
    .end local v1    # "_arg0":I
    :pswitch_2bc
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 932
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 934
    nop

    .line 1261
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :goto_2cb
    return v2

    :pswitch_data_2cc
    .packed-switch 0x1
        :pswitch_2bc
        :pswitch_2b1
        :pswitch_2a2
        :pswitch_293
        :pswitch_284
        :pswitch_275
        :pswitch_266
        :pswitch_257
        :pswitch_23f
        :pswitch_227
        :pswitch_213
        :pswitch_1fb
        :pswitch_1e3
        :pswitch_1cb
        :pswitch_1b7
        :pswitch_1a3
        :pswitch_18f
        :pswitch_17f
        :pswitch_16f
        :pswitch_15f
        :pswitch_14f
        :pswitch_13b
        :pswitch_12b
        :pswitch_11b
        :pswitch_10b
        :pswitch_fb
        :pswitch_eb
        :pswitch_db
        :pswitch_cb
        :pswitch_bb
        :pswitch_ab
        :pswitch_9b
        :pswitch_8b
        :pswitch_7b
        :pswitch_6b
        :pswitch_5b
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
