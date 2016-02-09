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

.field static final TRANSACTION_checkPassword:I = 0xb

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_checkVoldPassword:I = 0xd

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_havePassword:I = 0xf

.field static final TRANSACTION_havePattern:I = 0xe

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockPassword:I = 0xa

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_verifyPassword:I = 0xc

.field static final TRANSACTION_verifyPattern:I = 0x9


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
    .locals 16
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
    .line 260
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 52
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v15

    #@22
    if-eqz v15, :cond_0

    #@24
    const/4 v8, 0x1

    #@25
    .line 54
    .local v8, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v9

    #@29
    .line 55
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    #@2b
    invoke-virtual {v0, v3, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    #@2e
    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31
    .line 57
    const/4 v15, 0x1

    #@32
    return v15

    #@33
    .line 52
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    :cond_0
    const/4 v8, 0x0

    #@34
    .restart local v8    # "_arg1":Z
    goto :goto_0

    #@35
    .line 61
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 65
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@44
    move-result-wide v6

    #@45
    .line 67
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v9

    #@49
    .line 68
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v3, v6, v7, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    #@4e
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 70
    const/4 v15, 0x1

    #@52
    return v15

    #@53
    .line 74
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v9    # "_arg2":I
    :sswitch_3
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 78
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    .line 80
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v9

    #@67
    .line 81
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@69
    invoke-virtual {v0, v3, v5, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    #@6c
    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    .line 83
    const/4 v15, 0x1

    #@70
    return v15

    #@71
    .line 87
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_4
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@74
    move-object/from16 v0, p2

    #@76
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    .line 91
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v15

    #@81
    if-eqz v15, :cond_1

    #@83
    const/4 v8, 0x1

    #@84
    .line 93
    .restart local v8    # "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v9

    #@88
    .line 94
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v3, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    #@8d
    move-result v14

    #@8e
    .line 95
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 96
    if-eqz v14, :cond_2

    #@93
    const/4 v15, 0x1

    #@94
    :goto_2
    move-object/from16 v0, p3

    #@96
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    .line 97
    const/4 v15, 0x1

    #@9a
    return v15

    #@9b
    .line 91
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v14    # "_result":Z
    :cond_1
    const/4 v8, 0x0

    #@9c
    .restart local v8    # "_arg1":Z
    goto :goto_1

    #@9d
    .line 96
    .restart local v9    # "_arg2":I
    .restart local v14    # "_result":Z
    :cond_2
    const/4 v15, 0x0

    #@9e
    goto :goto_2

    #@9f
    .line 101
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v14    # "_result":Z
    :sswitch_5
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    .line 105
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@ae
    move-result-wide v6

    #@af
    .line 107
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b2
    move-result v9

    #@b3
    .line 108
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@b5
    invoke-virtual {v0, v3, v6, v7, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    #@b8
    move-result-wide v10

    #@b9
    .line 109
    .local v10, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc
    .line 110
    move-object/from16 v0, p3

    #@be
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@c1
    .line 111
    const/4 v15, 0x1

    #@c2
    return v15

    #@c3
    .line 115
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v9    # "_arg2":I
    .end local v10    # "_result":J
    :sswitch_6
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@c6
    move-object/from16 v0, p2

    #@c8
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    .line 119
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    .line 121
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v9

    #@d7
    .line 122
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v3, v5, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@dc
    move-result-object v13

    #@dd
    .line 123
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 124
    move-object/from16 v0, p3

    #@e2
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e5
    .line 125
    const/4 v15, 0x1

    #@e6
    return v15

    #@e7
    .line 129
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    .line 133
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    .line 135
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v9

    #@fb
    .line 136
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@fd
    invoke-virtual {v0, v3, v5, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    #@100
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@103
    .line 138
    const/4 v15, 0x1

    #@104
    return v15

    #@105
    .line 142
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_8
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10d
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@110
    move-result-object v3

    #@111
    .line 146
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@114
    move-result v4

    #@115
    .line 147
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    #@117
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@11a
    move-result-object v12

    #@11b
    .line 148
    .local v12, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e
    .line 149
    if-eqz v12, :cond_3

    #@120
    .line 150
    const/4 v15, 0x1

    #@121
    move-object/from16 v0, p3

    #@123
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@126
    .line 151
    const/4 v15, 0x1

    #@127
    move-object/from16 v0, p3

    #@129
    invoke-virtual {v12, v0, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@12c
    .line 156
    :goto_3
    const/4 v15, 0x1

    #@12d
    return v15

    #@12e
    .line 154
    :cond_3
    const/4 v15, 0x0

    #@12f
    move-object/from16 v0, p3

    #@131
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@134
    goto :goto_3

    #@135
    .line 160
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_9
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13d
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@140
    move-result-object v3

    #@141
    .line 164
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@144
    move-result-wide v6

    #@145
    .line 166
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v9

    #@149
    .line 167
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v3, v6, v7, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@14e
    move-result-object v12

    #@14f
    .line 168
    .restart local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 169
    if-eqz v12, :cond_4

    #@154
    .line 170
    const/4 v15, 0x1

    #@155
    move-object/from16 v0, p3

    #@157
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@15a
    .line 171
    const/4 v15, 0x1

    #@15b
    move-object/from16 v0, p3

    #@15d
    invoke-virtual {v12, v0, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@160
    .line 176
    :goto_4
    const/4 v15, 0x1

    #@161
    return v15

    #@162
    .line 174
    :cond_4
    const/4 v15, 0x0

    #@163
    move-object/from16 v0, p3

    #@165
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@168
    goto :goto_4

    #@169
    .line 180
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v9    # "_arg2":I
    .end local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_a
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@174
    move-result-object v3

    #@175
    .line 184
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@178
    move-result-object v5

    #@179
    .line 186
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v9

    #@17d
    .line 187
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@17f
    invoke-virtual {v0, v3, v5, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    #@182
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 189
    const/4 v15, 0x1

    #@186
    return v15

    #@187
    .line 193
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_b
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@18a
    move-object/from16 v0, p2

    #@18c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18f
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@192
    move-result-object v3

    #@193
    .line 197
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v4

    #@197
    .line 198
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@199
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@19c
    move-result-object v12

    #@19d
    .line 199
    .restart local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0
    .line 200
    if-eqz v12, :cond_5

    #@1a2
    .line 201
    const/4 v15, 0x1

    #@1a3
    move-object/from16 v0, p3

    #@1a5
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@1a8
    .line 202
    const/4 v15, 0x1

    #@1a9
    move-object/from16 v0, p3

    #@1ab
    invoke-virtual {v12, v0, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ae
    .line 207
    :goto_5
    const/4 v15, 0x1

    #@1af
    return v15

    #@1b0
    .line 205
    :cond_5
    const/4 v15, 0x0

    #@1b1
    move-object/from16 v0, p3

    #@1b3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@1b6
    goto :goto_5

    #@1b7
    .line 211
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_c
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c2
    move-result-object v3

    #@1c3
    .line 215
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1c6
    move-result-wide v6

    #@1c7
    .line 217
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v9

    #@1cb
    .line 218
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1cd
    invoke-virtual {v0, v3, v6, v7, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@1d0
    move-result-object v12

    #@1d1
    .line 219
    .restart local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d4
    .line 220
    if-eqz v12, :cond_6

    #@1d6
    .line 221
    const/4 v15, 0x1

    #@1d7
    move-object/from16 v0, p3

    #@1d9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@1dc
    .line 222
    const/4 v15, 0x1

    #@1dd
    move-object/from16 v0, p3

    #@1df
    invoke-virtual {v12, v0, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e2
    .line 227
    :goto_6
    const/4 v15, 0x1

    #@1e3
    return v15

    #@1e4
    .line 225
    :cond_6
    const/4 v15, 0x0

    #@1e5
    move-object/from16 v0, p3

    #@1e7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@1ea
    goto :goto_6

    #@1eb
    .line 231
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v9    # "_arg2":I
    .end local v12    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_d
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@1ee
    move-object/from16 v0, p2

    #@1f0
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f3
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f6
    move-result v2

    #@1f7
    .line 234
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@1f9
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    #@1fc
    move-result v14

    #@1fd
    .line 235
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@200
    .line 236
    if-eqz v14, :cond_7

    #@202
    const/4 v15, 0x1

    #@203
    :goto_7
    move-object/from16 v0, p3

    #@205
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@208
    .line 237
    const/4 v15, 0x1

    #@209
    return v15

    #@20a
    .line 236
    :cond_7
    const/4 v15, 0x0

    #@20b
    goto :goto_7

    #@20c
    .line 241
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_e
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@20f
    move-object/from16 v0, p2

    #@211
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@214
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v2

    #@218
    .line 244
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@21a
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    #@21d
    move-result v14

    #@21e
    .line 245
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@221
    .line 246
    if-eqz v14, :cond_8

    #@223
    const/4 v15, 0x1

    #@224
    :goto_8
    move-object/from16 v0, p3

    #@226
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@229
    .line 247
    const/4 v15, 0x1

    #@22a
    return v15

    #@22b
    .line 246
    :cond_8
    const/4 v15, 0x0

    #@22c
    goto :goto_8

    #@22d
    .line 251
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_f
    const-string/jumbo v15, "com.android.internal.widget.ILockSettings"

    #@230
    move-object/from16 v0, p2

    #@232
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@235
    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@238
    move-result v2

    #@239
    .line 254
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@23b
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    #@23e
    move-result v14

    #@23f
    .line 255
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@242
    .line 256
    if-eqz v14, :cond_9

    #@244
    const/4 v15, 0x1

    #@245
    :goto_9
    move-object/from16 v0, p3

    #@247
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@24a
    .line 257
    const/4 v15, 0x1

    #@24b
    return v15

    #@24c
    .line 256
    :cond_9
    const/4 v15, 0x0

    #@24d
    goto :goto_9

    #@24e
    .line 39
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
