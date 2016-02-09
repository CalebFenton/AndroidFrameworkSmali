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
    .line 490
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
    .restart local v32    # "_arg7":Z
    goto :goto_8

    #@1a3
    .line 207
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v29    # "_arg4":Ljava/lang/String;
    .end local v32    # "_arg7":Z
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
    :goto_a
    move-object/from16 v24, p0

    #@1e1
    move/from16 v25, v5

    #@1e3
    move-object/from16 v26, v6

    #@1e5
    move-object/from16 v27, v18

    #@1e7
    move-object/from16 v28, v19

    #@1e9
    move-object/from16 v31, v22

    #@1eb
    .line 232
    invoke-virtual/range {v24 .. v31}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@1ee
    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f1
    .line 234
    const/4 v4, 0x1

    #@1f2
    return v4

    #@1f3
    .line 223
    :cond_9
    const/16 v30, 0x0

    #@1f5
    .restart local v30    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_9

    #@1f6
    .line 230
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :cond_a
    const/16 v22, 0x0

    #@1f8
    .restart local v22    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_a

    #@1f9
    .line 238
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    .end local v29    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@1fc
    move-object/from16 v0, p2

    #@1fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@201
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@204
    move-result v5

    #@205
    .line 242
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@208
    move-result-object v56

    #@209
    .line 244
    .local v56, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20c
    move-result-object v18

    #@20d
    .line 246
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v4

    #@211
    if-eqz v4, :cond_b

    #@213
    .line 247
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@215
    move-object/from16 v0, p2

    #@217
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21a
    move-result-object v57

    #@21b
    check-cast v57, Landroid/app/PendingIntent;

    #@21d
    .line 252
    :goto_b
    move-object/from16 v0, p0

    #@21f
    move-object/from16 v1, v56

    #@221
    move-object/from16 v2, v18

    #@223
    move-object/from16 v3, v57

    #@225
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    #@228
    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22b
    .line 254
    const/4 v4, 0x1

    #@22c
    return v4

    #@22d
    .line 250
    :cond_b
    const/16 v57, 0x0

    #@22f
    .local v57, "_arg3":Landroid/app/PendingIntent;
    goto :goto_b

    #@230
    .line 258
    .end local v5    # "_arg0":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v56    # "_arg1":[B
    .end local v57    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@233
    move-object/from16 v0, p2

    #@235
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@238
    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b
    move-result v5

    #@23c
    .line 262
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23f
    move-result-object v6

    #@240
    .line 264
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@243
    move-result-object v18

    #@244
    .line 266
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@247
    move-result-object v19

    #@248
    .line 268
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@24b
    move-result-object v38

    #@24c
    .line 270
    .local v38, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@253
    move-result-object v39

    #@254
    .line 272
    .local v39, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@256
    move-object/from16 v0, p2

    #@258
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@25b
    move-result-object v40

    #@25c
    .line 274
    .local v40, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25f
    move-result v4

    #@260
    if-eqz v4, :cond_c

    #@262
    const/16 v32, 0x1

    #@264
    .restart local v32    # "_arg7":Z
    :goto_c
    move-object/from16 v33, p0

    #@266
    move/from16 v34, v5

    #@268
    move-object/from16 v35, v6

    #@26a
    move-object/from16 v36, v18

    #@26c
    move-object/from16 v37, v19

    #@26e
    move/from16 v41, v32

    #@270
    .line 275
    invoke-virtual/range {v33 .. v41}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    #@273
    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@276
    .line 277
    const/4 v4, 0x1

    #@277
    return v4

    #@278
    .line 274
    .end local v32    # "_arg7":Z
    :cond_c
    const/16 v32, 0x0

    #@27a
    .restart local v32    # "_arg7":Z
    goto :goto_c

    #@27b
    .line 281
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v32    # "_arg7":Z
    .end local v38    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v40    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@27e
    move-object/from16 v0, p2

    #@280
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@283
    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@286
    move-result v5

    #@287
    .line 285
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28a
    move-result v55

    #@28b
    .line 287
    .local v55, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28e
    move-result v7

    #@28f
    .line 288
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@291
    move/from16 v1, v55

    #@293
    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    #@296
    move-result v61

    #@297
    .line 289
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29a
    .line 290
    if-eqz v61, :cond_d

    #@29c
    const/4 v4, 0x1

    #@29d
    :goto_d
    move-object/from16 v0, p3

    #@29f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a2
    .line 291
    const/4 v4, 0x1

    #@2a3
    return v4

    #@2a4
    .line 290
    :cond_d
    const/4 v4, 0x0

    #@2a5
    goto :goto_d

    #@2a6
    .line 295
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@2a9
    move-object/from16 v0, p2

    #@2ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ae
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b1
    move-result v5

    #@2b2
    .line 299
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b5
    move-result v55

    #@2b6
    .line 301
    .restart local v55    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b9
    move-result v7

    #@2ba
    .line 302
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@2bc
    move/from16 v1, v55

    #@2be
    invoke-virtual {v0, v5, v1, v7}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    #@2c1
    move-result v61

    #@2c2
    .line 303
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c5
    .line 304
    if-eqz v61, :cond_e

    #@2c7
    const/4 v4, 0x1

    #@2c8
    :goto_e
    move-object/from16 v0, p3

    #@2ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2cd
    .line 305
    const/4 v4, 0x1

    #@2ce
    return v4

    #@2cf
    .line 304
    :cond_e
    const/4 v4, 0x0

    #@2d0
    goto :goto_e

    #@2d1
    .line 309
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@2d4
    move-object/from16 v0, p2

    #@2d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d9
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dc
    move-result v5

    #@2dd
    .line 313
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v55

    #@2e1
    .line 315
    .restart local v55    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e4
    move-result v7

    #@2e5
    .line 317
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e8
    move-result v8

    #@2e9
    .line 318
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2eb
    move/from16 v1, v55

    #@2ed
    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    #@2f0
    move-result v61

    #@2f1
    .line 319
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f4
    .line 320
    if-eqz v61, :cond_f

    #@2f6
    const/4 v4, 0x1

    #@2f7
    :goto_f
    move-object/from16 v0, p3

    #@2f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2fc
    .line 321
    const/4 v4, 0x1

    #@2fd
    return v4

    #@2fe
    .line 320
    :cond_f
    const/4 v4, 0x0

    #@2ff
    goto :goto_f

    #@300
    .line 325
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@303
    move-object/from16 v0, p2

    #@305
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@308
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30b
    move-result v5

    #@30c
    .line 329
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30f
    move-result v55

    #@310
    .line 331
    .restart local v55    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@313
    move-result v7

    #@314
    .line 333
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@317
    move-result v8

    #@318
    .line 334
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@31a
    move/from16 v1, v55

    #@31c
    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    #@31f
    move-result v61

    #@320
    .line 335
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@323
    .line 336
    if-eqz v61, :cond_10

    #@325
    const/4 v4, 0x1

    #@326
    :goto_10
    move-object/from16 v0, p3

    #@328
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@32b
    .line 337
    const/4 v4, 0x1

    #@32c
    return v4

    #@32d
    .line 336
    :cond_10
    const/4 v4, 0x0

    #@32e
    goto :goto_10

    #@32f
    .line 341
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v55    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@332
    move-object/from16 v0, p2

    #@334
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@337
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33a
    move-result-object v54

    #@33b
    .line 344
    .local v54, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@33d
    move-object/from16 v1, v54

    #@33f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    #@342
    move-result v58

    #@343
    .line 345
    .local v58, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@346
    .line 346
    move-object/from16 v0, p3

    #@348
    move/from16 v1, v58

    #@34a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34d
    .line 347
    const/4 v4, 0x1

    #@34e
    return v4

    #@34f
    .line 351
    .end local v54    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@352
    move-object/from16 v0, p2

    #@354
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@357
    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35a
    move-result v5

    #@35b
    .line 355
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35e
    move-result-object v6

    #@35f
    .line 356
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@361
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    #@364
    move-result v58

    #@365
    .line 357
    .restart local v58    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@368
    .line 358
    move-object/from16 v0, p3

    #@36a
    move/from16 v1, v58

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36f
    .line 359
    const/4 v4, 0x1

    #@370
    return v4

    #@371
    .line 363
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@374
    move-object/from16 v0, p2

    #@376
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@379
    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37c
    move-result-object v54

    #@37d
    .line 367
    .restart local v54    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@380
    move-result v55

    #@381
    .line 368
    .restart local v55    # "_arg1":I
    move-object/from16 v0, p0

    #@383
    move-object/from16 v1, v54

    #@385
    move/from16 v2, v55

    #@387
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    #@38a
    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38d
    .line 370
    const/4 v4, 0x1

    #@38e
    return v4

    #@38f
    .line 374
    .end local v54    # "_arg0":Ljava/lang/String;
    .end local v55    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@392
    move-object/from16 v0, p2

    #@394
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@397
    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39a
    move-result v5

    #@39b
    .line 378
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39e
    move-result-object v6

    #@39f
    .line 380
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a2
    move-result v7

    #@3a3
    .line 381
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@3a5
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    #@3a8
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ab
    .line 383
    const/4 v4, 0x1

    #@3ac
    return v4

    #@3ad
    .line 387
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@3b0
    move-object/from16 v0, p2

    #@3b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b5
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b8
    move-result v5

    #@3b9
    .line 390
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3bb
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    #@3be
    move-result v61

    #@3bf
    .line 391
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c2
    .line 392
    if-eqz v61, :cond_11

    #@3c4
    const/4 v4, 0x1

    #@3c5
    :goto_11
    move-object/from16 v0, p3

    #@3c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3ca
    .line 393
    const/4 v4, 0x1

    #@3cb
    return v4

    #@3cc
    .line 392
    :cond_11
    const/4 v4, 0x0

    #@3cd
    goto :goto_11

    #@3ce
    .line 397
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@3d1
    move-object/from16 v0, p2

    #@3d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d6
    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d9
    move-result v5

    #@3da
    .line 400
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3dc
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    #@3df
    move-result v61

    #@3e0
    .line 401
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 402
    if-eqz v61, :cond_12

    #@3e5
    const/4 v4, 0x1

    #@3e6
    :goto_12
    move-object/from16 v0, p3

    #@3e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3eb
    .line 403
    const/4 v4, 0x1

    #@3ec
    return v4

    #@3ed
    .line 402
    :cond_12
    const/4 v4, 0x0

    #@3ee
    goto :goto_12

    #@3ef
    .line 407
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@3f2
    move-object/from16 v0, p2

    #@3f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f7
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    #@3fa
    move-result v58

    #@3fb
    .line 409
    .restart local v58    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fe
    .line 410
    move-object/from16 v0, p3

    #@400
    move/from16 v1, v58

    #@402
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@405
    .line 411
    const/4 v4, 0x1

    #@406
    return v4

    #@407
    .line 415
    .end local v58    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@40a
    move-object/from16 v0, p2

    #@40c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40f
    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@412
    move-result v5

    #@413
    .line 418
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@415
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    #@418
    move-result-object v59

    #@419
    .line 419
    .local v59, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41c
    .line 420
    move-object/from16 v0, p3

    #@41e
    move-object/from16 v1, v59

    #@420
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@423
    .line 421
    const/4 v4, 0x1

    #@424
    return v4

    #@425
    .line 425
    .end local v5    # "_arg0":I
    .end local v59    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@428
    move-object/from16 v0, p2

    #@42a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42d
    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    #@430
    move-result v61

    #@431
    .line 427
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@434
    .line 428
    if-eqz v61, :cond_13

    #@436
    const/4 v4, 0x1

    #@437
    :goto_13
    move-object/from16 v0, p3

    #@439
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@43c
    .line 429
    const/4 v4, 0x1

    #@43d
    return v4

    #@43e
    .line 428
    :cond_13
    const/4 v4, 0x0

    #@43f
    goto :goto_13

    #@440
    .line 433
    .end local v61    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@443
    move-object/from16 v0, p2

    #@445
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@448
    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44b
    move-result v5

    #@44c
    .line 437
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44f
    move-result-object v6

    #@450
    .line 439
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@453
    move-result v4

    #@454
    if-eqz v4, :cond_14

    #@456
    .line 440
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@458
    move-object/from16 v0, p2

    #@45a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45d
    move-result-object v44

    #@45e
    check-cast v44, Landroid/net/Uri;

    #@460
    .line 446
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@463
    move-result-object v19

    #@464
    .line 448
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@467
    move-result v4

    #@468
    if-eqz v4, :cond_15

    #@46a
    .line 449
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46c
    move-object/from16 v0, p2

    #@46e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@471
    move-result-object v46

    #@472
    check-cast v46, Landroid/app/PendingIntent;

    #@474
    .line 455
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@477
    move-result v4

    #@478
    if-eqz v4, :cond_16

    #@47a
    .line 456
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47c
    move-object/from16 v0, p2

    #@47e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@481
    move-result-object v30

    #@482
    check-cast v30, Landroid/app/PendingIntent;

    #@484
    :goto_16
    move-object/from16 v41, p0

    #@486
    move/from16 v42, v5

    #@488
    move-object/from16 v43, v6

    #@48a
    move-object/from16 v45, v19

    #@48c
    move-object/from16 v47, v30

    #@48e
    .line 461
    invoke-virtual/range {v41 .. v47}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@491
    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@494
    .line 463
    const/4 v4, 0x1

    #@495
    return v4

    #@496
    .line 443
    .end local v19    # "_arg3":Ljava/lang/String;
    :cond_14
    const/16 v44, 0x0

    #@498
    .local v44, "_arg2":Landroid/net/Uri;
    goto :goto_14

    #@499
    .line 452
    .end local v44    # "_arg2":Landroid/net/Uri;
    .restart local v19    # "_arg3":Ljava/lang/String;
    :cond_15
    const/16 v46, 0x0

    #@49b
    .local v46, "_arg4":Landroid/app/PendingIntent;
    goto :goto_15

    #@49c
    .line 459
    .end local v46    # "_arg4":Landroid/app/PendingIntent;
    :cond_16
    const/16 v30, 0x0

    #@49e
    .restart local v30    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_16

    #@49f
    .line 467
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v30    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ISms"

    #@4a2
    move-object/from16 v0, p2

    #@4a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a7
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4aa
    move-result v5

    #@4ab
    .line 471
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ae
    move-result-object v6

    #@4af
    .line 473
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b2
    move-result v4

    #@4b3
    if-eqz v4, :cond_17

    #@4b5
    .line 474
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b7
    move-object/from16 v0, p2

    #@4b9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4bc
    move-result-object v44

    #@4bd
    check-cast v44, Landroid/net/Uri;

    #@4bf
    .line 480
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c2
    move-result-object v19

    #@4c3
    .line 482
    .restart local v19    # "_arg3":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c5
    move-object/from16 v0, p2

    #@4c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@4ca
    move-result-object v52

    #@4cb
    .line 484
    .local v52, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4cd
    move-object/from16 v0, p2

    #@4cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@4d2
    move-result-object v39

    #@4d3
    .restart local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v47, p0

    #@4d5
    move/from16 v48, v5

    #@4d7
    move-object/from16 v49, v6

    #@4d9
    move-object/from16 v50, v44

    #@4db
    move-object/from16 v51, v19

    #@4dd
    move-object/from16 v53, v39

    #@4df
    .line 485
    invoke-virtual/range {v47 .. v53}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    #@4e2
    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e5
    .line 487
    const/4 v4, 0x1

    #@4e6
    return v4

    #@4e7
    .line 477
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v39    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v52    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_17
    const/16 v44, 0x0

    #@4e9
    .restart local v44    # "_arg2":Landroid/net/Uri;
    goto :goto_17

    #@4ea
    .line 51
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
