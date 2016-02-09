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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.soundtrigger.IRecognitionStatusCallback"

.field static final TRANSACTION_onDetected:I = 0x1

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onRecognitionPaused:I = 0x3

.field static final TRANSACTION_onRecognitionResumed:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v2, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v3

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v2, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 53
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@24
    .line 58
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    #@27
    .line 59
    return v3

    #@28
    .line 56
    :cond_0
    const/4 v1, 0x0

    #@29
    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    goto :goto_0

    #@2a
    .line 63
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    :sswitch_2
    const-string/jumbo v2, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onError(I)V

    #@37
    .line 67
    return v3

    #@38
    .line 71
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v2, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 72
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    #@41
    .line 73
    return v3

    #@42
    .line 77
    :sswitch_4
    const-string/jumbo v2, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    #@45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 78
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    #@4b
    .line 79
    return v3

    #@4c
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
