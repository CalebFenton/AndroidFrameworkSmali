.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x15

.field static final TRANSACTION_getCompleteVoiceMailNumberForSubscriber:I = 0x16

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceIdForPhone:I = 0x3

.field static final TRANSACTION_getDeviceSvn:I = 0x5

.field static final TRANSACTION_getDeviceSvnUsingSubId:I = 0x6

.field static final TRANSACTION_getGroupIdLevel1:I = 0x9

.field static final TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xa

.field static final TRANSACTION_getIccSerialNumber:I = 0xb

.field static final TRANSACTION_getIccSerialNumberForSubscriber:I = 0xc

.field static final TRANSACTION_getIccSimChallengeResponse:I = 0x1f

.field static final TRANSACTION_getImeiForSubscriber:I = 0x4

.field static final TRANSACTION_getIsimChallengeResponse:I = 0x1e

.field static final TRANSACTION_getIsimDomain:I = 0x1a

.field static final TRANSACTION_getIsimImpi:I = 0x19

.field static final TRANSACTION_getIsimImpu:I = 0x1b

.field static final TRANSACTION_getIsimIst:I = 0x1c

.field static final TRANSACTION_getIsimPcscf:I = 0x1d

.field static final TRANSACTION_getLine1AlphaTag:I = 0xf

.field static final TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x10

.field static final TRANSACTION_getLine1Number:I = 0xd

.field static final TRANSACTION_getLine1NumberForSubscriber:I = 0xe

.field static final TRANSACTION_getMsisdn:I = 0x11

.field static final TRANSACTION_getMsisdnForSubscriber:I = 0x12

.field static final TRANSACTION_getNaiForSubscriber:I = 0x2

.field static final TRANSACTION_getSubscriberId:I = 0x7

.field static final TRANSACTION_getSubscriberIdForSubscriber:I = 0x8

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x17

.field static final TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x18

.field static final TRANSACTION_getVoiceMailNumber:I = 0x13

