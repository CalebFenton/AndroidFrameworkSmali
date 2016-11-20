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
    .locals 24
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
    .line 369
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
    move-result v23

    #@96
    .line 95
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@99
    .line 96
    if-eqz v23, :cond_2

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
    .end local v23    # "_result":Z
    :cond_1
    const/4 v7, 0x0

    #@a4
    .restart local v7    # "_arg1":Z
    goto :goto_1

    #@a5
    .line 96
    .restart local v16    # "_arg2":I
    .restart local v23    # "_result":Z
    :cond_2
    const/4 v5, 0x0

    #@a6
    goto :goto_2

    #@a7
    .line 101
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v23    # "_result":Z
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
    move-result-object v22

    #@eb
    .line 123
    .local v22, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 124
    move-object/from16 v0, p3

    #@f0
    move-object/from16 v1, v22

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
    .end local v22    # "_result":Ljava/lang/String;
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
    .line 156
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v6, v12}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@142
    move-result-object v19

    #@143
    .line 157
    .local v19, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@146
    .line 158
    if-eqz v19, :cond_3

    #@148
    .line 159
    const/4 v5, 0x1

    #@149
    move-object/from16 v0, p3

    #@14b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@14e
    .line 160
    const/4 v5, 0x1

    #@14f
    move-object/from16 v0, v19

    #@151
    move-object/from16 v1, p3

    #@153
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@156
    .line 165
    :goto_3
    const/4 v5, 0x1

    #@157
    return v5

    #@158
    .line 163
    :cond_3
    const/4 v5, 0x0

    #@159
    move-object/from16 v0, p3

    #@15b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@15e
    goto :goto_3

    #@15f
    .line 169
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@162
    move-object/from16 v0, p2

    #@164
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@167
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16a
    move-result-object v6

    #@16b
    .line 173
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@16e
    move-result-wide v14

    #@16f
    .line 175
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@172
    move-result v16

    #@173
    .line 176
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@175
    move/from16 v1, v16

    #@177
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@17a
    move-result-object v19

    #@17b
    .line 177
    .restart local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17e
    .line 178
    if-eqz v19, :cond_4

    #@180
    .line 179
    const/4 v5, 0x1

    #@181
    move-object/from16 v0, p3

    #@183
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@186
    .line 180
    const/4 v5, 0x1

    #@187
    move-object/from16 v0, v19

    #@189
    move-object/from16 v1, p3

    #@18b
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@18e
    .line 185
    :goto_4
    const/4 v5, 0x1

    #@18f
    return v5

    #@190
    .line 183
    :cond_4
    const/4 v5, 0x0

    #@191
    move-object/from16 v0, p3

    #@193
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@196
    goto :goto_4

    #@197
    .line 189
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19f
    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v6

    #@1a3
    .line 193
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a6
    move-result-object v13

    #@1a7
    .line 195
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa
    move-result v16

    #@1ab
    .line 196
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@1ad
    move/from16 v1, v16

    #@1af
    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    #@1b2
    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b5
    .line 198
    const/4 v5, 0x1

    #@1b6
    return v5

    #@1b7
    .line 202
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c2
    move-result-object v6

    #@1c3
    .line 206
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v12

    #@1c7
    .line 207
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@1c9
    invoke-virtual {v0, v6, v12}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@1cc
    move-result-object v19

    #@1cd
    .line 208
    .restart local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d0
    .line 209
    if-eqz v19, :cond_5

    #@1d2
    .line 210
    const/4 v5, 0x1

    #@1d3
    move-object/from16 v0, p3

    #@1d5
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d8
    .line 211
    const/4 v5, 0x1

    #@1d9
    move-object/from16 v0, v19

    #@1db
    move-object/from16 v1, p3

    #@1dd
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e0
    .line 216
    :goto_5
    const/4 v5, 0x1

    #@1e1
    return v5

    #@1e2
    .line 214
    :cond_5
    const/4 v5, 0x0

    #@1e3
    move-object/from16 v0, p3

    #@1e5
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e8
    goto :goto_5

    #@1e9
    .line 220
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f4
    move-result-object v6

    #@1f5
    .line 224
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1f8
    move-result-wide v14

    #@1f9
    .line 226
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v16

    #@1fd
    .line 227
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, v16

    #@201
    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@204
    move-result-object v19

    #@205
    .line 228
    .restart local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@208
    .line 229
    if-eqz v19, :cond_6

    #@20a
    .line 230
    const/4 v5, 0x1

    #@20b
    move-object/from16 v0, p3

    #@20d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@210
    .line 231
    const/4 v5, 0x1

    #@211
    move-object/from16 v0, v19

    #@213
    move-object/from16 v1, p3

    #@215
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@218
    .line 236
    :goto_6
    const/4 v5, 0x1

    #@219
    return v5

    #@21a
    .line 234
    :cond_6
    const/4 v5, 0x0

    #@21b
    move-object/from16 v0, p3

    #@21d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@220
    goto :goto_6

    #@221
    .line 240
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@224
    move-object/from16 v0, p2

    #@226
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22c
    move-result-object v6

    #@22d
    .line 244
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@230
    move-result v5

    #@231
    if-eqz v5, :cond_7

    #@233
    const/4 v7, 0x1

    #@234
    .line 246
    .restart local v7    # "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@237
    move-result-wide v8

    #@238
    .line 248
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b
    move-result v10

    #@23c
    .local v10, "_arg3":I
    move-object/from16 v5, p0

    #@23e
    .line 249
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@241
    move-result-object v19

    #@242
    .line 250
    .restart local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@245
    .line 251
    if-eqz v19, :cond_8

    #@247
    .line 252
    const/4 v5, 0x1

    #@248
    move-object/from16 v0, p3

    #@24a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@24d
    .line 253
    const/4 v5, 0x1

    #@24e
    move-object/from16 v0, v19

    #@250
    move-object/from16 v1, p3

    #@252
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@255
    .line 258
    :goto_8
    const/4 v5, 0x1

    #@256
    return v5

    #@257
    .line 244
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    const/4 v7, 0x0

    #@258
    .restart local v7    # "_arg1":Z
    goto :goto_7

    #@259
    .line 256
    .restart local v8    # "_arg2":J
    .restart local v10    # "_arg3":I
    .restart local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    const/4 v5, 0x0

    #@25a
    move-object/from16 v0, p3

    #@25c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@25f
    goto :goto_8

    #@260
    .line 262
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v19    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@263
    move-object/from16 v0, p2

    #@265
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@268
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v4

    #@26c
    .line 265
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@26e
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    #@271
    move-result v23

    #@272
    .line 266
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@275
    .line 267
    if-eqz v23, :cond_9

    #@277
    const/4 v5, 0x1

    #@278
    :goto_9
    move-object/from16 v0, p3

    #@27a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@27d
    .line 268
    const/4 v5, 0x1

    #@27e
    return v5

    #@27f
    .line 267
    :cond_9
    const/4 v5, 0x0

    #@280
    goto :goto_9

    #@281
    .line 272
    .end local v4    # "_arg0":I
    .end local v23    # "_result":Z
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@284
    move-object/from16 v0, p2

    #@286
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@289
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28c
    move-result v4

    #@28d
    .line 275
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@28f
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    #@292
    move-result v23

    #@293
    .line 276
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@296
    .line 277
    if-eqz v23, :cond_a

    #@298
    const/4 v5, 0x1

    #@299
    :goto_a
    move-object/from16 v0, p3

    #@29b
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@29e
    .line 278
    const/4 v5, 0x1

    #@29f
    return v5

    #@2a0
    .line 277
    :cond_a
    const/4 v5, 0x0

    #@2a1
    goto :goto_a

    #@2a2
    .line 282
    .end local v4    # "_arg0":I
    .end local v23    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v4

    #@2ae
    .line 285
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2b0
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    #@2b3
    move-result v23

    #@2b4
    .line 286
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b7
    .line 287
    if-eqz v23, :cond_b

    #@2b9
    const/4 v5, 0x1

    #@2ba
    :goto_b
    move-object/from16 v0, p3

    #@2bc
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2bf
    .line 288
    const/4 v5, 0x1

    #@2c0
    return v5

    #@2c1
    .line 287
    :cond_b
    const/4 v5, 0x0

    #@2c2
    goto :goto_b

    #@2c3
    .line 292
    .end local v4    # "_arg0":I
    .end local v23    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@2c6
    move-object/from16 v0, p2

    #@2c8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cb
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ce
    move-result v4

    #@2cf
    .line 296
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d2
    move-result v5

    #@2d3
    if-eqz v5, :cond_c

    #@2d5
    const/4 v7, 0x1

    #@2d6
    .line 298
    .restart local v7    # "_arg1":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d9
    move-result-object v17

    #@2da
    .line 299
    .local v17, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2dc
    move-object/from16 v1, v17

    #@2de
    invoke-virtual {v0, v4, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    #@2e1
    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e4
    .line 301
    const/4 v5, 0x1

    #@2e5
    return v5

    #@2e6
    .line 296
    .end local v7    # "_arg1":Z
    .end local v17    # "_arg2":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    #@2e7
    .restart local v7    # "_arg1":Z
    goto :goto_c

    #@2e8
    .line 305
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@2eb
    move-object/from16 v0, p2

    #@2ed
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f0
    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f3
    move-result v4

    #@2f4
    .line 308
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2f6
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    #@2f9
    move-result v23

    #@2fa
    .line 309
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fd
    .line 310
    if-eqz v23, :cond_d

    #@2ff
    const/4 v5, 0x1

    #@300
    :goto_d
    move-object/from16 v0, p3

    #@302
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@305
    .line 311
    const/4 v5, 0x1

    #@306
    return v5

    #@307
    .line 310
    :cond_d
    const/4 v5, 0x0

    #@308
    goto :goto_d

    #@309
    .line 315
    .end local v4    # "_arg0":I
    .end local v23    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@30c
    move-object/from16 v0, p2

    #@30e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@311
    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@314
    move-result-object v5

    #@315
    invoke-static {v5}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    #@318
    move-result-object v11

    #@319
    .line 318
    .local v11, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    #@31b
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@31e
    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@321
    .line 320
    const/4 v5, 0x1

    #@322
    return v5

    #@323
    .line 324
    .end local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@326
    move-object/from16 v0, p2

    #@328
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32b
    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32e
    move-result-object v5

    #@32f
    invoke-static {v5}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    #@332
    move-result-object v11

    #@333
    .line 327
    .restart local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    #@335
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@338
    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33b
    .line 329
    const/4 v5, 0x1

    #@33c
    return v5

    #@33d
    .line 333
    .end local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v4

    #@349
    .line 337
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34c
    move-result v12

    #@34d
    .line 338
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@34f
    invoke-virtual {v0, v4, v12}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    #@352
    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@355
    .line 340
    const/4 v5, 0x1

    #@356
    return v5

    #@357
    .line 344
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@35a
    move-object/from16 v0, p2

    #@35c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35f
    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    #@362
    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@365
    .line 347
    const/4 v5, 0x1

    #@366
    return v5

    #@367
    .line 351
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@36a
    move-object/from16 v0, p2

    #@36c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36f
    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@372
    move-result v4

    #@373
    .line 354
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@375
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    #@378
    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37b
    .line 356
    const/4 v5, 0x1

    #@37c
    return v5

    #@37d
    .line 360
    .end local v4    # "_arg0":I
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    #@380
    move-object/from16 v0, p2

    #@382
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@385
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@388
    move-result v4

    #@389
    .line 363
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@38b
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    #@38e
    move-result v18

    #@38f
    .line 364
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@392
    .line 365
    move-object/from16 v0, p3

    #@394
    move/from16 v1, v18

    #@396
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@399
    .line 366
    const/4 v5, 0x1

    #@39a
    return v5

    #@39b
    .line 39
    nop

    #@39c
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
