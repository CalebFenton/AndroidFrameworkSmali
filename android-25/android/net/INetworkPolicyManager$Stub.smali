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

.field static final TRANSACTION_addRestrictBackgroundWhitelistedUid:I = 0x10

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_factoryReset:I = 0x17

.field static final TRANSACTION_getNetworkPolicies:I = 0xb

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0x15

.field static final TRANSACTION_getRestrictBackground:I = 0xe

.field static final TRANSACTION_getRestrictBackgroundByCaller:I = 0x13

.field static final TRANSACTION_getRestrictBackgroundWhitelistedUids:I = 0x12

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isNetworkMetered:I = 0x16

.field static final TRANSACTION_isUidForeground:I = 0x6

.field static final TRANSACTION_onTetheringChanged:I = 0xf

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_removeRestrictBackgroundWhitelistedUid:I = 0x11

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setConnectivityListener:I = 0x7

.field static final TRANSACTION_setDeviceIdleMode:I = 0x14

.field static final TRANSACTION_setNetworkPolicies:I = 0xa

.field static final TRANSACTION_setRestrictBackground:I = 0xd

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_snoozeLimit:I = 0xc

.field static final TRANSACTION_unregisterListener:I = 0x9


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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 290
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v1, v8}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    #@27
    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 59
    const/4 v15, 0x1

    #@2b
    return v15

    #@2c
    .line 63
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_2
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@2f
    move-object/from16 v0, p2

    #@31
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    .line 67
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v8

    #@3c
    .line 68
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v1, v8}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    #@41
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    .line 70
    const/4 v15, 0x1

    #@45
    return v15

    #@46
    .line 74
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_3
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v1

    #@52
    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v8

    #@56
    .line 79
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@58
    invoke-virtual {v0, v1, v8}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    #@5b
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e
    .line 81
    const/4 v15, 0x1

    #@5f
    return v15

    #@60
    .line 85
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_4
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v1

    #@6c
    .line 88
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    #@71
    move-result v10

    #@72
    .line 89
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 90
    move-object/from16 v0, p3

    #@77
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 91
    const/4 v15, 0x1

    #@7b
    return v15

    #@7c
    .line 95
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_5
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v1

    #@88
    .line 98
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    #@8d
    move-result-object v13

    #@8e
    .line 99
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 100
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    #@96
    .line 101
    const/4 v15, 0x1

    #@97
    return v15

    #@98
    .line 105
    .end local v1    # "_arg0":I
    .end local v13    # "_result":[I
    :sswitch_6
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@9b
    move-object/from16 v0, p2

    #@9d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v1

    #@a4
    .line 108
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    #@a9
    move-result v12

    #@aa
    .line 109
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    .line 110
    if-eqz v12, :cond_0

    #@af
    const/4 v15, 0x1

    #@b0
    :goto_0
    move-object/from16 v0, p3

    #@b2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@b5
    .line 111
    const/4 v15, 0x1

    #@b6
    return v15

    #@b7
    .line 110
    :cond_0
    const/4 v15, 0x0

    #@b8
    goto :goto_0

    #@b9
    .line 115
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_7
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@bc
    move-object/from16 v0, p2

    #@be
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c4
    move-result-object v15

    #@c5
    invoke-static {v15}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    #@c8
    move-result-object v2

    #@c9
    .line 118
    .local v2, "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v0, v2}, Landroid/net/INetworkPolicyManager$Stub;->setConnectivityListener(Landroid/net/INetworkPolicyListener;)V

    #@ce
    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 120
    const/4 v15, 0x1

    #@d2
    return v15

    #@d3
    .line 124
    .end local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_8
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@d6
    move-object/from16 v0, p2

    #@d8
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@de
    move-result-object v15

    #@df
    invoke-static {v15}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    #@e2
    move-result-object v2

    #@e3
    .line 127
    .restart local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v0, v2}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    #@e8
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb
    .line 129
    const/4 v15, 0x1

    #@ec
    return v15

    #@ed
    .line 133
    .end local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_9
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@f0
    move-object/from16 v0, p2

    #@f2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f5
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f8
    move-result-object v15

    #@f9
    invoke-static {v15}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    #@fc
    move-result-object v2

    #@fd
    .line 136
    .restart local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    #@ff
    invoke-virtual {v0, v2}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    #@102
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 138
    const/4 v15, 0x1

    #@106
    return v15

    #@107
    .line 142
    .end local v2    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_a
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@10a
    move-object/from16 v0, p2

    #@10c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 144
    sget-object v15, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@111
    move-object/from16 v0, p2

    #@113
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@116
    move-result-object v7

    #@117
    check-cast v7, [Landroid/net/NetworkPolicy;

    #@119
    .line 145
    .local v7, "_arg0":[Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@11b
    invoke-virtual {v0, v7}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@11e
    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@121
    .line 147
    const/4 v15, 0x1

    #@122
    return v15

    #@123
    .line 151
    .end local v7    # "_arg0":[Landroid/net/NetworkPolicy;
    :sswitch_b
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12e
    move-result-object v5

    #@12f
    .line 154
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@131
    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@134
    move-result-object v14

    #@135
    .line 155
    .local v14, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    .line 156
    const/4 v15, 0x1

    #@139
    move-object/from16 v0, p3

    #@13b
    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@13e
    .line 157
    const/4 v15, 0x1

    #@13f
    return v15

    #@140
    .line 161
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":[Landroid/net/NetworkPolicy;
    :sswitch_c
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@143
    move-object/from16 v0, p2

    #@145
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v15

    #@14c
    if-eqz v15, :cond_1

    #@14e
    .line 164
    sget-object v15, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@150
    move-object/from16 v0, p2

    #@152
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@155
    move-result-object v4

    #@156
    check-cast v4, Landroid/net/NetworkTemplate;

    #@158
    .line 169
    :goto_1
    move-object/from16 v0, p0

    #@15a
    invoke-virtual {v0, v4}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    #@15d
    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@160
    .line 171
    const/4 v15, 0x1

    #@161
    return v15

    #@162
    .line 167
    :cond_1
    const/4 v4, 0x0

    #@163
    .local v4, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_1

    #@164
    .line 175
    .end local v4    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_d
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@167
    move-object/from16 v0, p2

    #@169
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16c
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v15

    #@170
    if-eqz v15, :cond_2

    #@172
    const/4 v6, 0x1

    #@173
    .line 178
    .local v6, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    #@175
    invoke-virtual {v0, v6}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    #@178
    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17b
    .line 180
    const/4 v15, 0x1

    #@17c
    return v15

    #@17d
    .line 177
    .end local v6    # "_arg0":Z
    :cond_2
    const/4 v6, 0x0

    #@17e
    goto :goto_2

    #@17f
    .line 184
    :sswitch_e
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@182
    move-object/from16 v0, p2

    #@184
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@187
    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    #@18a
    move-result v12

    #@18b
    .line 186
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18e
    .line 187
    if-eqz v12, :cond_3

    #@190
    const/4 v15, 0x1

    #@191
    :goto_3
    move-object/from16 v0, p3

    #@193
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@196
    .line 188
    const/4 v15, 0x1

    #@197
    return v15

    #@198
    .line 187
    :cond_3
    const/4 v15, 0x0

    #@199
    goto :goto_3

    #@19a
    .line 192
    .end local v12    # "_result":Z
    :sswitch_f
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a2
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a5
    move-result-object v5

    #@1a6
    .line 196
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9
    move-result v15

    #@1aa
    if-eqz v15, :cond_4

    #@1ac
    const/4 v9, 0x1

    #@1ad
    .line 197
    .local v9, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@1af
    invoke-virtual {v0, v5, v9}, Landroid/net/INetworkPolicyManager$Stub;->onTetheringChanged(Ljava/lang/String;Z)V

    #@1b2
    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b5
    .line 199
    const/4 v15, 0x1

    #@1b6
    return v15

    #@1b7
    .line 196
    .end local v9    # "_arg1":Z
    :cond_4
    const/4 v9, 0x0

    #@1b8
    goto :goto_4

    #@1b9
    .line 203
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@1bc
    move-object/from16 v0, p2

    #@1be
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c1
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v1

    #@1c5
    .line 206
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@1c7
    invoke-virtual {v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addRestrictBackgroundWhitelistedUid(I)V

    #@1ca
    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd
    .line 208
    const/4 v15, 0x1

    #@1ce
    return v15

    #@1cf
    .line 212
    .end local v1    # "_arg0":I
    :sswitch_11
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v1

    #@1db
    .line 215
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@1dd
    invoke-virtual {v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeRestrictBackgroundWhitelistedUid(I)V

    #@1e0
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e3
    .line 217
    const/4 v15, 0x1

    #@1e4
    return v15

    #@1e5
    .line 221
    .end local v1    # "_arg0":I
    :sswitch_12
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@1e8
    move-object/from16 v0, p2

    #@1ea
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ed
    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundWhitelistedUids()[I

    #@1f0
    move-result-object v13

    #@1f1
    .line 223
    .restart local v13    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f4
    .line 224
    move-object/from16 v0, p3

    #@1f6
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1f9
    .line 225
    const/4 v15, 0x1

    #@1fa
    return v15

    #@1fb
    .line 229
    .end local v13    # "_result":[I
    :sswitch_13
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@203
    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    #@206
    move-result v10

    #@207
    .line 231
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20a
    .line 232
    move-object/from16 v0, p3

    #@20c
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@20f
    .line 233
    const/4 v15, 0x1

    #@210
    return v15

    #@211
    .line 237
    .end local v10    # "_result":I
    :sswitch_14
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@214
    move-object/from16 v0, p2

    #@216
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@219
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21c
    move-result v15

    #@21d
    if-eqz v15, :cond_5

    #@21f
    const/4 v6, 0x1

    #@220
    .line 240
    .restart local v6    # "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@222
    invoke-virtual {v0, v6}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    #@225
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@228
    .line 242
    const/4 v15, 0x1

    #@229
    return v15

    #@22a
    .line 239
    .end local v6    # "_arg0":Z
    :cond_5
    const/4 v6, 0x0

    #@22b
    goto :goto_5

    #@22c
    .line 246
    :sswitch_15
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@22f
    move-object/from16 v0, p2

    #@231
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@234
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v15

    #@238
    if-eqz v15, :cond_6

    #@23a
    .line 249
    sget-object v15, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23c
    move-object/from16 v0, p2

    #@23e
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@241
    move-result-object v3

    #@242
    check-cast v3, Landroid/net/NetworkState;

    #@244
    .line 254
    :goto_6
    move-object/from16 v0, p0

    #@246
    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    #@249
    move-result-object v11

    #@24a
    .line 255
    .local v11, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24d
    .line 256
    if-eqz v11, :cond_7

    #@24f
    .line 257
    const/4 v15, 0x1

    #@250
    move-object/from16 v0, p3

    #@252
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@255
    .line 258
    const/4 v15, 0x1

    #@256
    move-object/from16 v0, p3

    #@258
    invoke-virtual {v11, v0, v15}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@25b
    .line 263
    :goto_7
    const/4 v15, 0x1

    #@25c
    return v15

    #@25d
    .line 252
    .end local v11    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_6
    const/4 v3, 0x0

    #@25e
    .local v3, "_arg0":Landroid/net/NetworkState;
    goto :goto_6

    #@25f
    .line 261
    .end local v3    # "_arg0":Landroid/net/NetworkState;
    .restart local v11    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_7
    const/4 v15, 0x0

    #@260
    move-object/from16 v0, p3

    #@262
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@265
    goto :goto_7

    #@266
    .line 267
    .end local v11    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_16
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v15

    #@272
    if-eqz v15, :cond_8

    #@274
    .line 270
    sget-object v15, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@276
    move-object/from16 v0, p2

    #@278
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27b
    move-result-object v3

    #@27c
    check-cast v3, Landroid/net/NetworkState;

    #@27e
    .line 275
    :goto_8
    move-object/from16 v0, p0

    #@280
    invoke-virtual {v0, v3}, Landroid/net/INetworkPolicyManager$Stub;->isNetworkMetered(Landroid/net/NetworkState;)Z

    #@283
    move-result v12

    #@284
    .line 276
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@287
    .line 277
    if-eqz v12, :cond_9

    #@289
    const/4 v15, 0x1

    #@28a
    :goto_9
    move-object/from16 v0, p3

    #@28c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@28f
    .line 278
    const/4 v15, 0x1

    #@290
    return v15

    #@291
    .line 273
    .end local v12    # "_result":Z
    :cond_8
    const/4 v3, 0x0

    #@292
    .restart local v3    # "_arg0":Landroid/net/NetworkState;
    goto :goto_8

    #@293
    .line 277
    .end local v3    # "_arg0":Landroid/net/NetworkState;
    .restart local v12    # "_result":Z
    :cond_9
    const/4 v15, 0x0

    #@294
    goto :goto_9

    #@295
    .line 282
    .end local v12    # "_result":Z
    :sswitch_17
    const-string/jumbo v15, "android.net.INetworkPolicyManager"

    #@298
    move-object/from16 v0, p2

    #@29a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29d
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a0
    move-result-object v5

    #@2a1
    .line 285
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a3
    invoke-virtual {v0, v5}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    #@2a6
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a9
    .line 287
    const/4 v15, 0x1

    #@2aa
    return v15

    #@2ab
    .line 43
    nop

    #@2ac
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
