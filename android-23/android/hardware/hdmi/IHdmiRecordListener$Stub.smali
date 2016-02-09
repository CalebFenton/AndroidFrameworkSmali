.class public abstract Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiRecordListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiRecordListener"

.field static final TRANSACTION_getOneTouchRecordSource:I = 0x1

.field static final TRANSACTION_onClearTimerRecordingResult:I = 0x4

.field static final TRANSACTION_onOneTouchRecordResult:I = 0x2

.field static final TRANSACTION_onTimerRecordingResult:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.hardware.hdmi.IHdmiRecordListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;
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
    const-string/jumbo v1, "android.hardware.hdmi.IHdmiRecordListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiRecordListener"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v4

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiRecordListener"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->getOneTouchRecordSource(I)[B

    #@1d
    move-result-object v2

    #@1e
    .line 54
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@24
    .line 56
    return v4

    #@25
    .line 60
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[B
    :sswitch_2
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiRecordListener"

    #@28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onOneTouchRecordResult(II)V

    #@36
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 67
    return v4

    #@3a
    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiRecordListener"

    #@3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v0

    #@44
    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v1

    #@48
    .line 76
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onTimerRecordingResult(II)V

    #@4b
    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e
    .line 78
    return v4

    #@4f
    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiRecordListener"

    #@52
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55
    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v0

    #@59
    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v1

    #@5d
    .line 87
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onClearTimerRecordingResult(II)V

    #@60
    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 89
    return v4

    #@64
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
