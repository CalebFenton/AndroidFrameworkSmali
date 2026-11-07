.class public abstract Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_modelUnloaded:I = 0x1

.field static final blacklist TRANSACTION_phraseRecognitionCallback:I = 0x2

.field static final blacklist TRANSACTION_recognitionCallback:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
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

    .line 76
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v2

    .line 84
    :cond_16
    if-ne p1, v1, :cond_23

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return v2

    .line 89
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v2

    .line 94
    :cond_33
    packed-switch p1, :pswitch_data_76

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .local v1, "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionEvent;

    .line 122
    .local v3, "_arg1":Landroid/media/soundtrigger/RecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v1, v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    goto :goto_75

    .line 108
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/RecognitionEvent;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/PhraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 111
    .local v3, "_arg1":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v1, v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_75

    .line 99
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->modelUnloaded(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    nop

    .line 132
    .end local v1    # "_arg0":I
    :goto_75
    return v2

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_67
        :pswitch_51
        :pswitch_3b
    .end packed-switch
.end method
