.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkPassword:I = 0xc

.field static final TRANSACTION_checkPattern:I = 0x9

.field static final TRANSACTION_checkVoldPassword:I = 0xf

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x13

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_getStrongAuthForUser:I = 0x19

.field static final TRANSACTION_havePassword:I = 0x11

.field static final TRANSACTION_havePattern:I = 0x10

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x14

.field static final TRANSACTION_requireStrongAuth:I = 0x16

.field static final TRANSACTION_resetKeyStore:I = 0x8

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockPassword:I = 0xb

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x12

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_systemReady:I = 0x17

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x15

.field static final TRANSACTION_userPresent:I = 0x18

.field static final TRANSACTION_verifyPassword:I = 0xd

.field static final TRANSACTION_verifyPattern:I = 0xa

.field static final TRANSACTION_verifyTiedProfileChallenge:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.widget.ILockSettings"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
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
    const-string/jumbo v1, "com.android.internal.widget.ILockSettings"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 373
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v5, 0x1

    #@11
    return v5

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .line 52
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    const/4 v7, 0x1

    #@25
    .line 54
    .local v7, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v16

    #@29
    .line 55
    .local v16, "_arg2":I
    move-object/from16 v0, p0

    #@2b
    move/from16 v1, v16

    #@2d
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    #@30
    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 57
    const/4 v5, 0x1

    #@34
    return v5

    #@35
    .line 52
    .end local v7    # "_arg1":Z
    .end local v16    # "_arg2":I
    :cond_0
    const/4 v7, 0x0

    #@36
    .restart local v7    # "_arg1":Z
    goto :goto_0

    #@37
    .line 61
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 65
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v14

    #@47
    .line 67
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v16

    #@4b
    .line 68
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@4d
    move/from16 v1, v16

    #@4f
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    #@52
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 70
    const/4 v5, 0x1

    #@56
    return v5

    #@57
    .line 74
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    .line 78
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66
    move-result-object v13

    #@67
    .line 80
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v16

    #@6b
    .line 81
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@6d
    move/from16 v1, v16

    #@6f
    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@72
    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 83
    const/4 v5, 0x1

    #@76
    return v5

    #@77
    .line 87
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    .line 91
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v5

    #@87
    if-eqz v5, :cond_1

    #@89
    const/4 v7, 0x1

    #@8a
    .line 93
    .restart local v7    # "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v16

    #@8e
    .line 94
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@90
    move/from16 v1, v16

    #@92
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    #@95
    move-result v24

    #@96
    .line 95
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@99
    .line 96
    if-eqz v24, :cond_2

    #@9b
    const/4 v5, 0x1

    #@9c
    :goto_2
    move-object/from16 v0, p3

    #@9e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@a1
    .line 97
    const/4 v5, 0x1

    #@a2
    return v5

    #@a3
    .line 91
    .end local v7    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v24    # "_result":Z
    :cond_1
    const/4 v7, 0x0

    #@a4
    .restart local v7    # "_arg1":Z
    goto :goto_1

    #@a5
    .line 96
    .restart local v16    # "_arg2":I
    .restart local v24    # "_result":Z
    :cond_2
    const/4 v5, 0x0

    #@a6
    goto :goto_2

    #@a7
    .line 101
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v24    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b2
    move-result-object v6

    #@b3
    .line 105
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@b6
    move-result-wide v14

    #@b7
    .line 107
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v16

    #@bb
    .line 108
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@bd
    move/from16 v1, v16

    #@bf
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    #@c2
    move-result-wide v20

    #@c3
    .line 109
    .local v20, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c6
    .line 110
    move-object/from16 v0, p3

    #@c8
    move-wide/from16 v1, v20

    #@ca
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@cd
    .line 111
    const/4 v5, 0x1

    #@ce
    return v5

    #@cf
    .line 115
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v20    # "_result":J
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@da
    move-result-object v6

    #@db
    .line 119
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@de
    move-result-object v13

    #@df
    .line 121
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v16

    #@e3
    .line 122
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@e5
    move/from16 v1, v16

    #@e7
    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@ea
    move-result-object v23

    #@eb
    .line 123
    .local v23, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 124
    move-object/from16 v0, p3

    #@f0
    move-object/from16 v1, v23

    #@f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f5
    .line 125
    const/4 v5, 0x1

    #@f6
    return v5

    #@f7
    .line 129
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@fa
    move-object/from16 v0, p2

    #@fc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102
    move-result-object v6

    #@103
    .line 133
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@106
    move-result-object v13

    #@107
    .line 135
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v16

    #@10b
    .line 136
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@10d
    move/from16 v1, v16

    #@10f
    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    #@112
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 138
    const/4 v5, 0x1

    #@116
    return v5

    #@117
    .line 142
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v4

    #@123
    .line 145
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@125
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    #@128
    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12b
    .line 147
    const/4 v5, 0x1

    #@12c
    return v5

    #@12d
    .line 151
    .end local v4    # "_arg0":I
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@130
    move-object/from16 v0, p2

    #@132
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@138
    move-result-object v6

    #@139
    .line 155
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v12

    #@13d
    .line 157
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@140
    move-result-object v5

    #@141
    invoke-static {v5}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    #@144
    move-result-object v17

    #@145
    .line 158
    .local v17, "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    move-object/from16 v0, p0

    #@147
    move-object/from16 v1, v17

    #@149
    invoke-virtual {v0, v6, v12, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@14c
    move-result-object v22

    #@14d
    .line 159
    .local v22, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@150
    .line 160
    if-eqz v22, :cond_3

    #@152
    .line 161
    const/4 v5, 0x1

    #@153
    move-object/from16 v0, p3

    #@155
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@158
    .line 162
    const/4 v5, 0x1

    #@159
    move-object/from16 v0, v22

    #@15b
    move-object/from16 v1, p3

    #@15d
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@160
    .line 167
    :goto_3
    const/4 v5, 0x1

    #@161
    return v5

    #@162
    .line 165
    :cond_3
    const/4 v5, 0x0

    #@163
    move-object/from16 v0, p3

    #@165
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@168
    goto :goto_3

    #@169
    .line 171
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@174
    move-result-object v6

    #@175
    .line 175
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@178
    move-result-wide v14

    #@179
    .line 177
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v16

    #@17d
    .line 178
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@17f
    move/from16 v1, v16

    #@181
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@184
    move-result-object v22

    #@185
    .line 179
    .restart local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@188
    .line 180
    if-eqz v22, :cond_4

    #@18a
    .line 181
    const/4 v5, 0x1

    #@18b
    move-object/from16 v0, p3

    #@18d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@190
    .line 182
    const/4 v5, 0x1

    #@191
    move-object/from16 v0, v22

    #@193
    move-object/from16 v1, p3

    #@195
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@198
    .line 187
    :goto_4
    const/4 v5, 0x1

    #@199
    return v5

    #@19a
    .line 185
    :cond_4
    const/4 v5, 0x0

    #@19b
    move-object/from16 v0, p3

    #@19d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1a0
    goto :goto_4

    #@1a1
    .line 191
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a9
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ac
    move-result-object v6

    #@1ad
    .line 195
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b0
    move-result-object v13

    #@1b1
    .line 197
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b4
    move-result v16

    #@1b5
    .line 198
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@1b7
    move/from16 v1, v16

    #@1b9
    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    #@1bc
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 200
    const/4 v5, 0x1

    #@1c0
    return v5

    #@1c1
    .line 204
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@1c4
    move-object/from16 v0, p2

    #@1c6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1cc
    move-result-object v6

    #@1cd
    .line 208
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d0
    move-result v12

    #@1d1
    .line 210
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d4
    move-result-object v5

    #@1d5
    invoke-static {v5}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    #@1d8
    move-result-object v17

    #@1d9
    .line 211
    .restart local v17    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    move-object/from16 v0, p0

    #@1db
    move-object/from16 v1, v17

    #@1dd
    invoke-virtual {v0, v6, v12, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@1e0
    move-result-object v22

    #@1e1
    .line 212
    .restart local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    .line 213
    if-eqz v22, :cond_5

    #@1e6
    .line 214
    const/4 v5, 0x1

    #@1e7
    move-object/from16 v0, p3

    #@1e9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec
    .line 215
    const/4 v5, 0x1

    #@1ed
    move-object/from16 v0, v22

    #@1ef
    move-object/from16 v1, p3

    #@1f1
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f4
    .line 220
    :goto_5
    const/4 v5, 0x1

    #@1f5
    return v5

    #@1f6
    .line 218
    :cond_5
    const/4 v5, 0x0

    #@1f7
    move-object/from16 v0, p3

    #@1f9
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1fc
    goto :goto_5

    #@1fd
    .line 224
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@200
    move-object/from16 v0, p2

    #@202
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@205
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@208
    move-result-object v6

    #@209
    .line 228
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@20c
    move-result-wide v14

    #@20d
    .line 230
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v16

    #@211
    .line 231
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@213
    move/from16 v1, v16

    #@215
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@218
    move-result-object v22

    #@219
    .line 232
    .restart local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    .line 233
    if-eqz v22, :cond_6

    #@21e
    .line 234
    const/4 v5, 0x1

    #@21f
    move-object/from16 v0, p3

    #@221
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@224
    .line 235
    const/4 v5, 0x1

    #@225
    move-object/from16 v0, v22

    #@227
    move-object/from16 v1, p3

    #@229
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@22c
    .line 240
    :goto_6
    const/4 v5, 0x1

    #@22d
    return v5

    #@22e
    .line 238
    :cond_6
    const/4 v5, 0x0

    #@22f
    move-object/from16 v0, p3

    #@231
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@234
    goto :goto_6

    #@235
    .line 244
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@238
    move-object/from16 v0, p2

    #@23a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23d
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@240
    move-result-object v6

    #@241
    .line 248
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@244
    move-result v5

    #@245
    if-eqz v5, :cond_7

    #@247
    const/4 v7, 0x1

    #@248
    .line 250
    .restart local v7    # "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@24b
    move-result-wide v8

    #@24c
    .line 252
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24f
    move-result v10

    #@250
    .local v10, "_arg3":I
    move-object/from16 v5, p0

    #@252
    .line 253
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@255
    move-result-object v22

    #@256
    .line 254
    .restart local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@259
    .line 255
    if-eqz v22, :cond_8

    #@25b
    .line 256
    const/4 v5, 0x1

    #@25c
    move-object/from16 v0, p3

    #@25e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@261
    .line 257
    const/4 v5, 0x1

    #@262
    move-object/from16 v0, v22

    #@264
    move-object/from16 v1, p3

    #@266
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@269
    .line 262
    :goto_8
    const/4 v5, 0x1

    #@26a
    return v5

    #@26b
    .line 248
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    const/4 v7, 0x0

    #@26c
    .restart local v7    # "_arg1":Z
    goto :goto_7

    #@26d
    .line 260
    .restart local v8    # "_arg2":J
    .restart local v10    # "_arg3":I
    .restart local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    const/4 v5, 0x0

    #@26e
    move-object/from16 v0, p3

    #@270
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@273
    goto :goto_8

    #@274
    .line 266
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v22    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@277
    move-object/from16 v0, p2

    #@279
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27c
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27f
    move-result v4

    #@280
    .line 269
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@282
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    #@285
    move-result v24

    #@286
    .line 270
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@289
    .line 271
    if-eqz v24, :cond_9

    #@28b
    const/4 v5, 0x1

    #@28c
    :goto_9
    move-object/from16 v0, p3

    #@28e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@291
    .line 272
    const/4 v5, 0x1

    #@292
    return v5

    #@293
    .line 271
    :cond_9
    const/4 v5, 0x0

    #@294
    goto :goto_9

    #@295
    .line 276
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Z
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@298
    move-object/from16 v0, p2

    #@29a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29d
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a0
    move-result v4

    #@2a1
    .line 279
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2a3
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    #@2a6
    move-result v24

    #@2a7
    .line 280
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2aa
    .line 281
    if-eqz v24, :cond_a

    #@2ac
    const/4 v5, 0x1

    #@2ad
    :goto_a
    move-object/from16 v0, p3

    #@2af
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2b2
    .line 282
    const/4 v5, 0x1

    #@2b3
    return v5

    #@2b4
    .line 281
    :cond_a
    const/4 v5, 0x0

    #@2b5
    goto :goto_a

    #@2b6
    .line 286
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@2b9
    move-object/from16 v0, p2

    #@2bb
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2be
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c1
    move-result v4

    #@2c2
    .line 289
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2c4
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    #@2c7
    move-result v24

    #@2c8
    .line 290
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cb
    .line 291
    if-eqz v24, :cond_b

    #@2cd
    const/4 v5, 0x1

    #@2ce
    :goto_b
    move-object/from16 v0, p3

    #@2d0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2d3
    .line 292
    const/4 v5, 0x1

    #@2d4
    return v5

    #@2d5
    .line 291
    :cond_b
    const/4 v5, 0x0

    #@2d6
    goto :goto_b

    #@2d7
    .line 296
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@2da
    move-object/from16 v0, p2

    #@2dc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2df
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e2
    move-result v4

    #@2e3
    .line 300
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e6
    move-result v5

    #@2e7
    if-eqz v5, :cond_c

    #@2e9
    const/4 v7, 0x1

    #@2ea
    .line 302
    .restart local v7    # "_arg1":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ed
    move-result-object v18

    #@2ee
    .line 303
    .local v18, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f0
    move-object/from16 v1, v18

    #@2f2
    invoke-virtual {v0, v4, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    #@2f5
    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f8
    .line 305
    const/4 v5, 0x1

    #@2f9
    return v5

    #@2fa
    .line 300
    .end local v7    # "_arg1":Z
    .end local v18    # "_arg2":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    #@2fb
    .restart local v7    # "_arg1":Z
    goto :goto_c

    #@2fc
    .line 309
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@2ff
    move-object/from16 v0, p2

    #@301
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@304
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@307
    move-result v4

    #@308
    .line 312
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@30a
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    #@30d
    move-result v24

    #@30e
    .line 313
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@311
    .line 314
    if-eqz v24, :cond_d

    #@313
    const/4 v5, 0x1

    #@314
    :goto_d
    move-object/from16 v0, p3

    #@316
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@319
    .line 315
    const/4 v5, 0x1

    #@31a
    return v5

    #@31b
    .line 314
    :cond_d
    const/4 v5, 0x0

    #@31c
    goto :goto_d

    #@31d
    .line 319
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@320
    move-object/from16 v0, p2

    #@322
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@325
    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@328
    move-result-object v5

    #@329
    invoke-static {v5}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    #@32c
    move-result-object v11

    #@32d
    .line 322
    .local v11, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    #@32f
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@332
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@335
    .line 324
    const/4 v5, 0x1

    #@336
    return v5

    #@337
    .line 328
    .end local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@33a
    move-object/from16 v0, p2

    #@33c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33f
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@342
    move-result-object v5

    #@343
    invoke-static {v5}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    #@346
    move-result-object v11

    #@347
    .line 331
    .restart local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    #@349
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@34c
    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34f
    .line 333
    const/4 v5, 0x1

    #@350
    return v5

    #@351
    .line 337
    .end local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@354
    move-object/from16 v0, p2

    #@356
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@359
    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35c
    move-result v4

    #@35d
    .line 341
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@360
    move-result v12

    #@361
    .line 342
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@363
    invoke-virtual {v0, v4, v12}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    #@366
    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@369
    .line 344
    const/4 v5, 0x1

    #@36a
    return v5

    #@36b
    .line 348
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@36e
    move-object/from16 v0, p2

    #@370
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@373
    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    #@376
    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@379
    .line 351
    const/4 v5, 0x1

    #@37a
    return v5

    #@37b
    .line 355
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@37e
    move-object/from16 v0, p2

    #@380
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@383
    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@386
    move-result v4

    #@387
    .line 358
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@389
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    #@38c
    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38f
    .line 360
    const/4 v5, 0x1

    #@390
    return v5

    #@391
    .line 364
    .end local v4    # "_arg0":I
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@394
    move-object/from16 v0, p2

    #@396
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@399
    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39c
    move-result v4

    #@39d
    .line 367
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@39f
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    #@3a2
    move-result v19

    #@3a3
    .line 368
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 369
    move-object/from16 v0, p3

    #@3a8
    move/from16 v1, v19

    #@3aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3ad
    .line 370
    const/4 v5, 0x1

    #@3ae
    return v5

    #@3af
    .line 39
    nop

    #@3b0
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
