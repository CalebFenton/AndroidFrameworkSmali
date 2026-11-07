.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerModule.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detach:I = 0xa

.field static final blacklist TRANSACTION_forceRecognitionEvent:I = 0x6

.field static final blacklist TRANSACTION_getModelParameter:I = 0x8

.field static final blacklist TRANSACTION_loadModel:I = 0x1

.field static final blacklist TRANSACTION_loadPhraseModel:I = 0x2

.field static final blacklist TRANSACTION_queryModelParameterSupport:I = 0x9

.field static final blacklist TRANSACTION_setModelParameter:I = 0x7

.field static final blacklist TRANSACTION_startRecognition:I = 0x4

.field static final blacklist TRANSACTION_stopRecognition:I = 0x5

.field static final blacklist TRANSACTION_unloadModel:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerModule"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 177
    if-nez p0, :cond_4

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerModule"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 181
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    if-eqz v1, :cond_14

    .line 182
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-object v1

    .line 184
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 188
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

    .line 192
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerModule"

    .line 193
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return v1

    .line 200
    :cond_16
    packed-switch p1, :pswitch_data_dc

    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 300
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->detach()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_da

    .line 289
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v4

    .line 294
    .local v4, "_result":Landroid/media/soundtrigger/ModelParameterRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 296
    goto/16 :goto_da

    .line 277
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/media/soundtrigger/ModelParameterRange;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->getModelParameter(II)I

    move-result v4

    .line 282
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    goto/16 :goto_da

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->setModelParameter(III)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_da

    .line 255
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->forceRecognitionEvent(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_da

    .line 246
    .end local v2    # "_arg0":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->stopRecognition(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_da

    .line 234
    .end local v2    # "_arg0":I
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionConfig;

    .line 237
    .local v3, "_arg1":Landroid/media/soundtrigger/RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    move-result-object v4

    .line 239
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    goto :goto_da

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/RecognitionConfig;
    .end local v4    # "_result":Landroid/os/IBinder;
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->unloadModel(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_da

    .line 215
    .end local v2    # "_arg0":I
    :pswitch_ae
    sget-object v2, Landroid/media/soundtrigger/PhraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/PhraseSoundModel;

    .line 216
    .local v2, "_arg0":Landroid/media/soundtrigger/PhraseSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v3

    .line 218
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_da

    .line 205
    .end local v2    # "_arg0":Landroid/media/soundtrigger/PhraseSoundModel;
    .end local v3    # "_result":I
    :pswitch_c4
    sget-object v2, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/SoundModel;

    .line 206
    .local v2, "_arg0":Landroid/media/soundtrigger/SoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v3

    .line 208
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    nop

    .line 309
    .end local v2    # "_arg0":Landroid/media/soundtrigger/SoundModel;
    .end local v3    # "_result":I
    :goto_da
    return v1

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_ae
        :pswitch_a0
        :pswitch_86
        :pswitch_78
        :pswitch_6a
        :pswitch_54
        :pswitch_3d
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
