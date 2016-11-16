.class public abstract Landroid/hardware/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintService"

.field static final TRANSACTION_addLockoutResetCallback:I = 0xe

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAuthenticatorId:I = 0xc

.field static final TRANSACTION_getEnrolledFingerprints:I = 0x7

.field static final TRANSACTION_hasEnrolledFingerprints:I = 0xb

.field static final TRANSACTION_isHardwareDetected:I = 0x8

.field static final TRANSACTION_postEnroll:I = 0xa

.field static final TRANSACTION_preEnroll:I = 0x9

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_rename:I = 0x6

.field static final TRANSACTION_resetTimeout:I = 0xd

.field static final TRANSACTION_setActiveUser:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;
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
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 34
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
    .line 231
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v5

    #@1e
    .line 55
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@21
    move-result-wide v6

    #@22
    .line 57
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v8

    #@26
    .line 59
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@2d
    move-result-object v9

    #@2e
    .line 61
    .local v9, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v10

    #@32
    .line 63
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v11

    #@36
    .local v11, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    #@38
    .line 64
    invoke-virtual/range {v4 .. v11}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    #@3b
    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e
    .line 66
    const/4 v4, 0x1

    #@3f
    return v4

    #@40
    .line 70
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v5

    #@4c
    .line 74
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v27

    #@50
    .line 75
    .local v27, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v27

    #@54
    invoke-virtual {v0, v5, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    #@57
    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a
    .line 77
    const/4 v4, 0x1

    #@5b
    return v4

    #@5c
    .line 81
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@5f
    move-object/from16 v0, p2

    #@61
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@67
    move-result-object v5

    #@68
    .line 85
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@6b
    move-result-object v14

    #@6c
    .line 87
    .local v14, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v8

    #@70
    .line 89
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73
    move-result-object v4

    #@74
    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@77
    move-result-object v9

    #@78
    .line 91
    .restart local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v10

    #@7c
    .line 93
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v11

    #@80
    .restart local v11    # "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    #@82
    move-object v13, v5

    #@83
    move v15, v8

    #@84
    move-object/from16 v16, v9

    #@86
    move/from16 v17, v10

    #@88
    move-object/from16 v18, v11

    #@8a
    .line 94
    invoke-virtual/range {v12 .. v18}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    #@8d
    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 96
    const/4 v4, 0x1

    #@91
    return v4

    #@92
    .line 100
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":Ljava/lang/String;
    .end local v14    # "_arg1":[B
    :sswitch_4
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9d
    move-result-object v5

    #@9e
    .line 103
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@a0
    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    #@a3
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    .line 105
    const/4 v4, 0x1

    #@a7
    return v4

    #@a8
    .line 109
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@ab
    move-object/from16 v0, p2

    #@ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b3
    move-result-object v5

    #@b4
    .line 113
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v17

    #@b8
    .line 115
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v8

    #@bc
    .line 117
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v19

    #@c0
    .line 119
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c3
    move-result-object v4

    #@c4
    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c7
    move-result-object v20

    #@c8
    .local v20, "_arg4":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    move-object/from16 v15, p0

    #@ca
    move-object/from16 v16, v5

    #@cc
    move/from16 v18, v8

    #@ce
    .line 120
    invoke-virtual/range {v15 .. v20}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    #@d1
    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    .line 122
    const/4 v4, 0x1

    #@d5
    return v4

    #@d6
    .line 126
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v17    # "_arg1":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@d9
    move-object/from16 v0, p2

    #@db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v21

    #@e2
    .line 130
    .local v21, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v17

    #@e6
    .line 132
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e9
    move-result-object v28

    #@ea
    .line 133
    .local v28, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, v21

    #@ee
    move/from16 v2, v17

    #@f0
    move-object/from16 v3, v28

    #@f2
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    #@f5
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 135
    const/4 v4, 0x1

    #@f9
    return v4

    #@fa
    .line 139
    .end local v17    # "_arg1":I
    .end local v21    # "_arg0":I
    .end local v28    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v21

    #@106
    .line 143
    .restart local v21    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v27

    #@10a
    .line 144
    .restart local v27    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10c
    move/from16 v1, v21

    #@10e
    move-object/from16 v2, v27

    #@110
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;

    #@113
    move-result-object v32

    #@114
    .line 145
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 146
    move-object/from16 v0, p3

    #@119
    move-object/from16 v1, v32

    #@11b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@11e
    .line 147
    const/4 v4, 0x1

    #@11f
    return v4

    #@120
    .line 151
    .end local v21    # "_arg0":I
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :sswitch_8
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@123
    move-object/from16 v0, p2

    #@125
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@128
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@12b
    move-result-wide v22

    #@12c
    .line 155
    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12f
    move-result-object v27

    #@130
    .line 156
    .restart local v27    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@132
    move-wide/from16 v1, v22

    #@134
    move-object/from16 v3, v27

    #@136
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    #@139
    move-result v33

    #@13a
    .line 157
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13d
    .line 158
    if-eqz v33, :cond_0

    #@13f
    const/4 v4, 0x1

    #@140
    :goto_0
    move-object/from16 v0, p3

    #@142
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@145
    .line 159
    const/4 v4, 0x1

    #@146
    return v4

    #@147
    .line 158
    :cond_0
    const/4 v4, 0x0

    #@148
    goto :goto_0

    #@149
    .line 163
    .end local v22    # "_arg0":J
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@151
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@154
    move-result-object v5

    #@155
    .line 166
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@157
    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->preEnroll(Landroid/os/IBinder;)J

    #@15a
    move-result-wide v30

    #@15b
    .line 167
    .local v30, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    .line 168
    move-object/from16 v0, p3

    #@160
    move-wide/from16 v1, v30

    #@162
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@165
    .line 169
    const/4 v4, 0x1

    #@166
    return v4

    #@167
    .line 173
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v30    # "_result":J
    :sswitch_a
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16f
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@172
    move-result-object v5

    #@173
    .line 176
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@175
    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->postEnroll(Landroid/os/IBinder;)I

    #@178
    move-result v29

    #@179
    .line 177
    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17c
    .line 178
    move-object/from16 v0, p3

    #@17e
    move/from16 v1, v29

    #@180
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@183
    .line 179
    const/4 v4, 0x1

    #@184
    return v4

    #@185
    .line 183
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@188
    move-object/from16 v0, p2

    #@18a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18d
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@190
    move-result v21

    #@191
    .line 187
    .restart local v21    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@194
    move-result-object v27

    #@195
    .line 188
    .restart local v27    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@197
    move/from16 v1, v21

    #@199
    move-object/from16 v2, v27

    #@19b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(ILjava/lang/String;)Z

    #@19e
    move-result v33

    #@19f
    .line 189
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a2
    .line 190
    if-eqz v33, :cond_1

    #@1a4
    const/4 v4, 0x1

    #@1a5
    :goto_1
    move-object/from16 v0, p3

    #@1a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1aa
    .line 191
    const/4 v4, 0x1

    #@1ab
    return v4

    #@1ac
    .line 190
    :cond_1
    const/4 v4, 0x0

    #@1ad
    goto :goto_1

    #@1ae
    .line 195
    .end local v21    # "_arg0":I
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b9
    move-result-object v25

    #@1ba
    .line 198
    .local v25, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bc
    move-object/from16 v1, v25

    #@1be
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    #@1c1
    move-result-wide v30

    #@1c2
    .line 199
    .restart local v30    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c5
    .line 200
    move-object/from16 v0, p3

    #@1c7
    move-wide/from16 v1, v30

    #@1c9
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1cc
    .line 201
    const/4 v4, 0x1

    #@1cd
    return v4

    #@1ce
    .line 205
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":J
    :sswitch_d
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@1d1
    move-object/from16 v0, p2

    #@1d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d6
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@1d9
    move-result-object v26

    #@1da
    .line 208
    .local v26, "_arg0":[B
    move-object/from16 v0, p0

    #@1dc
    move-object/from16 v1, v26

    #@1de
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetTimeout([B)V

    #@1e1
    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    .line 210
    const/4 v4, 0x1

    #@1e5
    return v4

    #@1e6
    .line 214
    .end local v26    # "_arg0":[B
    :sswitch_e
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ee
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f1
    move-result-object v4

    #@1f2
    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    #@1f5
    move-result-object v24

    #@1f6
    .line 217
    .local v24, "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
    move-object/from16 v0, p0

    #@1f8
    move-object/from16 v1, v24

    #@1fa
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V

    #@1fd
    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@200
    .line 219
    const/4 v4, 0x1

    #@201
    return v4

    #@202
    .line 223
    .end local v24    # "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
    :sswitch_f
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@205
    move-object/from16 v0, p2

    #@207
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20a
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20d
    move-result v21

    #@20e
    .line 226
    .restart local v21    # "_arg0":I
    move-object/from16 v0, p0

    #@210
    move/from16 v1, v21

    #@212
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setActiveUser(I)V

    #@215
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@218
    .line 228
    const/4 v4, 0x1

    #@219
    return v4

    #@21a
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
