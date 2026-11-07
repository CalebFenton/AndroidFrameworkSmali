.class public abstract Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceIndication.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callRing:I = 0x1

.field static final blacklist TRANSACTION_callStateChanged:I = 0x2

.field static final blacklist TRANSACTION_cdmaCallWaiting:I = 0x3

.field static final blacklist TRANSACTION_cdmaInfoRec:I = 0x4

.field static final blacklist TRANSACTION_cdmaOtaProvisionStatus:I = 0x5

.field static final blacklist TRANSACTION_currentEmergencyNumberList:I = 0x6

.field static final blacklist TRANSACTION_enterEmergencyCallbackMode:I = 0x7

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_indicateRingbackTone:I = 0x9

.field static final blacklist TRANSACTION_onSupplementaryServiceIndication:I = 0xa

.field static final blacklist TRANSACTION_onUssd:I = 0xb

.field static final blacklist TRANSACTION_resendIncallMute:I = 0xc

.field static final blacklist TRANSACTION_srvccStateNotify:I = 0xd

.field static final blacklist TRANSACTION_stkCallControlAlphaNotify:I = 0xe

.field static final blacklist TRANSACTION_stkCallSetup:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 214
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 215
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->markVintfStability()V

    .line 216
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 224
    if-nez p0, :cond_4

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 228
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    if-eqz v1, :cond_14

    .line 229
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    return-object v1

    .line 231
    :cond_14
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 235
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

    .line 239
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 240
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 241
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v2

    .line 247
    :cond_16
    if-ne p1, v1, :cond_23

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return v2

    .line 252
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return v2

    .line 257
    :cond_33
    packed-switch p1, :pswitch_data_132

    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 398
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 401
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallSetup(IJ)V

    .line 403
    goto/16 :goto_130

    .line 388
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 393
    goto/16 :goto_130

    .line 378
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->srvccStateNotify(II)V

    .line 383
    goto/16 :goto_130

    .line 370
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->resendIncallMute(I)V

    .line 373
    goto/16 :goto_130

    .line 358
    .end local v1    # "_arg0":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 365
    goto/16 :goto_130

    .line 348
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    .line 351
    .local v3, "_arg1":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V

    .line 353
    goto/16 :goto_130

    .line 338
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 341
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->indicateRingbackTone(IZ)V

    .line 343
    goto/16 :goto_130

    .line 330
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 333
    goto/16 :goto_130

    .line 322
    .end local v1    # "_arg0":I
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 325
    goto :goto_130

    .line 312
    .end local v1    # "_arg0":I
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/EmergencyNumber;

    .line 315
    .local v3, "_arg1":[Landroid/hardware/radio/voice/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V

    .line 317
    goto :goto_130

    .line 302
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/EmergencyNumber;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 307
    goto :goto_130

    .line 292
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CdmaInformationRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CdmaInformationRecord;

    .line 295
    .local v3, "_arg1":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V

    .line 297
    goto :goto_130

    .line 282
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CdmaCallWaiting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/CdmaCallWaiting;

    .line 285
    .local v3, "_arg1":Landroid/hardware/radio/voice/CdmaCallWaiting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V

    .line 287
    goto :goto_130

    .line 274
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/CdmaCallWaiting;
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callStateChanged(I)V

    .line 277
    goto :goto_130

    .line 262
    .end local v1    # "_arg0":I
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 266
    .local v3, "_arg1":Z
    sget-object v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    .line 267
    .local v4, "_arg2":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V

    .line 269
    nop

    .line 410
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    :goto_130
    return v2

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_119
        :pswitch_10e
        :pswitch_fb
        :pswitch_e8
        :pswitch_d9
        :pswitch_c6
        :pswitch_bb
        :pswitch_af
        :pswitch_9f
        :pswitch_8b
        :pswitch_77
        :pswitch_6b
        :pswitch_5b
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
