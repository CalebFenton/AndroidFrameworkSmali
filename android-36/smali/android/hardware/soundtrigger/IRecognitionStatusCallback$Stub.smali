.class public abstract Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IRecognitionStatusCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger/IRecognitionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.soundtrigger.IRecognitionStatusCallback"

.field static final greylist-max-o TRANSACTION_onGenericSoundTriggerDetected:I = 0x2

.field static final greylist-max-o TRANSACTION_onKeyphraseDetected:I = 0x1

.field static final blacklist TRANSACTION_onModuleDied:I = 0x6

.field static final blacklist TRANSACTION_onPauseFailed:I = 0x8

.field static final blacklist TRANSACTION_onPreempted:I = 0x5

.field static final greylist-max-o TRANSACTION_onRecognitionPaused:I = 0x3

.field static final greylist-max-o TRANSACTION_onRecognitionResumed:I = 0x4

.field static final blacklist TRANSACTION_onResumeFailed:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_1e

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "onPauseFailed"

    return-object v0

    .line 132
    :pswitch_8
    const-string v0, "onResumeFailed"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "onModuleDied"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "onPreempted"

    return-object v0

    .line 120
    :pswitch_11
    const-string v0, "onRecognitionResumed"

    return-object v0

    .line 116
    :pswitch_14
    const-string v0, "onRecognitionPaused"

    return-object v0

    .line 112
    :pswitch_17
    const-string v0, "onGenericSoundTriggerDetected"

    return-object v0

    .line 108
    :pswitch_1a
    const-string v0, "onKeyphraseDetected"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 369
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 159
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 208
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onPauseFailed(I)V

    .line 211
    goto :goto_62

    .line 200
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onResumeFailed(I)V

    .line 203
    goto :goto_62

    .line 194
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onModuleDied()V

    .line 195
    goto :goto_62

    .line 189
    :pswitch_38
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onPreempted()V

    .line 190
    goto :goto_62

    .line 184
    :pswitch_3c
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    .line 185
    goto :goto_62

    .line 179
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    .line 180
    goto :goto_62

    .line 172
    :pswitch_44
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 173
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 175
    goto :goto_62

    .line 164
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :pswitch_53
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 165
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 167
    nop

    .line 218
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_53
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
