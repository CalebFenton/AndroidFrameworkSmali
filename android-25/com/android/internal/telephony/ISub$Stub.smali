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

.field static final TRANSACTION_clearDefaultsForInactiveSubIds:I = 0x1a

.field static final TRANSACTION_clearSubInfo:I = 0x12

.field static final TRANSACTION_getActiveSubIdList:I = 0x1b

.field static final TRANSACTION_getActiveSubInfoCount:I = 0x7

.field static final TRANSACTION_getActiveSubInfoCountMax:I = 0x8

.field static final TRANSACTION_getActiveSubscriptionInfo:I = 0x3

.field static final TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x4

.field static final TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x5

.field static final TRANSACTION_getActiveSubscriptionInfoList:I = 0x6

.field static final TRANSACTION_getAllSubInfoCount:I = 0x2

.field static final TRANSACTION_getAllSubInfoList:I = 0x1

.field static final TRANSACTION_getDefaultDataSubId:I = 0x14

.field static final TRANSACTION_getDefaultSmsSubId:I = 0x18

.field static final TRANSACTION_getDefaultSubId:I = 0x11

.field static final TRANSACTION_getDefaultVoiceSubId:I = 0x16

.field static final TRANSACTION_getPhoneId:I = 0x13

.field static final TRANSACTION_getSimStateForSlotIdx:I = 0x1e

.field static final TRANSACTION_getSlotId:I = 0xf

.field static final TRANSACTION_getSubId:I = 0x10

.field static final TRANSACTION_getSubscriptionProperty:I = 0x1d

.field static final TRANSACTION_isActiveSubId:I = 0x1f

.field static final TRANSACTION_setDataRoaming:I = 0xe

.field static final TRANSACTION_setDefaultDataSubId:I = 0x15

.field static final TRANSACTION_setDefaultSmsSubId:I = 0x19

.field static final TRANSACTION_setDefaultVoiceSubId:I = 0x17

.field static final TRANSACTION_setDisplayName:I = 0xb

.field static final TRANSACTION_setDisplayNameUsingSrc:I = 0xc

.field static final TRANSACTION_setDisplayNumber:I = 0xd

.field static final TRANSACTION_setIconTint:I = 0xa

