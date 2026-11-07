.class public abstract Landroid/service/voice/ISandboxedDetectionService$Stub;
.super Landroid/os/Binder;
.source "ISandboxedDetectionService.java"

# interfaces
.implements Landroid/service/voice/ISandboxedDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/ISandboxedDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/ISandboxedDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detectFromDspSource:I = 0x1

.field static final blacklist TRANSACTION_detectFromMicrophoneSource:I = 0x2

.field static final blacklist TRANSACTION_detectWithVisualSignals:I = 0x3

.field static final blacklist TRANSACTION_ping:I = 0x8

.field static final blacklist TRANSACTION_registerRemoteStorageService:I = 0xa

.field static final blacklist TRANSACTION_stopDetection:I = 0x9

.field static final blacklist TRANSACTION_updateAudioFlinger:I = 0x5

.field static final blacklist TRANSACTION_updateContentCaptureManager:I = 0x6

.field static final blacklist TRANSACTION_updateRecognitionServiceManager:I = 0x7

.field static final blacklist TRANSACTION_updateState:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.service.voice.ISandboxedDetectionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/ISandboxedDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/ISandboxedDetectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "android.service.voice.ISandboxedDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/ISandboxedDetectionService;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/service/voice/ISandboxedDetectionService;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Landroid/service/voice/ISandboxedDetectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/ISandboxedDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_2a

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "registerRemoteStorageService"

    return-object v0

    .line 130
    :pswitch_9
    const-string/jumbo v0, "stopDetection"

    return-object v0

    .line 126
    :pswitch_d
    const-string/jumbo v0, "ping"

    return-object v0

    .line 122
    :pswitch_11
    const-string/jumbo v0, "updateRecognitionServiceManager"

    return-object v0

    .line 118
    :pswitch_15
    const-string/jumbo v0, "updateContentCaptureManager"

    return-object v0

    .line 114
    :pswitch_19
    const-string/jumbo v0, "updateAudioFlinger"

    return-object v0

    .line 110
    :pswitch_1d
    const-string/jumbo v0, "updateState"

    return-object v0

    .line 106
    :pswitch_21
    const-string v0, "detectWithVisualSignals"

    return-object v0

    .line 102
    :pswitch_24
    const-string v0, "detectFromMicrophoneSource"

    return-object v0

    .line 98
    :pswitch_27
    const-string v0, "detectFromDspSource"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 429
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/service/voice/ISandboxedDetectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const-string v6, "android.service.voice.ISandboxedDetectionService"

    .line 150
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 151
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 154
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v7

    .line 157
    :cond_16
    packed-switch p1, :pswitch_data_f8

    .line 258
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 251
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IDetectorSessionStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDetectorSessionStorageService;

    move-result-object v1

    .line 252
    .local v1, "_arg0":Landroid/service/voice/IDetectorSessionStorageService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1}, Landroid/service/voice/ISandboxedDetectionService$Stub;->registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V

    .line 254
    goto/16 :goto_f7

    .line 245
    .end local v1    # "_arg0":Landroid/service/voice/IDetectorSessionStorageService;
    :pswitch_2e
    invoke-virtual {p0}, Landroid/service/voice/ISandboxedDetectionService$Stub;->stopDetection()V

    .line 246
    goto/16 :goto_f7

    .line 238
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/ISandboxedDetectionService$IPingMe;

    move-result-object v1

    .line 239
    .local v1, "_arg0":Landroid/service/voice/ISandboxedDetectionService$IPingMe;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1}, Landroid/service/voice/ISandboxedDetectionService$Stub;->ping(Landroid/service/voice/ISandboxedDetectionService$IPingMe;)V

    .line 241
    goto/16 :goto_f7

    .line 230
    .end local v1    # "_arg0":Landroid/service/voice/ISandboxedDetectionService$IPingMe;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object v1

    .line 231
    .local v1, "_arg0":Landroid/speech/IRecognitionServiceManager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v1}, Landroid/service/voice/ISandboxedDetectionService$Stub;->updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V

    .line 233
    goto/16 :goto_f7

    .line 220
    .end local v1    # "_arg0":Landroid/speech/IRecognitionServiceManager;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 222
    .local v1, "_arg0":Landroid/view/contentcapture/IContentCaptureManager;
    sget-object v2, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentCaptureOptions;

    .line 223
    .local v2, "_arg1":Landroid/content/ContentCaptureOptions;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v1, v2}, Landroid/service/voice/ISandboxedDetectionService$Stub;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    .line 225
    goto/16 :goto_f7

    .line 212
    .end local v1    # "_arg0":Landroid/view/contentcapture/IContentCaptureManager;
    .end local v2    # "_arg1":Landroid/content/ContentCaptureOptions;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 213
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v1}, Landroid/service/voice/ISandboxedDetectionService$Stub;->updateAudioFlinger(Landroid/os/IBinder;)V

    .line 215
    goto/16 :goto_f7

    .line 200
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_77
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 202
    .local v1, "_arg0":Landroid/os/PersistableBundle;
    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    .line 204
    .local v2, "_arg1":Landroid/os/SharedMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 205
    .local v3, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/voice/ISandboxedDetectionService$Stub;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 207
    goto :goto_f7

    .line 192
    .end local v1    # "_arg0":Landroid/os/PersistableBundle;
    .end local v2    # "_arg1":Landroid/os/SharedMemory;
    .end local v3    # "_arg2":Landroid/os/IRemoteCallback;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    move-result-object v1

    .line 193
    .local v1, "_arg0":Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v1}, Landroid/service/voice/ISandboxedDetectionService$Stub;->detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V

    .line 195
    goto :goto_f7

    .line 176
    .end local v1    # "_arg0":Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
    :pswitch_a5
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 178
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .local v2, "_arg1":I
    sget-object v3, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioFormat;

    .line 182
    .local v3, "_arg2":Landroid/media/AudioFormat;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 184
    .local v4, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDspHotwordDetectionCallback;

    move-result-object v5

    .line 185
    .local v5, "_arg4":Landroid/service/voice/IDspHotwordDetectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/ISandboxedDetectionService$Stub;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 187
    goto :goto_f7

    .line 162
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/AudioFormat;
    .end local v4    # "_arg3":Landroid/os/PersistableBundle;
    .end local v5    # "_arg4":Landroid/service/voice/IDspHotwordDetectionCallback;
    :pswitch_d1
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 164
    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioFormat;

    .line 166
    .local v2, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 168
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDspHotwordDetectionCallback;

    move-result-object v5

    .line 169
    .local v5, "_arg3":Landroid/service/voice/IDspHotwordDetectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/ISandboxedDetectionService$Stub;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 171
    nop

    .line 261
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .end local v2    # "_arg1":Landroid/media/AudioFormat;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Landroid/service/voice/IDspHotwordDetectionCallback;
    :goto_f7
    return v7

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_a5
        :pswitch_96
        :pswitch_77
        :pswitch_6b
        :pswitch_53
        :pswitch_43
        :pswitch_33
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
