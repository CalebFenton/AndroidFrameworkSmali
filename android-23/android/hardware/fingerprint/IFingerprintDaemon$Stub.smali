.class public abstract Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;
.super Landroid/os/Binder;
.source "IFingerprintDaemon.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_setActiveGroup:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintDaemon"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;
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
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemon"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 165
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v9

    #@7
    return v9

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 47
    const/4 v9, 0x1

    #@f
    return v9

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@13
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    move-result v5

    #@1e
    .line 56
    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v3, v5}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->authenticate(JI)I

    #@21
    move-result v8

    #@22
    .line 57
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 59
    const/4 v9, 0x1

    #@29
    return v9

    #@2a
    .line 63
    .end local v2    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_2
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@2d
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 64
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelAuthentication()I

    #@33
    move-result v8

    #@34
    .line 65
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    .line 66
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 67
    const/4 v9, 0x1

    #@3b
    return v9

    #@3c
    .line 71
    .end local v8    # "_result":I
    :sswitch_3
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@3f
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@45
    move-result-object v4

    #@46
    .line 75
    .local v4, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v5

    #@4a
    .line 77
    .restart local v5    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v7

    #@4e
    .line 78
    .local v7, "_arg2":I
    invoke-virtual {p0, v4, v5, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->enroll([BII)I

    #@51
    move-result v8

    #@52
    .line 79
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 80
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 81
    const/4 v9, 0x1

    #@59
    return v9

    #@5a
    .line 85
    .end local v4    # "_arg0":[B
    .end local v5    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_result":I
    :sswitch_4
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@5d
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 86
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelEnrollment()I

    #@63
    move-result v8

    #@64
    .line 87
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 89
    const/4 v9, 0x1

    #@6b
    return v9

    #@6c
    .line 93
    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@6f
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 94
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->preEnroll()J

    #@75
    move-result-wide v10

    #@76
    .line 95
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 96
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@7c
    .line 97
    const/4 v9, 0x1

    #@7d
    return v9

    #@7e
    .line 101
    .end local v10    # "_result":J
    :sswitch_6
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@81
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v0

    #@88
    .line 105
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v5

    #@8c
    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v0, v5}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->remove(II)I

    #@8f
    move-result v8

    #@90
    .line 107
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@96
    .line 109
    const/4 v9, 0x1

    #@97
    return v9

    #@98
    .line 113
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_7
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@9b
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    .line 114
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getAuthenticatorId()J

    #@a1
    move-result-wide v10

    #@a2
    .line 115
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 116
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@a8
    .line 117
    const/4 v9, 0x1

    #@a9
    return v9

    #@aa
    .line 121
    .end local v10    # "_result":J
    :sswitch_8
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@ad
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v0

    #@b4
    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@b7
    move-result-object v6

    #@b8
    .line 126
    .local v6, "_arg1":[B
    invoke-virtual {p0, v0, v6}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->setActiveGroup(I[B)I

    #@bb
    move-result v8

    #@bc
    .line 127
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@c2
    .line 129
    const/4 v9, 0x1

    #@c3
    return v9

    #@c4
    .line 133
    .end local v0    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v8    # "_result":I
    :sswitch_9
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@c7
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 134
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->openHal()J

    #@cd
    move-result-wide v10

    #@ce
    .line 135
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 136
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@d4
    .line 137
    const/4 v9, 0x1

    #@d5
    return v9

    #@d6
    .line 141
    .end local v10    # "_result":J
    :sswitch_a
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@d9
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 142
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->closeHal()I

    #@df
    move-result v8

    #@e0
    .line 143
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3
    .line 144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@e6
    .line 145
    const/4 v9, 0x1

    #@e7
    return v9

    #@e8
    .line 149
    .end local v8    # "_result":I
    :sswitch_b
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@eb
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f1
    move-result-object v9

    #@f2
    invoke-static {v9}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    #@f5
    move-result-object v1

    #@f6
    .line 152
    .local v1, "_arg0":Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    #@f9
    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc
    .line 154
    const/4 v9, 0x1

    #@fd
    return v9

    #@fe
    .line 158
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    :sswitch_c
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    #@101
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@104
    .line 159
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->postEnroll()I

    #@107
    move-result v8

    #@108
    .line 160
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b
    .line 161
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@10e
    .line 162
    const/4 v9, 0x1

    #@10f
    return v9

    #@110
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
