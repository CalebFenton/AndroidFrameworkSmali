.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_factoryReset:I = 0x11

.field static final TRANSACTION_getNetworkPolicies:I = 0xa

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0xf

.field static final TRANSACTION_getRestrictBackground:I = 0xd

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isNetworkMetered:I = 0x10

.field static final TRANSACTION_isUidForeground:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0xe

.field static final TRANSACTION_setNetworkPolicies:I = 0x9

.field static final TRANSACTION_setRestrictBackground:I = 0xc

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_snoozeLimit:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.INetworkPolicyManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.INetworkPolicyManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/INetworkPolicyManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 236
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 56
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v8

    #@22
    .line 57
    .local v8, "_arg1":I
    invoke-virtual {p0, v1, v8}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    #@25
    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 59
    const/4 v14, 0x1

    #@29
    return v14

    #@2a
    .line 63
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_2
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v1

    #@36
    .line 67
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v8

    #@3a
    .line 68
    .restart local v8    # "_arg1":I
    invoke-virtual {p0, v1, v8}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    #@3d
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 70
    const/4 v14, 0x1

    #@41
    return v14

    #@42
    .line 74
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_3
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v1

    #@4e
    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v8

    #@52
    .line 79
    .restart local v8    # "_arg1":I
    invoke-virtual {p0, v1, v8}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    #@55
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58
    .line 81
    const/4 v14, 0x1

    #@59
    return v14

    #@5a
    .line 85
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_4
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v1

    #@66
    .line 88
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    #@69
    move-result v9

    #@6a
    .line 89
    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d
    .line 90
    move-object/from16 v0, p3

    #@6f
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 91
    const/4 v14, 0x1

    #@73
    return v14

    #@74
    .line 95
    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_5
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v1

    #@80
    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    #@83
    move-result-object v12

    #@84
    .line 99
    .local v12, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 100
    move-object/from16 v0, p3

    #@89
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeIntArray([I)V

    #@8c
    .line 101
    const/4 v14, 0x1

    #@8d
    return v14

    #@8e
    .line 105
    .end local v1    # "_arg0":I
    .end local v12    # "_result":[I
    :sswitch_6
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v1

    #@9a
    .line 108
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    #@9d
    move-result v11

    #@9e
    .line 109
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 110
    if-eqz v11, :cond_0

    #@a3
    const/4 v14, 0x1

    #@a4
    :goto_0
    move-object/from16 v0, p3

    #@a6
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    .line 111
    const/4 v14, 0x1

    #@aa
    return v14

    #@ab
    .line 110
    :cond_0
    const/4 v14, 0x0

    #@ac
    goto :goto_0

    #@ad
    .line 115
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Z
    :sswitch_7
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v14

    #@b9
    invoke-static {v14}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    #@bc
    move-result-object v2

    #@bd
    .line 118
    .local v2, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p0, v2}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    #@c0
    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3
    .line 120
    const/4 v14, 0x1

    #@c4
    return v14

    #@c5
    .line 124
    .end local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_8
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@c8
    move-object/from16 v0, p2

    #@ca
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d0
    move-result-object v14

    #@d1
    invoke-static {v14}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    #@d4
    move-result-object v2

    #@d5
    .line 127
    .restart local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p0, v2}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    #@d8
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    .line 129
    const/4 v14, 0x1

    #@dc
    return v14

    #@dd
    .line 133
    .end local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_9
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 135
    sget-object v14, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@ec
    move-result-object v7

    #@ed
    check-cast v7, [Landroid/net/NetworkPolicy;

    #@ef
    .line 136
    .local v7, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v7}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@f2
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f5
    .line 138
    const/4 v14, 0x1

    #@f6
    return v14

    #@f7
    .line 142
    .end local v7    # "_arg0":[Landroid/net/NetworkPolicy;
    :sswitch_a
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@fa
    move-object/from16 v0, p2

    #@fc
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102
    move-result-object v5

    #@103
    .line 145
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@106
    move-result-object v13

    #@107
    .line 146
    .local v13, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10a
    .line 147
    const/4 v14, 0x1

    #@10b
    move-object/from16 v0, p3

    #@10d
    invoke-virtual {v0, v13, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@110
    .line 148
    const/4 v14, 0x1

    #@111
    return v14

    #@112
    .line 152
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":[Landroid/net/NetworkPolicy;
    :sswitch_b
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v14

    #@11e
    if-eqz v14, :cond_1

    #@120
    .line 155
    sget-object v14, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@127
    move-result-object v4

    #@128
    check-cast v4, Landroid/net/NetworkTemplate;

    #@12a
    .line 160
    :goto_1
    invoke-virtual {p0, v4}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    #@12d
    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@130
    .line 162
    const/4 v14, 0x1

    #@131
    return v14

    #@132
    .line 158
    :cond_1
    const/4 v4, 0x0

    #@133
    .local v4, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_1

    #@134
    .line 166
    .end local v4    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_c
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@137
    move-object/from16 v0, p2

    #@139
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13f
    move-result v14

    #@140
    if-eqz v14, :cond_2

    #@142
    const/4 v6, 0x1

    #@143
    .line 169
    .local v6, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v6}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    #@146
    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@149
    .line 171
    const/4 v14, 0x1

    #@14a
    return v14

    #@14b
    .line 168
    .end local v6    # "_arg0":Z
    :cond_2
    const/4 v6, 0x0

    #@14c
    .restart local v6    # "_arg0":Z
    goto :goto_2

    #@14d
    .line 175
    .end local v6    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@150
    move-object/from16 v0, p2

    #@152
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155
    .line 176
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    #@158
    move-result v11

    #@159
    .line 177
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    .line 178
    if-eqz v11, :cond_3

    #@15e
    const/4 v14, 0x1

    #@15f
    :goto_3
    move-object/from16 v0, p3

    #@161
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    .line 179
    const/4 v14, 0x1

    #@165
    return v14

    #@166
    .line 178
    :cond_3
    const/4 v14, 0x0

    #@167
    goto :goto_3

    #@168
    .line 183
    .end local v11    # "_result":Z
    :sswitch_e
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v14

    #@174
    if-eqz v14, :cond_4

    #@176
    const/4 v6, 0x1

    #@177
    .line 186
    .restart local v6    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v6}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    #@17a
    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 188
    const/4 v14, 0x1

    #@17e
    return v14

    #@17f
    .line 185
    .end local v6    # "_arg0":Z
    :cond_4
    const/4 v6, 0x0

    #@180
    .restart local v6    # "_arg0":Z
    goto :goto_4

    #@181
    .line 192
    .end local v6    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v14

    #@18d
    if-eqz v14, :cond_5

    #@18f
    .line 195
    sget-object v14, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@191
    move-object/from16 v0, p2

    #@193
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@196
    move-result-object v3

    #@197
    check-cast v3, Landroid/net/NetworkState;

    #@199
    .line 200
    :goto_5
    invoke-virtual {p0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    #@19c
    move-result-object v10

    #@19d
    .line 201
    .local v10, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0
    .line 202
    if-eqz v10, :cond_6

    #@1a2
    .line 203
    const/4 v14, 0x1

    #@1a3
    move-object/from16 v0, p3

    #@1a5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@1a8
    .line 204
    const/4 v14, 0x1

    #@1a9
    move-object/from16 v0, p3

    #@1ab
    invoke-virtual {v10, v0, v14}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ae
    .line 209
    :goto_6
    const/4 v14, 0x1

    #@1af
    return v14

    #@1b0
    .line 198
    .end local v10    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_5
    const/4 v3, 0x0

    #@1b1
    .local v3, "_arg0":Landroid/net/NetworkState;
    goto :goto_5

    #@1b2
    .line 207
    .end local v3    # "_arg0":Landroid/net/NetworkState;
    .restart local v10    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_6
    const/4 v14, 0x0

    #@1b3
    move-object/from16 v0, p3

    #@1b5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@1b8
    goto :goto_6

    #@1b9
    .line 213
    .end local v10    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_10
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@1bc
    move-object/from16 v0, p2

    #@1be
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c1
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v14

    #@1c5
    if-eqz v14, :cond_7

    #@1c7
    .line 216
    sget-object v14, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ce
    move-result-object v3

    #@1cf
    check-cast v3, Landroid/net/NetworkState;

    #@1d1
    .line 221
    :goto_7
    invoke-virtual {p0, v3}, Landroid/net/INetworkPolicyManager$Stub;->isNetworkMetered(Landroid/net/NetworkState;)Z

    #@1d4
    move-result v11

    #@1d5
    .line 222
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 223
    if-eqz v11, :cond_8

    #@1da
    const/4 v14, 0x1

    #@1db
    :goto_8
    move-object/from16 v0, p3

    #@1dd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@1e0
    .line 224
    const/4 v14, 0x1

    #@1e1
    return v14

    #@1e2
    .line 219
    .end local v11    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    #@1e3
    .restart local v3    # "_arg0":Landroid/net/NetworkState;
    goto :goto_7

    #@1e4
    .line 223
    .end local v3    # "_arg0":Landroid/net/NetworkState;
    .restart local v11    # "_result":Z
    :cond_8
    const/4 v14, 0x0

    #@1e5
    goto :goto_8

    #@1e6
    .line 228
    .end local v11    # "_result":Z
    :sswitch_11
    const-string/jumbo v14, "android.net.INetworkPolicyManager"

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ee
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f1
    move-result-object v5

    #@1f2
    .line 231
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    #@1f5
    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f8
    .line 233
    const/4 v14, 0x1

    #@1f9
    return v14

    #@1fa
    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
