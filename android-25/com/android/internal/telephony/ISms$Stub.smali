.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x3

.field static final TRANSACTION_disableCellBroadcastForSubscriber:I = 0xb

.field static final TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0xd

.field static final TRANSACTION_enableCellBroadcastForSubscriber:I = 0xa

.field static final TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0xc

.field static final TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x1

.field static final TRANSACTION_getImsSmsFormatForSubscriber:I = 0x15

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x14

.field static final TRANSACTION_getPremiumSmsPermission:I = 0xe

.field static final TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0xf

.field static final TRANSACTION_injectSmsPduForSubscriber:I = 0x8

.field static final TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x12

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x16

.field static final TRANSACTION_isSmsSimPickActivityNeeded:I = 0x13

.field static final TRANSACTION_sendDataForSubscriber:I = 0x4

.field static final TRANSACTION_sendDataForSubscriberWithSelfPermissions:I = 0x5

.field static final TRANSACTION_sendMultipartTextForSubscriber:I = 0x9

.field static final TRANSACTION_sendStoredMultipartText:I = 0x18

.field static final TRANSACTION_sendStoredText:I = 0x17

.field static final TRANSACTION_sendTextForSubscriber:I = 0x6

.field static final TRANSACTION_sendTextForSubscriberWithSelfPermissions:I = 0x7

.field static final TRANSACTION_setPremiumSmsPermission:I = 0x10

.field static final TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x11

