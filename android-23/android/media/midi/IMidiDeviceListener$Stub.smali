.class public abstract Landroid/media/midi/IMidiDeviceListener$Stub;
.super Landroid/os/Binder;
.source "IMidiDeviceListener.java"

# interfaces
.implements Landroid/media/midi/IMidiDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiDeviceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiDeviceListener"

.field static final TRANSACTION_onDeviceAdded:I = 0x1

.field static final TRANSACTION_onDeviceRemoved:I = 0x2

.field static final TRANSACTION_onDeviceStatusChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.media.midi.IMidiDeviceListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.media.midi.IMidiDeviceListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/midi/IMidiDeviceListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/media/midi/IMidiDeviceListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/midi/IMidiDeviceListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/midi/IMidiDeviceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.media.midi.IMidiDeviceListener"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v3

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.media.midi.IMidiDeviceListener"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 51
    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    #@24
    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    #@27
    .line 57
    return v3

    #@28
    .line 54
    :cond_0
    const/4 v0, 0x0

    #@29
    .local v0, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    #@2a
    .line 61
    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_2
    const-string/jumbo v2, "android.media.midi.IMidiDeviceListener"

    #@2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 64
    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    #@3e
    .line 69
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    #@41
    .line 70
    return v3

    #@42
    .line 67
    :cond_1
    const/4 v0, 0x0

    #@43
    .restart local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_1

    #@44
    .line 74
    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_3
    const-string/jumbo v2, "android.media.midi.IMidiDeviceListener"

    #@47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_2

    #@50
    .line 77
    sget-object v2, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@55
    move-result-object v1

    #@56
    check-cast v1, Landroid/media/midi/MidiDeviceStatus;

    #@58
    .line 82
    :goto_2
    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiDeviceListener$Stub;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    #@5b
    .line 83
    return v3

    #@5c
    .line 80
    :cond_2
    const/4 v1, 0x0

    #@5d
    .local v1, "_arg0":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_2

    #@5e
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
