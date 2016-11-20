.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final TRANSACTION_addSubInfoRecord:I = 0x9

.field static final TRANSACTION_clearDefaultsForInactiveSubIds:I = 0x1b

.field static final TRANSACTION_clearSubInfo:I = 0x13

.field static final TRANSACTION_getActiveSubIdList:I = 0x1c

.field static final TRANSACTION_getActiveSubInfoCount:I = 0x7

.field static final TRANSACTION_getActiveSubInfoCountMax:I = 0x8

.field static final TRANSACTION_getActiveSubscriptionInfo:I = 0x3

.field static final TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x4

.field static final TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x5

.field static final TRANSACTION_getActiveSubscriptionInfoList:I = 0x6

.field static final TRANSACTION_getAllSubInfoCount:I = 0x2

.field static final TRANSACTION_getAllSubInfoList:I = 0x1

.field static final TRANSACTION_getDefaultDataSubId:I = 0x15

.field static final TRANSACTION_getDefaultSmsSubId:I = 0x19

.field static final TRANSACTION_getDefaultSubId:I = 0x12

.field static final TRANSACTION_getDefaultVoiceSubId:I = 0x17

.field static final TRANSACTION_getPhoneId:I = 0x14

.field static final TRANSACTION_getSimStateForSlotIdx:I = 0x1f

.field static final TRANSACTION_getSlotId:I = 0x10

.field static final TRANSACTION_getSubId:I = 0x11

.field static final TRANSACTION_getSubscriptionProperty:I = 0x1e

.field static final TRANSACTION_isActiveSubId:I = 0x20

.field static final TRANSACTION_setDataRoaming:I = 0xf

.field static final TRANSACTION_setDefaultDataSubId:I = 0x16

.field static final TRANSACTION_setDefaultSmsSubId:I = 0x1a

.field static final TRANSACTION_setDefaultVoiceSubId:I = 0x18

.field static final TRANSACTION_setDisplayName:I = 0xb

.field static final TRANSACTION_setDisplayNameUsingSrc:I = 0xd

.field static final TRANSACTION_setDisplayNumber:I = 0xe

.field static final TRANSACTION_setIconTint:I = 0xa

.field static final TRANSACTION_setSimProvisioningStatus:I = 0xc

