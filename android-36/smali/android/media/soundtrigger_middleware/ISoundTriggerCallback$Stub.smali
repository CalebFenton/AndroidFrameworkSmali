.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerCallback.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onModelUnloaded:I = 0x4

.field static final blacklist TRANSACTION_onModuleDied:I = 0x5

.field static final blacklist TRANSACTION_onPhraseRecognition:I = 0x2

.field static final blacklist TRANSACTION_onRecognition:I = 0x1

.field static final blacklist TRANSACTION_onResourcesAvailable:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
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

    .line 99
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_60

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModuleDied()V

    .line 149
    goto :goto_5f

    .line 141
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModelUnloaded(I)V

    .line 144
    goto :goto_5f

    .line 135
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onResourcesAvailable()V

    .line 136
    goto :goto_5f

    .line 124
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    .line 128
    .local v3, "_arg1":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V

    .line 131
    goto :goto_5f

    .line 112
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .end local v4    # "_arg2":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    .line 116
    .local v3, "_arg1":Landroid/media/soundtrigger_middleware/RecognitionEventSys;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 117
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V

    .line 119
    nop

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger_middleware/RecognitionEventSys;
    .end local v4    # "_arg2":I
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_48
        :pswitch_31
        :pswitch_2d
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
