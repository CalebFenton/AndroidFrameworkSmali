.class public abstract Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IHotwordRecognitionStatusCallback.java"

# interfaces
.implements Lcom/android/internal/app/IHotwordRecognitionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGenericSoundTriggerDetected:I = 0x3

.field static final blacklist TRANSACTION_onHotwordDetectionServiceFailure:I = 0x5

.field static final blacklist TRANSACTION_onKeyphraseDetected:I = 0x1

.field static final blacklist TRANSACTION_onKeyphraseDetectedFromExternalSource:I = 0x2

.field static final blacklist TRANSACTION_onOpenFile:I = 0xd

.field static final blacklist TRANSACTION_onProcessRestarted:I = 0xc

.field static final blacklist TRANSACTION_onRecognitionPaused:I = 0x9

.field static final blacklist TRANSACTION_onRecognitionResumed:I = 0xa

.field static final blacklist TRANSACTION_onRejected:I = 0x4

.field static final blacklist TRANSACTION_onSoundTriggerFailure:I = 0x7

.field static final blacklist TRANSACTION_onStatusReported:I = 0xb

.field static final blacklist TRANSACTION_onUnknownFailure:I = 0x8

.field static final blacklist TRANSACTION_onVisualQueryDetectionServiceFailure:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v1, :cond_14

    .line 143
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object v1

    .line 145
    :cond_14
    new-instance v1, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 154
    packed-switch p0, :pswitch_data_2c

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 206
    :pswitch_5
    const-string v0, "onOpenFile"

    return-object v0

    .line 202
    :pswitch_8
    const-string v0, "onProcessRestarted"

    return-object v0

    .line 198
    :pswitch_b
    const-string v0, "onStatusReported"

    return-object v0

    .line 194
    :pswitch_e
    const-string v0, "onRecognitionResumed"

    return-object v0

    .line 190
    :pswitch_11
    const-string v0, "onRecognitionPaused"

    return-object v0

    .line 186
    :pswitch_14
    const-string v0, "onUnknownFailure"

    return-object v0

    .line 182
    :pswitch_17
    const-string v0, "onSoundTriggerFailure"

    return-object v0

    .line 178
    :pswitch_1a
    const-string v0, "onVisualQueryDetectionServiceFailure"

    return-object v0

    .line 174
    :pswitch_1d
    const-string v0, "onHotwordDetectionServiceFailure"

    return-object v0

    .line 170
    :pswitch_20
    const-string v0, "onRejected"

    return-object v0

    .line 166
    :pswitch_23
    const-string v0, "onGenericSoundTriggerDetected"

    return-object v0

    .line 162
    :pswitch_26
    const-string v0, "onKeyphraseDetectedFromExternalSource"

    return-object v0

    .line 158
    :pswitch_29
    const-string v0, "onKeyphraseDetected"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
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

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 587
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 217
    invoke-static {p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    .line 222
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v1

    .line 229
    :cond_16
    packed-switch p1, :pswitch_data_cc

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 323
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 326
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 328
    goto/16 :goto_ca

    .line 317
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onProcessRestarted()V

    .line 318
    goto/16 :goto_ca

    .line 310
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onStatusReported(I)V

    .line 313
    goto/16 :goto_ca

    .line 304
    .end local v2    # "_arg0":I
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    .line 305
    goto/16 :goto_ca

    .line 299
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    .line 300
    goto/16 :goto_ca

    .line 292
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onUnknownFailure(Ljava/lang/String;)V

    .line 295
    goto/16 :goto_ca

    .line 284
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_59
    sget-object v2, Landroid/service/voice/SoundTriggerFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/SoundTriggerFailure;

    .line 285
    .local v2, "_arg0":Landroid/service/voice/SoundTriggerFailure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 287
    goto :goto_ca

    .line 276
    .end local v2    # "_arg0":Landroid/service/voice/SoundTriggerFailure;
    :pswitch_68
    sget-object v2, Landroid/service/voice/VisualQueryDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 277
    .local v2, "_arg0":Landroid/service/voice/VisualQueryDetectionServiceFailure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 279
    goto :goto_ca

    .line 268
    .end local v2    # "_arg0":Landroid/service/voice/VisualQueryDetectionServiceFailure;
    :pswitch_77
    sget-object v2, Landroid/service/voice/HotwordDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 269
    .local v2, "_arg0":Landroid/service/voice/HotwordDetectionServiceFailure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 271
    goto :goto_ca

    .line 260
    .end local v2    # "_arg0":Landroid/service/voice/HotwordDetectionServiceFailure;
    :pswitch_86
    sget-object v2, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordRejectedResult;

    .line 261
    .local v2, "_arg0":Landroid/service/voice/HotwordRejectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 263
    goto :goto_ca

    .line 252
    .end local v2    # "_arg0":Landroid/service/voice/HotwordRejectedResult;
    :pswitch_95
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 253
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 255
    goto :goto_ca

    .line 244
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :pswitch_a4
    sget-object v2, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    .line 245
    .local v2, "_arg0":Landroid/service/voice/HotwordDetectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V

    .line 247
    goto :goto_ca

    .line 234
    .end local v2    # "_arg0":Landroid/service/voice/HotwordDetectedResult;
    :pswitch_b3
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 236
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    sget-object v3, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/voice/HotwordDetectedResult;

    .line 237
    .local v3, "_arg1":Landroid/service/voice/HotwordDetectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 239
    nop

    .line 335
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .end local v3    # "_arg1":Landroid/service/voice/HotwordDetectedResult;
    :goto_ca
    return v1

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a4
        :pswitch_95
        :pswitch_86
        :pswitch_77
        :pswitch_68
        :pswitch_59
        :pswitch_4d
        :pswitch_48
        :pswitch_43
        :pswitch_37
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
