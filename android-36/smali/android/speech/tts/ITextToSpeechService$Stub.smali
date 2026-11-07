.class public abstract Landroid/speech/tts/ITextToSpeechService$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechService"

.field static final greylist-max-o TRANSACTION_getClientDefaultLanguage:I = 0x8

.field static final greylist-max-o TRANSACTION_getDefaultVoiceNameFor:I = 0xf

.field static final greylist-max-o TRANSACTION_getFeaturesForLanguage:I = 0xa

.field static final greylist-max-o TRANSACTION_getLanguage:I = 0x7

.field static final greylist-max-o TRANSACTION_getVoices:I = 0xd

.field static final greylist-max-o TRANSACTION_isLanguageAvailable:I = 0x9

.field static final greylist-max-o TRANSACTION_isSpeaking:I = 0x5

.field static final greylist-max-o TRANSACTION_loadLanguage:I = 0xb

.field static final greylist-max-o TRANSACTION_loadVoice:I = 0xe

.field static final greylist-max-o TRANSACTION_playAudio:I = 0x3

.field static final greylist-max-o TRANSACTION_playSilence:I = 0x4

.field static final greylist-max-o TRANSACTION_setCallback:I = 0xc

.field static final greylist-max-o TRANSACTION_speak:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x6

.field static final greylist-max-o TRANSACTION_synthesizeToFileDescriptor:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 232
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 240
    if-nez p0, :cond_4

    .line 241
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_4
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 244
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechService;

    if-eqz v1, :cond_14

    .line 245
    move-object v1, v0

    check-cast v1, Landroid/speech/tts/ITextToSpeechService;

    return-object v1

    .line 247
    :cond_14
    new-instance v1, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 256
    packed-switch p0, :pswitch_data_3e

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 316
    :pswitch_5
    const-string v0, "getDefaultVoiceNameFor"

    return-object v0

    .line 312
    :pswitch_8
    const-string/jumbo v0, "loadVoice"

    return-object v0

    .line 308
    :pswitch_c
    const-string/jumbo v0, "getVoices"

    return-object v0

    .line 304
    :pswitch_10
    const-string/jumbo v0, "setCallback"

    return-object v0

    .line 300
    :pswitch_14
    const-string/jumbo v0, "loadLanguage"

    return-object v0

    .line 296
    :pswitch_18
    const-string v0, "getFeaturesForLanguage"

    return-object v0

    .line 292
    :pswitch_1b
    const-string/jumbo v0, "isLanguageAvailable"

    return-object v0

    .line 288
    :pswitch_1f
    const-string v0, "getClientDefaultLanguage"

    return-object v0

    .line 284
    :pswitch_22
    const-string v0, "getLanguage"

    return-object v0

    .line 280
    :pswitch_25
    const-string/jumbo v0, "stop"

    return-object v0

    .line 276
    :pswitch_29
    const-string/jumbo v0, "isSpeaking"

    return-object v0

    .line 272
    :pswitch_2d
    const-string/jumbo v0, "playSilence"

    return-object v0

    .line 268
    :pswitch_31
    const-string/jumbo v0, "playAudio"

    return-object v0

    .line 264
    :pswitch_35
    const-string/jumbo v0, "synthesizeToFileDescriptor"

    return-object v0

    .line 260
    :pswitch_39
    const-string/jumbo v0, "speak"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 251
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1015
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 327
    invoke-static {p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 331
    const-string v6, "android.speech.tts.ITextToSpeechService"

    .line 332
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 333
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 336
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    return v7

    .line 339
    :cond_16
    packed-switch p1, :pswitch_data_1ac

    .line 532
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 519
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    goto/16 :goto_1ab

    .line 507
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 509
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v3

    .line 512
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    goto/16 :goto_1ab

    .line 499
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_50
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getVoices()Ljava/util/List;

    move-result-object v1

    .line 500
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, v1, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 502
    goto/16 :goto_1ab

    .line 489
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 491
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v2

    .line 492
    .local v2, "_arg1":Landroid/speech/tts/ITextToSpeechCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto/16 :goto_1ab

    .line 473
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/speech/tts/ITextToSpeechCallback;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 475
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 482
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    goto/16 :goto_1ab

    .line 459
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 468
    goto/16 :goto_1ab

    .line 445
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 452
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    goto/16 :goto_1ab

    .line 437
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_c8
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 440
    goto/16 :goto_1ab

    .line 430
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_d4
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 431
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 433
    goto/16 :goto_1ab

    .line 421
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 422
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v1}, Landroid/speech/tts/ITextToSpeechService$Stub;->stop(Landroid/os/IBinder;)I

    move-result v2

    .line 424
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_1ab

    .line 413
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_f3
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeaking()Z

    move-result v1

    .line 414
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    goto/16 :goto_1ab

    .line 398
    .end local v1    # "_result":Z
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 400
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 402
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 404
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result v8

    .line 407
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    goto/16 :goto_1ab

    .line 380
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v8    # "_result":I
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 382
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    .line 384
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 386
    .local v3, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 388
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v8

    .line 391
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    goto :goto_1ab

    .line 362
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v8    # "_result":I
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 364
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 366
    .local v2, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 368
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 370
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 371
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v8

    .line 373
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    goto :goto_1ab

    .line 344
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v8    # "_result":I
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 346
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 348
    .restart local v2    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .local v3, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 352
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v8

    .line 355
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    nop

    .line 535
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v8    # "_result":I
    :goto_1ab
    return v7

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_17e
        :pswitch_14c
        :pswitch_11f
        :pswitch_ff
        :pswitch_f3
        :pswitch_e0
        :pswitch_d4
        :pswitch_c8
        :pswitch_ad
        :pswitch_92
        :pswitch_73
        :pswitch_5c
        :pswitch_50
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
