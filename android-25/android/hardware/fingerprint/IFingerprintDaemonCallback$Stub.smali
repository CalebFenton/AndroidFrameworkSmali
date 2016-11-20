.class public abstract Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;
.super Landroid/os/Binder;
.source "IFingerprintDaemonCallback.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemonCallback"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticated:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onEnumerate:I = 0x6

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
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
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v8

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

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
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->onEnrollResult(JIII)V

    #@2a
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d
    .line 62
    return v8

    #@2e
    .line 66
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_2
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@37
    move-result-wide v2

    #@38
    .line 70
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v4

    #@3c
    .line 71
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->onAcquired(JI)V

    #@3f
    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 73
    return v8

    #@43
    .line 77
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@4c
    move-result-wide v2

    #@4d
    .line 81
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v4

    #@51
    .line 83
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v5

    #@55
    .line 84
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->onAuthenticated(JII)V

    #@58
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    .line 86
    return v8

    #@5c
    .line 90
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_4
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@65
    move-result-wide v2

    #@66
    .line 94
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v4

    #@6a
    .line 95
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->onError(JI)V

    #@6d
    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@70
    .line 97
    return v8

    #@71
    .line 101
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :sswitch_5
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@7a
    move-result-wide v2

    #@7b
    .line 105
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v4

    #@7f
    .line 107
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v5

    #@83
    .line 108
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->onRemoved(JII)V

    #@86
    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@89
    .line 110
    return v8

    #@8a
    .line 114
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_6
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@8d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@93
    move-result-wide v2

    #@94
    .line 118
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@97
    move-result-object v0

    #@98
    .line 120
    .local v0, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9b
    move-result-object v7

    #@9c
    .line 121
    .local v7, "_arg2":[I
    invoke-virtual {p0, v2, v3, v0, v7}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->onEnumerate(J[I[I)V

    #@9f
    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a2
    .line 123
    return v8

    #@a3
    .line 42
    nop

    #@a4
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
