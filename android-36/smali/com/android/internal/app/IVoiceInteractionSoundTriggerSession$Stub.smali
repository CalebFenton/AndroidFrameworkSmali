.class public abstract Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSoundTriggerSession.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detach:I = 0x7

.field static final blacklist TRANSACTION_getDspModuleProperties:I = 0x1

.field static final blacklist TRANSACTION_getParameter:I = 0x5

.field static final blacklist TRANSACTION_queryParameter:I = 0x6

.field static final blacklist TRANSACTION_setParameter:I = 0x4

.field static final blacklist TRANSACTION_startRecognition:I = 0x2

.field static final blacklist TRANSACTION_stopRecognition:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    if-eqz v1, :cond_14

    .line 133
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object v1

    .line 135
    :cond_14
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 144
    packed-switch p0, :pswitch_data_1e

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 172
    :pswitch_5
    const-string v0, "detach"

    return-object v0

    .line 168
    :pswitch_8
    const-string/jumbo v0, "queryParameter"

    return-object v0

    .line 164
    :pswitch_c
    const-string v0, "getParameter"

    return-object v0

    .line 160
    :pswitch_f
    const-string/jumbo v0, "setParameter"

    return-object v0

    .line 156
    :pswitch_13
    const-string/jumbo v0, "stopRecognition"

    return-object v0

    .line 152
    :pswitch_17
    const-string/jumbo v0, "startRecognition"

    return-object v0

    .line 148
    :pswitch_1b
    const-string v0, "getDspModuleProperties"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 139
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 500
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 183
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 187
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    .line 188
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 189
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    return v1

    .line 195
    :cond_16
    packed-switch p1, :pswitch_data_c0

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 274
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->detach()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_be

    .line 263
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v4

    .line 268
    .local v4, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    goto/16 :goto_be

    .line 251
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getParameter(II)I

    move-result v4

    .line 256
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto :goto_be

    .line 237
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 241
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->setParameter(III)I

    move-result v5

    .line 244
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    goto :goto_be

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v3

    .line 228
    .local v3, "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v4

    .line 230
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    goto :goto_be

    .line 207
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v4    # "_result":I
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 209
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v8

    .line 213
    .local v8, "_arg2":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 215
    .local v9, "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 216
    .local v10, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v2

    .line 218
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_be

    .line 199
    .end local v2    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v9    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v10    # "_arg4":Z
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v2

    .line 200
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    nop

    .line 283
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_be
    return v1

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_87
        :pswitch_6d
        :pswitch_53
        :pswitch_3d
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