.field static final TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 28
    const-string/jumbo v0, "com.android.internal.telephony.ISms"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 36
    if-nez p0, :cond_0

    #@3
    .line 37
    return-object v1

    #@4
    .line 39
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ISms"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 41
    check-cast v0, Lcom/android/internal/telephony/ISms;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 43
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 62
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 492
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 55
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 56
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 60
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 64
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    .line 65
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    #@27
    move-result-object v60

    #@28
    .line 66
    .local v60, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 67
    move-object/from16 v0, p3

    #@2d
    move-object/from16 v1, v60

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@32
    .line 68
    const/4 v4, 0x1

    #@33
    return v4

    #@34
    .line 72
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v60    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v5

    #@40
    .line 76
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 78
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v7

    #@48
    .line 80
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v8

    #@4c
    .line 82
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4f
    move-result-object v9

    #@50
    .local v9, "_arg4":[B
    move-object/from16 v4, p0

    #@52
    .line 83
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    #@55
    move-result v61

    #@56
    .line 84
    .local v61, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 85
    if-eqz v61, :cond_0

    #@5b
    const/4 v4, 0x1

    #@5c
    :goto_0
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 86
    const/4 v4, 0x1

    #@62
    return v4

    #@63
    .line 85
    :cond_0
    const/4 v4, 0x0

    #@64
    goto :goto_0

    #@65
    .line 90
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":[B
    .end local v61    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@68
    move-object/from16 v0, p2

    #@6a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v5

    #@71
    .line 94
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    .line 96
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v7

    #@79
    .line 98
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@7c
    move-result-object v14

    #@7d
    .line 100
    .local v14, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@80
    move-result-object v9

    #@81
    .restart local v9    # "_arg4":[B
    move-object/from16 v10, p0

    #@83
    move v11, v5

    #@84
    move-object v12, v6

    #@85
    move v13, v7

    #@86
    move-object v15, v9

    #@87
    .line 101
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    #@8a
    move-result v61

    #@8b
    .line 102
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e
    .line 103
    if-eqz v61, :cond_1

    #@90
    const/4 v4, 0x1

    #@91
    :goto_1
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@96
    .line 104
    const/4 v4, 0x1

    #@97
    return v4

    #@98
    .line 103
    :cond_1
    const/4 v4, 0x0

    #@99
    goto :goto_1

    #@9a
    .line 108
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":[B
    .end local v14    # "_arg3":[B
    .end local v61    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v5

    #@a6
    .line 112
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a9
    move-result-object v6

    #@aa
    .line 114
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ad
    move-result-object v18

    #@ae
    .line 116
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b1
    move-result-object v19

    #@b2
    .line 118
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v20

    #@b6
    .line 120
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@b9
    move-result-object v21

    #@ba
    .line 122
    .local v21, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v4

    #@be
    if-eqz v4, :cond_2

    #@c0
    .line 123
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c7
    move-result-object v22

    #@c8
    check-cast v22, Landroid/app/PendingIntent;

    #@ca
    .line 129
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_3

    #@d0
    .line 130
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d7
    move-result-object v23

    #@d8
    check-cast v23, Landroid/app/PendingIntent;

    #@da
    :goto_3
    move-object/from16 v15, p0

    #@dc
    move/from16 v16, v5

    #@de
    move-object/from16 v17, v6

    #@e0
    .line 135
    invoke-virtual/range {v15 .. v23}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@e3
    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e6
    .line 137
    const/4 v4, 0x1

    #@e7
    return v4

    #@e8
    .line 126
    :cond_2
    const/16 v22, 0x0

    #@ea
    .local v22, "_arg6":Landroid/app/PendingIntent;
    goto :goto_2

    #@eb
    .line 133
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_3
    const/16 v23, 0x0

    #@ed
    .local v23, "_arg7":Landroid/app/PendingIntent;
    goto :goto_3

    #@ee
    .line 141
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":[B
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f9
    move-result v5

    #@fa
    .line 145
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd
    move-result-object v6

    #@fe
    .line 147
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@101
    move-result-object v18

    #@102
    .line 149
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@105
    move-result-object v19

    #@106
    .line 151
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v20

    #@10a
    .line 153
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@10d
    move-result-object v21

    #@10e
    .line 155
    .restart local v21    # "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v4

    #@112
    if-eqz v4, :cond_4

    #@114
    .line 156
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11b
    move-result-object v22

    #@11c
    check-cast v22, Landroid/app/PendingIntent;

    #@11e
    .line 162
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v4

    #@122
    if-eqz v4, :cond_5

    #@124
    .line 163
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b
    move-result-object v23

    #@12c
    check-cast v23, Landroid/app/PendingIntent;

    #@12e
    :goto_5
    move-object/from16 v15, p0

    #@130
    move/from16 v16, v5

    #@132
    move-object/from16 v17, v6

    #@134
    .line 168
    invoke-virtual/range {v15 .. v23}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@137
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a
    .line 170
    const/4 v4, 0x1

    #@13b
    return v4

    #@13c
    .line 159
    :cond_4
    const/16 v22, 0x0

    #@13e
    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_4

    #@13f
    .line 166
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_5
    const/16 v23, 0x0

    #@141
    .restart local v23    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_5

    #@142
    .line 174
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":[B
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@145
    move-object/from16 v0, p2

    #@147
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v5

    #@14e
    .line 178
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@151
    move-result-object v6

    #@152
    .line 180
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@155
    move-result-object v18

    #@156
    .line 182
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@159
    move-result-object v19

    #@15a
    .line 184
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15d
    move-result-object v29

    #@15e
    .line 186
    .local v29, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@161
    move-result v4

    #@162
    if-eqz v4, :cond_6

    #@164
    .line 187
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@166
    move-object/from16 v0, p2

    #@168
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16b
    move-result-object v30

    #@16c
    check-cast v30, Landroid/app/PendingIntent;

    #@16e
    .line 193
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v4

    #@172
    if-eqz v4, :cond_7

    #@174
    .line 194
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@176
    move-object/from16 v0, p2

    #@178
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17b
    move-result-object v22

    #@17c
    check-cast v22, Landroid/app/PendingIntent;

    #@17e
    .line 200
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@181
    move-result v4

    #@182
    if-eqz v4, :cond_8

    #@184
    const/16 v32, 0x1

    #@186
    .local v32, "_arg7":Z
    :goto_8
    move-object/from16 v24, p0

    #@188
    move/from16 v25, v5

    #@18a
    move-object/from16 v26, v6

    #@18c
    move-object/from16 v27, v18

    #@18e
    move-object/from16 v28, v19

    #@190
    move-object/from16 v31, v22

    #@192
    .line 201
    invoke-virtual/range {v24 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@195
    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@198
    .line 203
    const/4 v4, 0x1

    #@199
    return v4

    #@19a
    .line 190
    .end local v32    # "_arg7":Z
    :cond_6
    const/16 v30, 0x0

    #@19c
    .local v30, "_arg5":Landroid/app/PendingIntent;
    goto :goto_6

    #@19d
    .line 197
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :cond_7
    const/16 v22, 0x0

    #@19f
    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_7

    #@1a0
    .line 200
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_8
    const/16 v32, 0x0

    #@1a2
    goto :goto_8

    #@1a3
    .line 207
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg4":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ab
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v5

    #@1af
    .line 211
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b2
    move-result-object v6

    #@1b3
    .line 213
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b6
    move-result-object v18

    #@1b7
    .line 215
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ba
    move-result-object v19

    #@1bb
    .line 217
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1be
    move-result-object v29

    #@1bf
    .line 219
    .restart local v29    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c2
    move-result v4

    #@1c3
    if-eqz v4, :cond_9

    #@1c5
    .line 220
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cc
    move-result-object v30

    #@1cd
    check-cast v30, Landroid/app/PendingIntent;

    #@1cf
    .line 226
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d2
    move-result v4

    #@1d3
    if-eqz v4, :cond_a

    #@1d5
    .line 227
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1dc
    move-result-object v22

    #@1dd
    check-cast v22, Landroid/app/PendingIntent;

    #@1df
    .line 233
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e2
    move-result v4

    #@1e3
    if-eqz v4, :cond_b

    #@1e5
    const/16 v32, 0x1

    #@1e7
    .restart local v32    # "_arg7":Z
    :goto_b
    move-object/from16 v24, p0

    #@1e9
    move/from16 v25, v5

    #@1eb
    move-object/from16 v26, v6

    #@1ed
    move-object/from16 v27, v18

    #@1ef
    move-object/from16 v28, v19

    #@1f1
    move-object/from16 v31, v22

    #@1f3
    .line 234
    invoke-virtual/range {v24 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@1f6
    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9
    .line 236
    const/4 v4, 0x1

    #@1fa
    return v4

    #@1fb
    .line 223
    .end local v32    # "_arg7":Z
    :cond_9
    const/16 v30, 0x0

    #@1fd
    .restart local v30    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_9

    #@1fe
    .line 230
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :cond_a
    const/16 v22, 0x0

    #@200
    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_a

    #@201
    .line 233
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    :cond_b
    const/16 v32, 0x0

    #@203
    goto :goto_b

    #@204
    .line 240
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@207
    move-object/from16 v0, p2

    #@209
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20c
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f
    move-result v5

    #@210
    .line 244
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@213
    move-result-object v56

    #@214
    .line 246
    .local v56, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@217
    move-result-object v18

    #@218
    .line 248
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v4

    #@21c
    if-eqz v4, :cond_c

    #@21e
    .line 249
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@225
    move-result-object v57

    #@226
    check-cast v57, Landroid/app/PendingIntent;

    #@228
    .line 254
    :goto_c
    move-object/from16 v0, p0

    #@22a
    move-object/from16 v1, v56

    #@22c
    move-object/from16 v2, v18

    #@22e
    move-object/from16 v3, v57

    #@230
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    #@233
    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@236
    .line 256
    const/4 v4, 0x1

    #@237
    return v4

    #@238
    .line 252
    :cond_c
    const/16 v57, 0x0

    #@23a
    .local v57, "_arg3":Landroid/app/PendingIntent;
    goto :goto_c

    #@23b
    .line 260
    .end local v5    # "_arg0":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v56    # "_arg1":[B
    .end local v57    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@23e
    move-object/from16 v0, p2

    #@240
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@243
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@246
    move-result v5

    #@247
    .line 264
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24a
    move-result-object v6

    #@24b
    .line 266
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24e
    move-result-object v18

    #@24f
    .line 268
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@252
    move-result-object v19

    #@253
    .line 270
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@256
    move-result-object v38

    #@257
    .line 272
    .local v38, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@25e
    move-result-object v39

    #@25f
    .line 274
    .local v39, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@266
    move-result-object v40

    #@267
    .line 276
    .local v40, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26a
    move-result v4

    #@26b
    if-eqz v4, :cond_d

    #@26d
    const/16 v32, 0x1

    #@26f
    .restart local v32    # "_arg7":Z
    :goto_d
    move-object/from16 v33, p0

    #@271
    move/from16 v34, v5

    #@273
    move-object/from16 v35, v6

    #@275
    move-object/from16 v36, v18

    #@277
    move-object/from16 v37, v19

    #@279
    move/from16 v41, v32

    #@27b
    .line 277
    invoke-virtual/range {v33 .. v41}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    #@27e
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 279
    const/4 v4, 0x1

    #@282
    return v4

    #@283
    .line 276
    .end local v32    # "_arg7":Z
    :cond_d
    const/16 v32, 0x0

    #@285
    goto :goto_d

    #@286
    .line 283
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@289
    move-object/from16 v0, p2

    #@28b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28e
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v5

    #@292
    .line 287
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@295
    move-result v55

    #@296
    .line 289
    .local v55, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@299
    move-result v7

    #@29a
    .line 290
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@29c
    move/from16 v1, v55

    #@29e
    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    #@2a1
    move-result v61

    #@2a2
    .line 291
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a5
    .line 292
    if-eqz v61, :cond_e

    #@2a7
    const/4 v4, 0x1

    #@2a8
    :goto_e
    move-object/from16 v0, p3

    #@2aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ad
    .line 293
    const/4 v4, 0x1

    #@2ae
    return v4

    #@2af
    .line 292
    :cond_e
    const/4 v4, 0x0

    #@2b0
    goto :goto_e

    #@2b1
    .line 297
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b9
    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v5

    #@2bd
    .line 301
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c0
    move-result v55

    #@2c1
    .line 303
    .restart local v55    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c4
    move-result v7

    #@2c5
    .line 304
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@2c7
    move/from16 v1, v55

    #@2c9
    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    #@2cc
    move-result v61

    #@2cd
    .line 305
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d0
    .line 306
    if-eqz v61, :cond_f

    #@2d2
    const/4 v4, 0x1

    #@2d3
    :goto_f
    move-object/from16 v0, p3

    #@2d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d8
    .line 307
    const/4 v4, 0x1

    #@2d9
    return v4

    #@2da
    .line 306
    :cond_f
    const/4 v4, 0x0

    #@2db
    goto :goto_f

    #@2dc
    .line 311
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e4
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e7
    move-result v5

    #@2e8
    .line 315
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2eb
    move-result v55

    #@2ec
    .line 317
    .restart local v55    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ef
    move-result v7

    #@2f0
    .line 319
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f3
    move-result v8

    #@2f4
    .line 320
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2f6
    move/from16 v1, v55

    #@2f8
    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    #@2fb
    move-result v61

    #@2fc
    .line 321
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ff
    .line 322
    if-eqz v61, :cond_10

    #@301
    const/4 v4, 0x1

    #@302
    :goto_10
    move-object/from16 v0, p3

    #@304
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@307
    .line 323
    const/4 v4, 0x1

    #@308
    return v4

    #@309
    .line 322
    :cond_10
    const/4 v4, 0x0

    #@30a
    goto :goto_10

    #@30b
    .line 327
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@30e
    move-object/from16 v0, p2

    #@310
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@313
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v5

    #@317
    .line 331
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31a
    move-result v55

    #@31b
    .line 333
    .restart local v55    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31e
    move-result v7

    #@31f
    .line 335
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@322
    move-result v8

    #@323
    .line 336
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@325
    move/from16 v1, v55

    #@327
    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    #@32a
    move-result v61

    #@32b
    .line 337
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32e
    .line 338
    if-eqz v61, :cond_11

    #@330
    const/4 v4, 0x1

    #@331
    :goto_11
    move-object/from16 v0, p3

    #@333
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@336
    .line 339
    const/4 v4, 0x1

    #@337
    return v4

    #@338
    .line 338
    :cond_11
    const/4 v4, 0x0

    #@339
    goto :goto_11

    #@33a
    .line 343
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@33d
    move-object/from16 v0, p2

    #@33f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@342
    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@345
    move-result-object v54

    #@346
    .line 346
    .local v54, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@348
    move-object/from16 v1, v54

    #@34a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    #@34d
    move-result v58

    #@34e
    .line 347
    .local v58, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@351
    .line 348
    move-object/from16 v0, p3

    #@353
    move/from16 v1, v58

    #@355
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@358
    .line 349
    const/4 v4, 0x1

    #@359
    return v4

    #@35a
    .line 353
    .end local v54    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@35d
    move-object/from16 v0, p2

    #@35f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@362
    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@365
    move-result v5

    #@366
    .line 357
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@369
    move-result-object v6

    #@36a
    .line 358
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36c
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    #@36f
    move-result v58

    #@370
    .line 359
    .restart local v58    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@373
    .line 360
    move-object/from16 v0, p3

    #@375
    move/from16 v1, v58

    #@377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37a
    .line 361
    const/4 v4, 0x1

    #@37b
    return v4

    #@37c
    .line 365
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@37f
    move-object/from16 v0, p2

    #@381
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@384
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@387
    move-result-object v54

    #@388
    .line 369
    .restart local v54    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38b
    move-result v55

    #@38c
    .line 370
    .restart local v55    # "_arg1":I
    move-object/from16 v0, p0

    #@38e
    move-object/from16 v1, v54

    #@390
    move/from16 v2, v55

    #@392
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    #@395
    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@398
    .line 372
    const/4 v4, 0x1

    #@399
    return v4

    #@39a
    .line 376
    .end local v54    # "_arg0":Ljava/lang/String;
    .end local v55    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@39d
    move-object/from16 v0, p2

    #@39f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a2
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a5
    move-result v5

    #@3a6
    .line 380
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a9
    move-result-object v6

    #@3aa
    .line 382
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ad
    move-result v7

    #@3ae
    .line 383
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@3b0
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    #@3b3
    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b6
    .line 385
    const/4 v4, 0x1

    #@3b7
    return v4

    #@3b8
    .line 389
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@3bb
    move-object/from16 v0, p2

    #@3bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c0
    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c3
    move-result v5

    #@3c4
    .line 392
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3c6
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    #@3c9
    move-result v61

    #@3ca
    .line 393
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cd
    .line 394
    if-eqz v61, :cond_12

    #@3cf
    const/4 v4, 0x1

    #@3d0
    :goto_12
    move-object/from16 v0, p3

    #@3d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3d5
    .line 395
    const/4 v4, 0x1

    #@3d6
    return v4

    #@3d7
    .line 394
    :cond_12
    const/4 v4, 0x0

    #@3d8
    goto :goto_12

    #@3d9
    .line 399
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@3dc
    move-object/from16 v0, p2

    #@3de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e1
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e4
    move-result v5

    #@3e5
    .line 402
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3e7
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    #@3ea
    move-result v61

    #@3eb
    .line 403
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ee
    .line 404
    if-eqz v61, :cond_13

    #@3f0
    const/4 v4, 0x1

    #@3f1
    :goto_13
    move-object/from16 v0, p3

    #@3f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f6
    .line 405
    const/4 v4, 0x1

    #@3f7
    return v4

    #@3f8
    .line 404
    :cond_13
    const/4 v4, 0x0

    #@3f9
    goto :goto_13

    #@3fa
    .line 409
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@3fd
    move-object/from16 v0, p2

    #@3ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@402
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    #@405
    move-result v58

    #@406
    .line 411
    .restart local v58    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@409
    .line 412
    move-object/from16 v0, p3

    #@40b
    move/from16 v1, v58

    #@40d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@410
    .line 413
    const/4 v4, 0x1

    #@411
    return v4

    #@412
    .line 417
    .end local v58    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@415
    move-object/from16 v0, p2

    #@417
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41a
    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41d
    move-result v5

    #@41e
    .line 420
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@420
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    #@423
    move-result-object v59

    #@424
    .line 421
    .local v59, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@427
    .line 422
    move-object/from16 v0, p3

    #@429
    move-object/from16 v1, v59

    #@42b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42e
    .line 423
    const/4 v4, 0x1

    #@42f
    return v4

    #@430
    .line 427
    .end local v5    # "_arg0":I
    .end local v59    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@433
    move-object/from16 v0, p2

    #@435
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@438
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    #@43b
    move-result v61

    #@43c
    .line 429
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43f
    .line 430
    if-eqz v61, :cond_14

    #@441
    const/4 v4, 0x1

    #@442
    :goto_14
    move-object/from16 v0, p3

    #@444
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@447
    .line 431
    const/4 v4, 0x1

    #@448
    return v4

    #@449
    .line 430
    :cond_14
    const/4 v4, 0x0

    #@44a
    goto :goto_14

    #@44b
    .line 435
    .end local v61    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@44e
    move-object/from16 v0, p2

    #@450
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@453
    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@456
    move-result v5

    #@457
    .line 439
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45a
    move-result-object v6

    #@45b
    .line 441
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45e
    move-result v4

    #@45f
    if-eqz v4, :cond_15

    #@461
    .line 442
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@463
    move-object/from16 v0, p2

    #@465
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@468
    move-result-object v44

    #@469
    check-cast v44, Landroid/net/Uri;

    #@46b
    .line 448
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46e
    move-result-object v19

    #@46f
    .line 450
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@472
    move-result v4

    #@473
    if-eqz v4, :cond_16

    #@475
    .line 451
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@477
    move-object/from16 v0, p2

    #@479
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47c
    move-result-object v46

    #@47d
    check-cast v46, Landroid/app/PendingIntent;

    #@47f
    .line 457
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@482
    move-result v4

    #@483
    if-eqz v4, :cond_17

    #@485
    .line 458
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@487
    move-object/from16 v0, p2

    #@489
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48c
    move-result-object v30

    #@48d
    check-cast v30, Landroid/app/PendingIntent;

    #@48f
    :goto_17
    move-object/from16 v41, p0

    #@491
    move/from16 v42, v5

    #@493
    move-object/from16 v43, v6

    #@495
    move-object/from16 v45, v19

    #@497
    move-object/from16 v47, v30

    #@499
    .line 463
    invoke-virtual/range {v41 .. v47}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@49c
    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49f
    .line 465
    const/4 v4, 0x1

    #@4a0
    return v4

    #@4a1
    .line 445
    .end local v19    # "_arg3":Ljava/lang/String;
    :cond_15
    const/16 v44, 0x0

    #@4a3
    .local v44, "_arg2":Landroid/net/Uri;
    goto :goto_15

    #@4a4
    .line 454
    .end local v44    # "_arg2":Landroid/net/Uri;
    .restart local v19    # "_arg3":Ljava/lang/String;
    :cond_16
    const/16 v46, 0x0

    #@4a6
    .local v46, "_arg4":Landroid/app/PendingIntent;
    goto :goto_16

    #@4a7
    .line 461
    .end local v46    # "_arg4":Landroid/app/PendingIntent;
    :cond_17
    const/16 v30, 0x0

    #@4a9
    .restart local v30    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_17

    #@4aa
    .line 469
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@4ad
    move-object/from16 v0, p2

    #@4af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b2
    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b5
    move-result v5

    #@4b6
    .line 473
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b9
    move-result-object v6

    #@4ba
    .line 475
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4bd
    move-result v4

    #@4be
    if-eqz v4, :cond_18

    #@4c0
    .line 476
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c2
    move-object/from16 v0, p2

    #@4c4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c7
    move-result-object v44

    #@4c8
    check-cast v44, Landroid/net/Uri;

    #@4ca
    .line 482
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4cd
    move-result-object v19

    #@4ce
    .line 484
    .restart local v19    # "_arg3":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d0
    move-object/from16 v0, p2

    #@4d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@4d5
    move-result-object v52

    #@4d6
    .line 486
    .local v52, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d8
    move-object/from16 v0, p2

    #@4da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@4dd
    move-result-object v39

    #@4de
    .restart local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v47, p0

    #@4e0
    move/from16 v48, v5

    #@4e2
    move-object/from16 v49, v6

    #@4e4
    move-object/from16 v50, v44

    #@4e6
    move-object/from16 v51, v19

    #@4e8
    move-object/from16 v53, v39

    #@4ea
    .line 487
    invoke-virtual/range {v47 .. v53}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    #@4ed
    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f0
    .line 489
    const/4 v4, 0x1

    #@4f1
    return v4

    #@4f2
    .line 479
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v52    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_18
    const/16 v44, 0x0

    #@4f4
    .restart local v44    # "_arg2":Landroid/net/Uri;
    goto :goto_18

    #@4f5
    .line 51
    nop

    #@4f6
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