.field static final TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "com.android.internal.telephony.IPhoneSubInfo"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
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
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneSubInfo"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v8

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@13
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 55
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 56
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 57
    return v8

    #@25
    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@28
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    .line 65
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 66
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 67
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 68
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3d
    .line 69
    return v8

    #@3e
    .line 73
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@41
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(I)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 77
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@52
    .line 79
    return v8

    #@53
    .line 83
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@56
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 88
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 89
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 90
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6b
    .line 91
    return v8

    #@6c
    .line 95
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@6f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    .line 98
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    .line 99
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 100
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@80
    .line 101
    return v8

    #@81
    .line 105
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@84
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87
    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v0

    #@8b
    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    .line 110
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    .line 111
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    .line 112
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@99
    .line 113
    return v8

    #@9a
    .line 117
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@9d
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    .line 121
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab
    .line 122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ae
    .line 123
    return v8

    #@af
    .line 127
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@b2
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v0

    #@b9
    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    .line 132
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@c0
    move-result-object v5

    #@c1
    .line 133
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    .line 134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c7
    .line 135
    return v8

    #@c8
    .line 139
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@cb
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    .line 142
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    #@d5
    move-result-object v5

    #@d6
    .line 143
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9
    .line 144
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@dc
    .line 145
    return v8

    #@dd
    .line 149
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@e0
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v0

    #@e7
    .line 153
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ea
    move-result-object v3

    #@eb
    .line 154
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@ee
    move-result-object v5

    #@ef
    .line 155
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    .line 156
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f5
    .line 157
    return v8

    #@f6
    .line 161
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@f9
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc
    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ff
    move-result-object v1

    #@100
    .line 164
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    #@103
    move-result-object v5

    #@104
    .line 165
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@107
    .line 166
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10a
    .line 167
    return v8

    #@10b
    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@10e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111
    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@114
    move-result v0

    #@115
    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@118
    move-result-object v3

    #@119
    .line 176
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@11c
    move-result-object v5

    #@11d
    .line 177
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@120
    .line 178
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@123
    .line 179
    return v8

    #@124
    .line 183
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@127
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    .line 186
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    #@131
    move-result-object v5

    #@132
    .line 187
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 188
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@138
    .line 189
    return v8

    #@139
    .line 193
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@13c
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v0

    #@143
    .line 197
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@146
    move-result-object v3

    #@147
    .line 198
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@14a
    move-result-object v5

    #@14b
    .line 199
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    .line 200
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@151
    .line 201
    return v8

    #@152
    .line 205
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@155
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@158
    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15b
    move-result-object v1

    #@15c
    .line 208
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    #@15f
    move-result-object v5

    #@160
    .line 209
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@163
    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@166
    .line 211
    return v8

    #@167
    .line 215
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@16a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d
    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v0

    #@171
    .line 219
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@174
    move-result-object v3

    #@175
    .line 220
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@178
    move-result-object v5

    #@179
    .line 221
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@17c
    .line 222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17f
    .line 223
    return v8

    #@180
    .line 227
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@183
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@186
    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@189
    move-result-object v1

    #@18a
    .line 230
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    #@18d
    move-result-object v5

    #@18e
    .line 231
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 232
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@194
    .line 233
    return v8

    #@195
    .line 237
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@198
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19e
    move-result v0

    #@19f
    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v3

    #@1a3
    .line 242
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@1a6
    move-result-object v5

    #@1a7
    .line 243
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1aa
    .line 244
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1ad
    .line 245
    return v8

    #@1ae
    .line 249
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@1b1
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b7
    move-result-object v1

    #@1b8
    .line 252
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    #@1bb
    move-result-object v5

    #@1bc
    .line 253
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 254
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c2
    .line 255
    return v8

    #@1c3
    .line 259
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@1c6
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v0

    #@1cd
    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d0
    move-result-object v3

    #@1d1
    .line 264
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@1d4
    move-result-object v5

    #@1d5
    .line 265
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 266
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1db
    .line 267
    return v8

    #@1dc
    .line 271
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@1df
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e2
    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    #@1e5
    move-result-object v5

    #@1e6
    .line 273
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e9
    .line 274
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1ec
    .line 275
    return v8

    #@1ed
    .line 279
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@1f0
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f3
    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f6
    move-result v0

    #@1f7
    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    #@1fa
    move-result-object v5

    #@1fb
    .line 283
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fe
    .line 284
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@201
    .line 285
    return v8

    #@202
    .line 289
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@205
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@208
    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20b
    move-result-object v1

    #@20c
    .line 292
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    #@20f
    move-result-object v5

    #@210
    .line 293
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@213
    .line 294
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@216
    .line 295
    return v8

    #@217
    .line 299
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@21a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21d
    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@220
    move-result v0

    #@221
    .line 303
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@224
    move-result-object v3

    #@225
    .line 304
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@228
    move-result-object v5

    #@229
    .line 305
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22c
    .line 306
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22f
    .line 307
    return v8

    #@230
    .line 311
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@233
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    #@239
    move-result-object v5

    #@23a
    .line 313
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23d
    .line 314
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@240
    .line 315
    return v8

    #@241
    .line 319
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@244
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@247
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    #@24a
    move-result-object v5

    #@24b
    .line 321
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24e
    .line 322
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@251
    .line 323
    return v8

    #@252
    .line 327
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@255
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@258
    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    #@25b
    move-result-object v6

    #@25c
    .line 329
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25f
    .line 330
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@262
    .line 331
    return v8

    #@263
    .line 335
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@266
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@269
    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst()Ljava/lang/String;

    #@26c
    move-result-object v5

    #@26d
    .line 337
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@270
    .line 338
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@273
    .line 339
    return v8

    #@274
    .line 343
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@277
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27a
    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    #@27d
    move-result-object v6

    #@27e
    .line 345
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 346
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@284
    .line 347
    return v8

    #@285
    .line 351
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@288
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28b
    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28e
    move-result-object v1

    #@28f
    .line 354
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    #@292
    move-result-object v5

    #@293
    .line 355
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@296
    .line 356
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@299
    .line 357
    return v8

    #@29a
    .line 361
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v7, "com.android.internal.telephony.IPhoneSubInfo"

    #@29d
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a0
    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a3
    move-result v0

    #@2a4
    .line 365
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a7
    move-result v2

    #@2a8
    .line 367
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ab
    move-result-object v4

    #@2ac
    .line 368
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    #@2af
    move-result-object v5

    #@2b0
    .line 369
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b3
    .line 370
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b6
    .line 371
    return v8

    #@2b7
    .line 42
    nop

    #@2b8
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