.field static final TRANSACTION_setSubscriptionProperty:I = 0x1c


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
    .line 381
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@193
    move-result-object v3

    #@194
    .line 189
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@197
    move-result v4

    #@198
    .line 191
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@19b
    move-result-wide v6

    #@19c
    .line 192
    .local v6, "_arg2":J
    move-object/from16 v0, p0

    #@19e
    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    #@1a1
    move-result v9

    #@1a2
    .line 193
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a5
    .line 194
    move-object/from16 v0, p3

    #@1a7
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1aa
    .line 195
    const/4 v15, 0x1

    #@1ab
    return v15

    #@1ac
    .line 199
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v9    # "_result":I
    :sswitch_d
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@1af
    move-object/from16 v0, p2

    #@1b1
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b7
    move-result-object v3

    #@1b8
    .line 203
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bb
    move-result v4

    #@1bc
    .line 204
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@1be
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

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
    .end local v9    # "_result":I
    :sswitch_e
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d4
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v2

    #@1d8
    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1db
    move-result v4

    #@1dc
    .line 216
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@1de
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

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
    .end local v2    # "_arg0":I
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
    .line 226
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1fa
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSlotId(I)I

    #@1fd
    move-result v9

    #@1fe
    .line 227
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@201
    .line 228
    move-object/from16 v0, p3

    #@203
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@206
    .line 229
    const/4 v15, 0x1

    #@207
    return v15

    #@208
    .line 233
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_10
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@20b
    move-object/from16 v0, p2

    #@20d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@210
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v2

    #@214
    .line 236
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@216
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)[I

    #@219
    move-result-object v14

    #@21a
    .line 237
    .local v14, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21d
    .line 238
    move-object/from16 v0, p3

    #@21f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@222
    .line 239
    const/4 v15, 0x1

    #@223
    return v15

    #@224
    .line 243
    .end local v2    # "_arg0":I
    .end local v14    # "_result":[I
    :sswitch_11
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@227
    move-object/from16 v0, p2

    #@229
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    #@22f
    move-result v9

    #@230
    .line 245
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@233
    .line 246
    move-object/from16 v0, p3

    #@235
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@238
    .line 247
    const/4 v15, 0x1

    #@239
    return v15

    #@23a
    .line 251
    .end local v9    # "_result":I
    :sswitch_12
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@23d
    move-object/from16 v0, p2

    #@23f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@242
    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->clearSubInfo()I

    #@245
    move-result v9

    #@246
    .line 253
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@249
    .line 254
    move-object/from16 v0, p3

    #@24b
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@24e
    .line 255
    const/4 v15, 0x1

    #@24f
    return v15

    #@250
    .line 259
    .end local v9    # "_result":I
    :sswitch_13
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@253
    move-object/from16 v0, p2

    #@255
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@258
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25b
    move-result v2

    #@25c
    .line 262
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@25e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    #@261
    move-result v9

    #@262
    .line 263
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@265
    .line 264
    move-object/from16 v0, p3

    #@267
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@26a
    .line 265
    const/4 v15, 0x1

    #@26b
    return v15

    #@26c
    .line 269
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_14
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    #@277
    move-result v9

    #@278
    .line 271
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27b
    .line 272
    move-object/from16 v0, p3

    #@27d
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@280
    .line 273
    const/4 v15, 0x1

    #@281
    return v15

    #@282
    .line 277
    .end local v9    # "_result":I
    :sswitch_15
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28a
    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28d
    move-result v2

    #@28e
    .line 280
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@290
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    #@293
    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@296
    .line 282
    const/4 v15, 0x1

    #@297
    return v15

    #@298
    .line 286
    .end local v2    # "_arg0":I
    :sswitch_16
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@29b
    move-object/from16 v0, p2

    #@29d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a0
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    #@2a3
    move-result v9

    #@2a4
    .line 288
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a7
    .line 289
    move-object/from16 v0, p3

    #@2a9
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2ac
    .line 290
    const/4 v15, 0x1

    #@2ad
    return v15

    #@2ae
    .line 294
    .end local v9    # "_result":I
    :sswitch_17
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2b1
    move-object/from16 v0, p2

    #@2b3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b6
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b9
    move-result v2

    #@2ba
    .line 297
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@2bc
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    #@2bf
    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c2
    .line 299
    const/4 v15, 0x1

    #@2c3
    return v15

    #@2c4
    .line 303
    .end local v2    # "_arg0":I
    :sswitch_18
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2c7
    move-object/from16 v0, p2

    #@2c9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cc
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    #@2cf
    move-result v9

    #@2d0
    .line 305
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d3
    .line 306
    move-object/from16 v0, p3

    #@2d5
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2d8
    .line 307
    const/4 v15, 0x1

    #@2d9
    return v15

    #@2da
    .line 311
    .end local v9    # "_result":I
    :sswitch_19
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2dd
    move-object/from16 v0, p2

    #@2df
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e5
    move-result v2

    #@2e6
    .line 314
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@2e8
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    #@2eb
    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ee
    .line 316
    const/4 v15, 0x1

    #@2ef
    return v15

    #@2f0
    .line 320
    .end local v2    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@2f3
    move-object/from16 v0, p2

    #@2f5
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f8
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->clearDefaultsForInactiveSubIds()V

    #@2fb
    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fe
    .line 323
    const/4 v15, 0x1

    #@2ff
    return v15

    #@300
    .line 327
    :sswitch_1b
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@303
    move-object/from16 v0, p2

    #@305
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@308
    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList()[I

    #@30b
    move-result-object v14

    #@30c
    .line 329
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30f
    .line 330
    move-object/from16 v0, p3

    #@311
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@314
    .line 331
    const/4 v15, 0x1

    #@315
    return v15

    #@316
    .line 335
    .end local v14    # "_result":[I
    :sswitch_1c
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@319
    move-object/from16 v0, p2

    #@31b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31e
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@321
    move-result v2

    #@322
    .line 339
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@325
    move-result-object v5

    #@326
    .line 341
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@329
    move-result-object v8

    #@32a
    .line 342
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@32c
    invoke-virtual {v0, v2, v5, v8}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@32f
    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@332
    .line 344
    const/4 v15, 0x1

    #@333
    return v15

    #@334
    .line 348
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@337
    move-object/from16 v0, p2

    #@339
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33c
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33f
    move-result v2

    #@340
    .line 352
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@343
    move-result-object v5

    #@344
    .line 354
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@347
    move-result-object v8

    #@348
    .line 355
    .restart local v8    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@34a
    invoke-virtual {v0, v2, v5, v8}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34d
    move-result-object v11

    #@34e
    .line 356
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@351
    .line 357
    move-object/from16 v0, p3

    #@353
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@356
    .line 358
    const/4 v15, 0x1

    #@357
    return v15

    #@358
    .line 362
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@35b
    move-object/from16 v0, p2

    #@35d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@360
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@363
    move-result v2

    #@364
    .line 365
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@366
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSimStateForSlotIdx(I)I

    #@369
    move-result v9

    #@36a
    .line 366
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36d
    .line 367
    move-object/from16 v0, p3

    #@36f
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@372
    .line 368
    const/4 v15, 0x1

    #@373
    return v15

    #@374
    .line 372
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_1f
    const-string/jumbo v15, "com.android.internal.telephony.ISub"

    #@377
    move-object/from16 v0, p2

    #@379
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37c
    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37f
    move-result v2

    #@380
    .line 375
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@382
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(I)Z

    #@385
    move-result v13

    #@386
    .line 376
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@389
    .line 377
    if-eqz v13, :cond_3

    #@38b
    const/4 v15, 0x1

    #@38c
    :goto_3
    move-object/from16 v0, p3

    #@38e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@391
    .line 378
    const/4 v15, 0x1

    #@392
    return v15

    #@393
    .line 377
    :cond_3
    const/4 v15, 0x0

    #@394
    goto :goto_3

    #@395
    .line 38
    nop

    #@396
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
