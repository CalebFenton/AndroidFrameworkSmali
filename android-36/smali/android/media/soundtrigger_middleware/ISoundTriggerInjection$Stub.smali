.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerInjection.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onClientAttached:I = 0x4

.field static final blacklist TRANSACTION_onClientDetached:I = 0x5

.field static final blacklist TRANSACTION_onFrameworkDetached:I = 0x3

.field static final blacklist TRANSACTION_onParamSet:I = 0x7

.field static final blacklist TRANSACTION_onPreempted:I = 0xb

.field static final blacklist TRANSACTION_onRecognitionStarted:I = 0x8

.field static final blacklist TRANSACTION_onRecognitionStopped:I = 0x9

.field static final blacklist TRANSACTION_onRestarted:I = 0x2

.field static final blacklist TRANSACTION_onSoundModelLoaded:I = 0x6

.field static final blacklist TRANSACTION_onSoundModelUnloaded:I = 0xa

.field static final blacklist TRANSACTION_registerGlobalEventInjection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_14

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    return-object v1

    .line 176
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 180
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

    .line 184
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    .line 185
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v1

    .line 192
    :cond_16
    packed-switch p1, :pswitch_data_f2

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 294
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onPreempted()V

    .line 295
    goto/16 :goto_f0

    .line 287
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v2

    .line 288
    .local v2, "_arg0":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 290
    goto/16 :goto_f0

    .line 279
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    move-result-object v2

    .line 280
    .local v2, "_arg0":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    .line 282
    goto/16 :goto_f0

    .line 265
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .local v2, "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionConfig;

    .line 269
    .local v3, "_arg1":Landroid/media/soundtrigger/RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    move-result-object v4

    .line 271
    .local v4, "_arg2":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v5

    .line 272
    .local v5, "_arg3":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 274
    goto/16 :goto_f0

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/RecognitionConfig;
    .end local v4    # "_arg2":Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .end local v5    # "_arg3":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v4

    .line 258
    .local v4, "_arg2":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 260
    goto :goto_f0

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    :pswitch_7e
    sget-object v2, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/SoundModel;

    .line 241
    .local v2, "_arg0":Landroid/media/soundtrigger/SoundModel;
    sget-object v3, Landroid/media/soundtrigger/Phrase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/soundtrigger/Phrase;

    .line 243
    .local v3, "_arg1":[Landroid/media/soundtrigger/Phrase;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v4

    .line 245
    .restart local v4    # "_arg2":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v5

    .line 246
    .local v5, "_arg3":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 248
    goto :goto_f0

    .line 231
    .end local v2    # "_arg0":Landroid/media/soundtrigger/SoundModel;
    .end local v3    # "_arg1":[Landroid/media/soundtrigger/Phrase;
    .end local v4    # "_arg2":Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .end local v5    # "_arg3":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onClientDetached(Landroid/os/IBinder;)V

    .line 234
    goto :goto_f0

    .line 221
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v3

    .line 224
    .local v3, "_arg1":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 226
    goto :goto_f0

    .line 213
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    .line 214
    .local v2, "_arg0":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 216
    goto :goto_f0

    .line 205
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 208
    goto :goto_f0

    .line 197
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 200
    nop

    .line 302
    .end local v2    # "_arg0":Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    :goto_f0
    return v1

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_d2
        :pswitch_c3
        :pswitch_b0
        :pswitch_a5
        :pswitch_7e
        :pswitch_67
        :pswitch_43
        :pswitch_33
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
