.class public Lcom/android/internal/telephony/RadioVoiceProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioVoiceProxy.java"


# instance fields
.field private volatile blacklist mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;


# direct methods
.method public static synthetic blacklist $r8$lambda$LurMMRMtZZOf2zKH8cjOampTsMw(I)[Ljava/lang/String;
    .registers 1

    .line 164
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->acceptCall(I)V

    return-void

    .line 95
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->acceptCall(I)V

    return-void
.end method

.method public blacklist cancelPendingUssd(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->cancelPendingUssd(I)V

    return-void

    .line 109
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->cancelPendingUssd(I)V

    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-void
.end method

.method public blacklist conference(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->conference(I)V

    return-void

    .line 123
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->conference(I)V

    return-void
.end method

.method public blacklist dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 138
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->dial(ILandroid/hardware/radio/voice/Dial;)V

    return-void

    .line 141
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    return-void
.end method

.method public blacklist emergencyDial(ILjava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    return-void

    .line 159
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-eqz v4, :cond_57

    .line 160
    iget-object v8, v0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 161
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v10

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v11

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/RadioVoiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioVoiceProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_3c
    move-object v12, v0

    goto :goto_41

    .line 165
    :cond_3e
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_3c

    .line 166
    :goto_41
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v13

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    if-ne v0, v6, :cond_51

    move v15, v5

    :goto_4c
    move/from16 v9, p1

    move/from16 v14, p4

    goto :goto_53

    :cond_51
    move v15, v7

    goto :goto_4c

    .line 160
    :goto_53
    invoke-interface/range {v8 .. v15}, Landroid/hardware/radio/voice/IRadioVoice;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    return-void

    .line 170
    :cond_57
    iget-object v4, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v8, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 171
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    move-object v14, v0

    check-cast v14, Landroid/hardware/radio/V1_6/IRadio;

    .line 172
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v16

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v17

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7d
    move-object/from16 v18, v0

    goto :goto_86

    .line 176
    :cond_80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7d

    .line 177
    :goto_86
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v19

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    if-ne v0, v6, :cond_97

    move/from16 v21, v5

    :goto_92
    move/from16 v15, p1

    move/from16 v20, p4

    goto :goto_9a

    :cond_97
    move/from16 v21, v7

    goto :goto_92

    .line 171
    :goto_9a
    invoke-interface/range {v14 .. v21}, Landroid/hardware/radio/V1_6/IRadio;->emergencyDial_1_6(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    return-void

    .line 182
    :cond_9e
    iget-object v14, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 183
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v16

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v17

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_b7
    move-object/from16 v18, v0

    goto :goto_c0

    .line 187
    :cond_ba
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b7

    .line 188
    :goto_c0
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v19

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    if-ne v0, v6, :cond_d1

    move/from16 v21, v5

    :goto_cc
    move/from16 v15, p1

    move/from16 v20, p4

    goto :goto_d4

    :cond_d1
    move/from16 v21, v7

    goto :goto_cc

    .line 182
    :goto_d4
    invoke-interface/range {v14 .. v21}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 202
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->exitEmergencyCallbackMode(I)V

    return-void

    .line 205
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public blacklist explicitCallTransfer(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 216
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->explicitCallTransfer(I)V

    return-void

    .line 219
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->explicitCallTransfer(I)V

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/voice/IRadioVoice;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-object p0
.end method

.method public blacklist getCallForwardStatus(IIILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 234
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 235
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 237
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 238
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 239
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 240
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 241
    iput v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    return-void

    .line 244
    :cond_2b
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 246
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 247
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 248
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 249
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 250
    iput v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    return-void
.end method

.method public blacklist getCallWaiting(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 263
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 264
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->getCallWaiting(II)V

    return-void

    .line 266
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->getCallWaiting(II)V

    return-void
.end method

.method public blacklist getClip(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 277
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClip(I)V

    return-void

    .line 280
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getClip(I)V

    return-void
.end method

.method public blacklist getClir(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 291
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClir(I)V

    return-void

    .line 294
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getClir(I)V

    return-void
.end method

.method public blacklist getCurrentCalls(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getCurrentCalls(I)V

    return-void

    .line 307
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 308
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getCurrentCalls_1_6(I)V

    return-void

    .line 310
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getCurrentCalls(I)V

    return-void
.end method

.method public blacklist getLastCallFailCause(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 321
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getLastCallFailCause(I)V

    return-void

    .line 324
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getLastCallFailCause(I)V

    return-void
.end method

.method public blacklist getMute(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 335
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 336
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getMute(I)V

    return-void

    .line 338
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getMute(I)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 349
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 350
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getPreferredVoicePrivacy(I)V

    return-void

    .line 352
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getPreferredVoicePrivacy(I)V

    return-void
.end method

.method public blacklist getTtyMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 363
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 364
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getTtyMode(I)V

    return-void

    .line 366
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getTTYMode(I)V

    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSim(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 379
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 380
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->handleStkCallSetupRequestFromSim(IZ)V

    return-void

    .line 382
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->handleStkCallSetupRequestFromSim(IZ)V

    return-void
.end method

.method public blacklist hangup(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 394
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 395
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->hangup(II)V

    return-void

    .line 397
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->hangup(II)V

    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 408
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 409
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->hangupForegroundResumeBackground(I)V

    return-void

    .line 411
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->hangupForegroundResumeBackground(I)V

    return-void
.end method

.method public blacklist hangupWaitingOrBackground(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 422
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->hangupWaitingOrBackground(I)V

    return-void

    .line 425
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->hangupWaitingOrBackground(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVoNrEnabled(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 436
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->isVoNrEnabled(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist rejectCall(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 449
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->rejectCall(I)V

    return-void

    .line 451
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->rejectCall(I)V

    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 462
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 463
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0}, Landroid/hardware/radio/voice/IRadioVoice;->responseAcknowledgement()V

    return-void

    .line 465
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist sendBurstDtmf(ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 479
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/voice/IRadioVoice;->sendBurstDtmf(ILjava/lang/String;II)V

    return-void

    .line 482
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->sendBurstDtmf(ILjava/lang/String;II)V

    return-void
.end method

.method public blacklist sendCdmaFeatureCode(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist sendDtmf(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 510
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 511
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendDtmf(ILjava/lang/String;)V

    return-void

    .line 513
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendUssd(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 525
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 526
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendUssd(ILjava/lang/String;)V

    return-void

    .line 528
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendUssd(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist separateConnection(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 540
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 541
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->separateConnection(II)V

    return-void

    .line 543
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->separateConnection(II)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 45
    const-string v0, "RadioVoiceProxy"

    .line 47
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/voice/IRadioVoice;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setCallForward(IIIILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 560
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 561
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 563
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    .line 564
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 565
    iput p4, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 566
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 567
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 568
    iput p6, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    return-void

    .line 571
    :cond_2c
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 573
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 574
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 575
    iput p4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 576
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 577
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 578
    iput p6, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 579
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    return-void
.end method

.method public blacklist setCallWaiting(IZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 593
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 594
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/voice/IRadioVoice;->setCallWaiting(IZI)V

    return-void

    .line 596
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->setCallWaiting(IZI)V

    return-void
.end method

.method public blacklist setClir(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 608
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 609
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setClir(II)V

    return-void

    .line 611
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setClir(II)V

    return-void
.end method

.method public blacklist setMute(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 623
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 624
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setMute(IZ)V

    return-void

    .line 626
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setMute(IZ)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 638
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 639
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setPreferredVoicePrivacy(IZ)V

    return-void

    .line 641
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setPreferredVoicePrivacy(IZ)V

    return-void
.end method

.method public blacklist setTtyMode(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 653
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setTtyMode(II)V

    return-void

    .line 656
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setTTYMode(II)V

    return-void
.end method

.method public blacklist setVoNrEnabled(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 668
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 669
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setVoNrEnabled(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 681
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 682
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->startDtmf(ILjava/lang/String;)V

    return-void

    .line 684
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->startDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist stopDtmf(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 695
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 696
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->stopDtmf(I)V

    return-void

    .line 698
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->stopDtmf(I)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 709
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 710
    iget-object p0, p0, Lcom/android/internal/telephony/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->switchWaitingOrHoldingAndActive(I)V

    return-void

    .line 712
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->switchWaitingOrHoldingAndActive(I)V

    return-void
.end method
