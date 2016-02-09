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
    .locals 30
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
    .line 200
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
    move-result-object v23

    #@50
    .line 75
    .local v23, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v23

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
    .end local v23    # "_arg1":Ljava/lang/String;
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
    .restart local v10    # "_arg4":I
    move-object/from16 v12, p0

    #@7e
    move-object v13, v5

    #@7f
    move v15, v8

    #@80
    move-object/from16 v16, v9

    #@82
    move/from16 v17, v10

    #@84
    .line 92
    invoke-virtual/range {v12 .. v17}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    #@87
    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 94
    const/4 v4, 0x1

    #@8b
    return v4

    #@8c
    .line 98
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":I
    .end local v14    # "_arg1":[B
    :sswitch_4
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@8f
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@97
    move-result-object v5

    #@98
    .line 101
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@9a
    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    #@9d
    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0
    .line 103
    const/4 v4, 0x1

    #@a1
    return v4

    #@a2
    .line 107
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ad
    move-result-object v5

    #@ae
    .line 111
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v22

    #@b2
    .line 113
    .local v22, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v8

    #@b6
    .line 115
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b9
    move-result-object v4

    #@ba
    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@bd
    move-result-object v9

    #@be
    .line 116
    .restart local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    move-object/from16 v0, p0

    #@c0
    move/from16 v1, v22

    #@c2
    invoke-virtual {v0, v5, v1, v8, v9}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    #@c5
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    .line 118
    const/4 v4, 0x1

    #@c9
    return v4

    #@ca
    .line 122
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v22    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v18

    #@d6
    .line 126
    .local v18, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v22

    #@da
    .line 128
    .restart local v22    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dd
    move-result-object v24

    #@de
    .line 129
    .local v24, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e0
    move/from16 v1, v18

    #@e2
    move/from16 v2, v22

    #@e4
    move-object/from16 v3, v24

    #@e6
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    #@e9
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ec
    .line 131
    const/4 v4, 0x1

    #@ed
    return v4

    #@ee
    .line 135
    .end local v18    # "_arg0":I
    .end local v22    # "_arg1":I
    .end local v24    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f9
    move-result v18

    #@fa
    .line 139
    .restart local v18    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd
    move-result-object v23

    #@fe
    .line 140
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@100
    move/from16 v1, v18

    #@102
    move-object/from16 v2, v23

    #@104
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;

    #@107
    move-result-object v28

    #@108
    .line 141
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b
    .line 142
    move-object/from16 v0, p3

    #@10d
    move-object/from16 v1, v28

    #@10f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@112
    .line 143
    const/4 v4, 0x1

    #@113
    return v4

    #@114
    .line 147
    .end local v18    # "_arg0":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :sswitch_8
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@117
    move-object/from16 v0, p2

    #@119
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@11f
    move-result-wide v20

    #@120
    .line 151
    .local v20, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@123
    move-result-object v23

    #@124
    .line 152
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@126
    move-wide/from16 v1, v20

    #@128
    move-object/from16 v3, v23

    #@12a
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    #@12d
    move-result v29

    #@12e
    .line 153
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 154
    if-eqz v29, :cond_0

    #@133
    const/4 v4, 0x1

    #@134
    :goto_0
    move-object/from16 v0, p3

    #@136
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@139
    .line 155
    const/4 v4, 0x1

    #@13a
    return v4

    #@13b
    .line 154
    :cond_0
    const/4 v4, 0x0

    #@13c
    goto :goto_0

    #@13d
    .line 159
    .end local v20    # "_arg0":J
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@140
    move-object/from16 v0, p2

    #@142
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@148
    move-result-object v5

    #@149
    .line 162
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->preEnroll(Landroid/os/IBinder;)J

    #@14e
    move-result-wide v26

    #@14f
    .line 163
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 164
    move-object/from16 v0, p3

    #@154
    move-wide/from16 v1, v26

    #@156
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@159
    .line 165
    const/4 v4, 0x1

    #@15a
    return v4

    #@15b
    .line 169
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_result":J
    :sswitch_a
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@15e
    move-object/from16 v0, p2

    #@160
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@166
    move-result-object v5

    #@167
    .line 172
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->postEnroll(Landroid/os/IBinder;)I

    #@16c
    move-result v25

    #@16d
    .line 173
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@170
    .line 174
    move-object/from16 v0, p3

    #@172
    move/from16 v1, v25

    #@174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@177
    .line 175
    const/4 v4, 0x1

    #@178
    return v4

    #@179
    .line 179
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@17c
    move-object/from16 v0, p2

    #@17e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@181
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@184
    move-result v18

    #@185
    .line 183
    .restart local v18    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@188
    move-result-object v23

    #@189
    .line 184
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18b
    move/from16 v1, v18

    #@18d
    move-object/from16 v2, v23

    #@18f
    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(ILjava/lang/String;)Z

    #@192
    move-result v29

    #@193
    .line 185
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@196
    .line 186
    if-eqz v29, :cond_1

    #@198
    const/4 v4, 0x1

    #@199
    :goto_1
    move-object/from16 v0, p3

    #@19b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19e
    .line 187
    const/4 v4, 0x1

    #@19f
    return v4

    #@1a0
    .line 186
    :cond_1
    const/4 v4, 0x0

    #@1a1
    goto :goto_1

    #@1a2
    .line 191
    .end local v18    # "_arg0":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.hardware.fingerprint.IFingerprintService"

    #@1a5
    move-object/from16 v0, p2

    #@1a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1aa
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ad
    move-result-object v19

    #@1ae
    .line 194
    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, v19

    #@1b2
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    #@1b5
    move-result-wide v26

    #@1b6
    .line 195
    .restart local v26    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b9
    .line 196
    move-object/from16 v0, p3

    #@1bb
    move-wide/from16 v1, v26

    #@1bd
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1c0
    .line 197
    const/4 v4, 0x1

    #@1c1
    return v4

    #@1c2
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
