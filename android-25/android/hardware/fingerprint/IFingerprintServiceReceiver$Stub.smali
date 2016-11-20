.class public abstract Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticationFailed:I = 0x4

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onRemoved:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v7

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@19
    move-result-wide v2

    #@1a
    .line 55
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    .line 57
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v5

    #@22
    .line 59
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v6

    #@26
    .local v6, "_arg3":I
    move-object v1, p0

    #@27
    .line 60
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onEnrollResult(JIII)V

    #@2a
    .line 61
    return v7

    #@2b
    .line 65
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_2
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@34
    move-result-wide v2

    #@35
    .line 69
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v4

    #@39
    .line 70
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAcquired(JI)V

    #@3c
    .line 71
    return v7

    #@3d
    .line 75
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v2

    #@47
    .line 79
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_0

    #@4d
    .line 80
    sget-object v1, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4f
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    #@55
    .line 86
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v5

    #@59
    .line 87
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v3, v0, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    #@5c
    .line 88
    return v7

    #@5d
    .line 83
    .end local v5    # "_arg2":I
    :cond_0
    const/4 v0, 0x0

    #@5e
    .local v0, "_arg1":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_0

    #@5f
    .line 92
    .end local v0    # "_arg1":Landroid/hardware/fingerprint/Fingerprint;
    .end local v2    # "_arg0":J
    :sswitch_4
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@68
    move-result-wide v2

    #@69
    .line 95
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationFailed(J)V

    #@6c
    .line 96
    return v7

    #@6d
    .line 100
    .end local v2    # "_arg0":J
    :sswitch_5
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@76
    move-result-wide v2

    #@77
    .line 104
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v4

    #@7b
    .line 105
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onError(JI)V

    #@7e
    .line 106
    return v7

    #@7f
    .line 110
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :sswitch_6
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@82
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@88
    move-result-wide v2

    #@89
    .line 114
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v4

    #@8d
    .line 116
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v5

    #@91
    .line 117
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onRemoved(JII)V

    #@94
    .line 118
    return v7

    #@95
    .line 42
    nop

    #@96
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