.field static final TRANSACTION_setSubscriptionProperty:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.telephony.ISub"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ISub"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/telephony/ISub;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 393
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 50
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    #@23
    move-result-object v12

    #@24
    .line 51
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 52
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2c
    .line 53
    const/4 v15, 0x1

    #@2d
    return v15

    #@2e
    .line 57
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :sswitch_2
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 60
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoCount(Ljava/lang/String;)I

    #@3f
    move-result v9

    #@40
    .line 61
    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    .line 62
    move-object/from16 v0, p3

    #@45
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 63
    const/4 v15, 0x1

    #@49
    return v15

    #@4a
    .line 67
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":I
    :sswitch_3
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v2

    #@56
    .line 71
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    .line 72
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    #@5f
    move-result-object v10

    #@60
    .line 73
    .local v10, "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 74
    if-eqz v10, :cond_0

    #@65
    .line 75
    const/4 v15, 0x1

    #@66
    move-object/from16 v0, p3

    #@68
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 76
    const/4 v15, 0x1

    #@6c
    move-object/from16 v0, p3

    #@6e
    invoke-virtual {v10, v0, v15}, Landroid/telephony/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@71
    .line 81
    :goto_0
    const/4 v15, 0x1

    #@72
    return v15

    #@73
    .line 79
    :cond_0
    const/4 v15, 0x0

    #@74
    move-object/from16 v0, p3

    #@76
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    goto :goto_0

    #@7a
    .line 85
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Landroid/telephony/SubscriptionInfo;
    :sswitch_4
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@7d
    move-object/from16 v0, p2

    #@7f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    .line 89
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    .line 90
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8c
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    #@8f
    move-result-object v10

    #@90
    .line 91
    .restart local v10    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    .line 92
    if-eqz v10, :cond_1

    #@95
    .line 93
    const/4 v15, 0x1

    #@96
    move-object/from16 v0, p3

    #@98
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 94
    const/4 v15, 0x1

    #@9c
    move-object/from16 v0, p3

    #@9e
    invoke-virtual {v10, v0, v15}, Landroid/telephony/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@a1
    .line 99
    :goto_1
    const/4 v15, 0x1

    #@a2
    return v15

    #@a3
    .line 97
    :cond_1
    const/4 v15, 0x0

    #@a4
    move-object/from16 v0, p3

    #@a6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    goto :goto_1

    #@aa
    .line 103
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Landroid/telephony/SubscriptionInfo;
    :sswitch_5
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v2

    #@b6
    .line 107
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    .line 108
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    #@bf
    move-result-object v10

    #@c0
    .line 109
    .restart local v10    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3
    .line 110
    if-eqz v10, :cond_2

    #@c5
    .line 111
    const/4 v15, 0x1

    #@c6
    move-object/from16 v0, p3

    #@c8
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@cb
    .line 112
    const/4 v15, 0x1

    #@cc
    move-object/from16 v0, p3

    #@ce
    invoke-virtual {v10, v0, v15}, Landroid/telephony/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@d1
    .line 117
    :goto_2
    const/4 v15, 0x1

    #@d2
    return v15

    #@d3
    .line 115
    :cond_2
    const/4 v15, 0x0

    #@d4
    move-object/from16 v0, p3

    #@d6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    goto :goto_2

    #@da
    .line 121
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Landroid/telephony/SubscriptionInfo;
    :sswitch_6
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 124
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e8
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    #@eb
    move-result-object v12

    #@ec
    .line 125
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef
    .line 126
    move-object/from16 v0, p3

    #@f1
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@f4
    .line 127
    const/4 v15, 0x1

    #@f5
    return v15

    #@f6
    .line 131
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :sswitch_7
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@f9
    move-object/from16 v0, p2

    #@fb
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@101
    move-result-object v3

    #@102
    .line 134
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@104
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount(Ljava/lang/String;)I

    #@107
    move-result v9

    #@108
    .line 135
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b
    .line 136
    move-object/from16 v0, p3

    #@10d
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@110
    .line 137
    const/4 v15, 0x1

    #@111
    return v15

    #@112
    .line 141
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":I
    :sswitch_8
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCountMax()I

    #@11d
    move-result v9

    #@11e
    .line 143
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@121
    .line 144
    move-object/from16 v0, p3

    #@123
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@126
    .line 145
    const/4 v15, 0x1

    #@127
    return v15

    #@128
    .line 149
    .end local v9    # "_result":I
    :sswitch_9
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@12b
    move-object/from16 v0, p2

    #@12d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@130
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@133
    move-result-object v3

    #@134
    .line 153
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v4

    #@138
    .line 154
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    #@13a
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfoRecord(Ljava/lang/String;I)I

    #@13d
    move-result v9

    #@13e
    .line 155
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141
    .line 156
    move-object/from16 v0, p3

    #@143
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@146
    .line 157
    const/4 v15, 0x1

    #@147
    return v15

    #@148
    .line 161
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_a
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@153
    move-result v2

    #@154
    .line 165
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v4

    #@158
    .line 166
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@15a
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/ISub$Stub;->setIconTint(II)I

    #@15d
    move-result v9

    #@15e
    .line 167
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@161
    .line 168
    move-object/from16 v0, p3

    #@163
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@166
    .line 169
    const/4 v15, 0x1

    #@167
    return v15

    #@168
    .line 173
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_b
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@173
    move-result-object v3

    #@174
    .line 177
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v4

    #@178
    .line 178
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@17a
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayName(Ljava/lang/String;I)I

    #@17d
    move-result v9

    #@17e
    .line 179
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@181
    .line 180
    move-object/from16 v0, p3

    #@183
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@186
    .line 181
    const/4 v15, 0x1

    #@187
    return v15

    #@188
    .line 185
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_c
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v2

    #@194
    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@197
    move-result v4

    #@198
    .line 190
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@19a
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/ISub$Stub;->setSimProvisioningStatus(II)I

    #@19d
    move-result v9

    #@19e
    .line 191
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a1
    .line 192
    move-object/from16 v0, p3

    #@1a3
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1a6
    .line 193
    const/4 v15, 0x1

    #@1a7
    return v15

    #@1a8
    .line 197
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_d
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@1ab
    move-object/from16 v0, p2

    #@1ad
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b0
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b3
    move-result-object v3

    #@1b4
    .line 201
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b7
    move-result v4

    #@1b8
    .line 203
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1bb
    move-result-wide v6

    #@1bc
    .line 204
    .local v6, "_arg2":J
    move-object/from16 v0, p0

    #@1be
    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    #@1c1
    move-result v9

    #@1c2
    .line 205
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c5
    .line 206
    move-object/from16 v0, p3

    #@1c7
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1ca
    .line 207
    const/4 v15, 0x1

    #@1cb
    return v15

    #@1cc
    .line 211
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v9    # "_result":I
    :sswitch_e
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d4
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d7
    move-result-object v3

    #@1d8
    .line 215
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1db
    move-result v4

    #@1dc
    .line 216
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@1de
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

    #@1e1
    move-result v9

    #@1e2
    .line 217
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e5
    .line 218
    move-object/from16 v0, p3

    #@1e7
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1ea
    .line 219
    const/4 v15, 0x1

    #@1eb
    return v15

    #@1ec
    .line 223
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_f
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@1ef
    move-object/from16 v0, p2

    #@1f1
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f4
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f7
    move-result v2

    #@1f8
    .line 227
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v4

    #@1fc
    .line 228
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@1fe
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

    #@201
    move-result v9

    #@202
    .line 229
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@205
    .line 230
    move-object/from16 v0, p3

    #@207
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@20a
    .line 231
    const/4 v15, 0x1

    #@20b
    return v15

    #@20c
    .line 235
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v9    # "_result":I
    :sswitch_10
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@20f
    move-object/from16 v0, p2

    #@211
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@214
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v2

    #@218
    .line 238
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@21a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSlotId(I)I

    #@21d
    move-result v9

    #@21e
    .line 239
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@221
    .line 240
    move-object/from16 v0, p3

    #@223
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@226
    .line 241
    const/4 v15, 0x1

    #@227
    return v15

    #@228
    .line 245
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_11
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@22b
    move-object/from16 v0, p2

    #@22d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@230
    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v2

    #@234
    .line 248
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@236
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)[I

    #@239
    move-result-object v14

    #@23a
    .line 249
    .local v14, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23d
    .line 250
    move-object/from16 v0, p3

    #@23f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@242
    .line 251
    const/4 v15, 0x1

    #@243
    return v15

    #@244
    .line 255
    .end local v2    # "_arg0":I
    .end local v14    # "_result":[I
    :sswitch_12
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@247
    move-object/from16 v0, p2

    #@249
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24c
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    #@24f
    move-result v9

    #@250
    .line 257
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@253
    .line 258
    move-object/from16 v0, p3

    #@255
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@258
    .line 259
    const/4 v15, 0x1

    #@259
    return v15

    #@25a
    .line 263
    .end local v9    # "_result":I
    :sswitch_13
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@25d
    move-object/from16 v0, p2

    #@25f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@262
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->clearSubInfo()I

    #@265
    move-result v9

    #@266
    .line 265
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@269
    .line 266
    move-object/from16 v0, p3

    #@26b
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@26e
    .line 267
    const/4 v15, 0x1

    #@26f
    return v15

    #@270
    .line 271
    .end local v9    # "_result":I
    :sswitch_14
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@278
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27b
    move-result v2

    #@27c
    .line 274
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@27e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    #@281
    move-result v9

    #@282
    .line 275
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@285
    .line 276
    move-object/from16 v0, p3

    #@287
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@28a
    .line 277
    const/4 v15, 0x1

    #@28b
    return v15

    #@28c
    .line 281
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_15
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@28f
    move-object/from16 v0, p2

    #@291
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@294
    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    #@297
    move-result v9

    #@298
    .line 283
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29b
    .line 284
    move-object/from16 v0, p3

    #@29d
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2a0
    .line 285
    const/4 v15, 0x1

    #@2a1
    return v15

    #@2a2
    .line 289
    .end local v9    # "_result":I
    :sswitch_16
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v2

    #@2ae
    .line 292
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@2b0
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    #@2b3
    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b6
    .line 294
    const/4 v15, 0x1

    #@2b7
    return v15

    #@2b8
    .line 298
    .end local v2    # "_arg0":I
    :sswitch_17
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c0
    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    #@2c3
    move-result v9

    #@2c4
    .line 300
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c7
    .line 301
    move-object/from16 v0, p3

    #@2c9
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2cc
    .line 302
    const/4 v15, 0x1

    #@2cd
    return v15

    #@2ce
    .line 306
    .end local v9    # "_result":I
    :sswitch_18
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2d1
    move-object/from16 v0, p2

    #@2d3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d6
    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d9
    move-result v2

    #@2da
    .line 309
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@2dc
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    #@2df
    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e2
    .line 311
    const/4 v15, 0x1

    #@2e3
    return v15

    #@2e4
    .line 315
    .end local v2    # "_arg0":I
    :sswitch_19
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2e7
    move-object/from16 v0, p2

    #@2e9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ec
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    #@2ef
    move-result v9

    #@2f0
    .line 317
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f3
    .line 318
    move-object/from16 v0, p3

    #@2f5
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2f8
    .line 319
    const/4 v15, 0x1

    #@2f9
    return v15

    #@2fa
    .line 323
    .end local v9    # "_result":I
    :sswitch_1a
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2fd
    move-object/from16 v0, p2

    #@2ff
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@302
    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@305
    move-result v2

    #@306
    .line 326
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@308
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    #@30b
    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30e
    .line 328
    const/4 v15, 0x1

    #@30f
    return v15

    #@310
    .line 332
    .end local v2    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@313
    move-object/from16 v0, p2

    #@315
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@318
    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->clearDefaultsForInactiveSubIds()V

    #@31b
    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31e
    .line 335
    const/4 v15, 0x1

    #@31f
    return v15

    #@320
    .line 339
    :sswitch_1c
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@323
    move-object/from16 v0, p2

    #@325
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@328
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList()[I

    #@32b
    move-result-object v14

    #@32c
    .line 341
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32f
    .line 342
    move-object/from16 v0, p3

    #@331
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@334
    .line 343
    const/4 v15, 0x1

    #@335
    return v15

    #@336
    .line 347
    .end local v14    # "_result":[I
    :sswitch_1d
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@339
    move-object/from16 v0, p2

    #@33b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33e
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@341
    move-result v2

    #@342
    .line 351
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@345
    move-result-object v5

    #@346
    .line 353
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@349
    move-result-object v8

    #@34a
    .line 354
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@34c
    invoke-virtual {v0, v2, v5, v8}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@34f
    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 356
    const/4 v15, 0x1

    #@353
    return v15

    #@354
    .line 360
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@357
    move-object/from16 v0, p2

    #@359
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35c
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35f
    move-result v2

    #@360
    .line 364
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@363
    move-result-object v5

    #@364
    .line 366
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@367
    move-result-object v8

    #@368
    .line 367
    .restart local v8    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36a
    invoke-virtual {v0, v2, v5, v8}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36d
    move-result-object v11

    #@36e
    .line 368
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@371
    .line 369
    move-object/from16 v0, p3

    #@373
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@376
    .line 370
    const/4 v15, 0x1

    #@377
    return v15

    #@378
    .line 374
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@37b
    move-object/from16 v0, p2

    #@37d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@380
    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@383
    move-result v2

    #@384
    .line 377
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@386
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSimStateForSlotIdx(I)I

    #@389
    move-result v9

    #@38a
    .line 378
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38d
    .line 379
    move-object/from16 v0, p3

    #@38f
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@392
    .line 380
    const/4 v15, 0x1

    #@393
    return v15

    #@394
    .line 384
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_20
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@397
    move-object/from16 v0, p2

    #@399
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39c
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39f
    move-result v2

    #@3a0
    .line 387
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@3a2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(I)Z

    #@3a5
    move-result v13

    #@3a6
    .line 388
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a9
    .line 389
    if-eqz v13, :cond_3

    #@3ab
    const/4 v15, 0x1

    #@3ac
    :goto_3
    move-object/from16 v0, p3

    #@3ae
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@3b1
    .line 390
    const/4 v15, 0x1

    #@3b2
    return v15

    #@3b3
    .line 389
    :cond_3
    const/4 v15, 0x0

    #@3b4
    goto :goto_3

    #@3b5
    .line 38
    nop

    #@3b6
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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
