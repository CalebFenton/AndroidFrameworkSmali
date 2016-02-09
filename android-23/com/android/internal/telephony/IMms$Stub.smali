.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final TRANSACTION_addMultimediaMessageDraft:I = 0xb

.field static final TRANSACTION_addTextMessageDraft:I = 0xa

.field static final TRANSACTION_archiveStoredConversation:I = 0x9

.field static final TRANSACTION_deleteStoredConversation:I = 0x7

.field static final TRANSACTION_deleteStoredMessage:I = 0x6

.field static final TRANSACTION_downloadMessage:I = 0x2

.field static final TRANSACTION_getAutoPersisting:I = 0xe

.field static final TRANSACTION_getCarrierConfigValues:I = 0x3

.field static final TRANSACTION_importMultimediaMessage:I = 0x5

.field static final TRANSACTION_importTextMessage:I = 0x4

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendStoredMessage:I = 0xc

.field static final TRANSACTION_setAutoPersisting:I = 0xd

.field static final TRANSACTION_updateStoredMessageStatus:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.internal.telephony.IMms"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IMms"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/internal/telephony/IMms;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 49
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v7

    #@1e
    .line 54
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    .line 56
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_0

    #@28
    .line 57
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v9

    #@30
    check-cast v9, Landroid/net/Uri;

    #@32
    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v10

    #@36
    .line 65
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_1

    #@3c
    .line 66
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    move-object/from16 v0, p2

    #@40
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v11

    #@44
    check-cast v11, Landroid/os/Bundle;

    #@46
    .line 72
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_2

    #@4c
    .line 73
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    move-object/from16 v0, p2

    #@50
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53
    move-result-object v12

    #@54
    check-cast v12, Landroid/app/PendingIntent;

    #@56
    :goto_2
    move-object/from16 v6, p0

    #@58
    .line 78
    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    #@5b
    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e
    .line 80
    const/4 v6, 0x1

    #@5f
    return v6

    #@60
    .line 60
    .end local v10    # "_arg3":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    #@61
    .local v9, "_arg2":Landroid/net/Uri;
    goto :goto_0

    #@62
    .line 69
    .end local v9    # "_arg2":Landroid/net/Uri;
    .restart local v10    # "_arg3":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@63
    .local v11, "_arg4":Landroid/os/Bundle;
    goto :goto_1

    #@64
    .line 76
    .end local v11    # "_arg4":Landroid/os/Bundle;
    :cond_2
    const/4 v12, 0x0

    #@65
    .local v12, "_arg5":Landroid/app/PendingIntent;
    goto :goto_2

    #@66
    .line 84
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v7

    #@72
    .line 88
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v8

    #@76
    .line 90
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v16

    #@7a
    .line 92
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_3

    #@80
    .line 93
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    move-object/from16 v0, p2

    #@84
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@87
    move-result-object v17

    #@88
    check-cast v17, Landroid/net/Uri;

    #@8a
    .line 99
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v6

    #@8e
    if-eqz v6, :cond_4

    #@90
    .line 100
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@92
    move-object/from16 v0, p2

    #@94
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v11

    #@98
    check-cast v11, Landroid/os/Bundle;

    #@9a
    .line 106
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v6

    #@9e
    if-eqz v6, :cond_5

    #@a0
    .line 107
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a7
    move-result-object v12

    #@a8
    check-cast v12, Landroid/app/PendingIntent;

    #@aa
    :goto_5
    move-object/from16 v13, p0

    #@ac
    move v14, v7

    #@ad
    move-object v15, v8

    #@ae
    move-object/from16 v18, v11

    #@b0
    move-object/from16 v19, v12

    #@b2
    .line 112
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    #@b5
    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 114
    const/4 v6, 0x1

    #@b9
    return v6

    #@ba
    .line 96
    :cond_3
    const/16 v17, 0x0

    #@bc
    .local v17, "_arg3":Landroid/net/Uri;
    goto :goto_3

    #@bd
    .line 103
    .end local v17    # "_arg3":Landroid/net/Uri;
    :cond_4
    const/4 v11, 0x0

    #@be
    .restart local v11    # "_arg4":Landroid/os/Bundle;
    goto :goto_4

    #@bf
    .line 110
    .end local v11    # "_arg4":Landroid/os/Bundle;
    :cond_5
    const/4 v12, 0x0

    #@c0
    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_5

    #@c1
    .line 118
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    .end local v16    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v7

    #@cd
    .line 121
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@cf
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IMms$Stub;->getCarrierConfigValues(I)Landroid/os/Bundle;

    #@d2
    move-result-object v47

    #@d3
    .line 122
    .local v47, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    .line 123
    if-eqz v47, :cond_6

    #@d8
    .line 124
    const/4 v6, 0x1

    #@d9
    move-object/from16 v0, p3

    #@db
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@de
    .line 125
    const/4 v6, 0x1

    #@df
    move-object/from16 v0, v47

    #@e1
    move-object/from16 v1, p3

    #@e3
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@e6
    .line 130
    :goto_6
    const/4 v6, 0x1

    #@e7
    return v6

    #@e8
    .line 128
    :cond_6
    const/4 v6, 0x0

    #@e9
    move-object/from16 v0, p3

    #@eb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ee
    goto :goto_6

    #@ef
    .line 134
    .end local v7    # "_arg0":I
    .end local v47    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@f2
    move-object/from16 v0, p2

    #@f4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f7
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fa
    move-result-object v20

    #@fb
    .line 138
    .local v20, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fe
    move-result-object v8

    #@ff
    .line 140
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v22

    #@103
    .line 142
    .local v22, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@106
    move-result-object v10

    #@107
    .line 144
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@10a
    move-result-wide v24

    #@10b
    .line 146
    .local v24, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v6

    #@10f
    if-eqz v6, :cond_7

    #@111
    const/16 v26, 0x1

    #@113
    .line 148
    .local v26, "_arg5":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v6

    #@117
    if-eqz v6, :cond_8

    #@119
    const/16 v27, 0x1

    #@11b
    .local v27, "_arg6":Z
    :goto_8
    move-object/from16 v19, p0

    #@11d
    move-object/from16 v21, v8

    #@11f
    move-object/from16 v23, v10

    #@121
    .line 149
    invoke-virtual/range {v19 .. v27}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    #@124
    move-result-object v46

    #@125
    .line 150
    .local v46, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@128
    .line 151
    if-eqz v46, :cond_9

    #@12a
    .line 152
    const/4 v6, 0x1

    #@12b
    move-object/from16 v0, p3

    #@12d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@130
    .line 153
    const/4 v6, 0x1

    #@131
    move-object/from16 v0, v46

    #@133
    move-object/from16 v1, p3

    #@135
    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@138
    .line 158
    :goto_9
    const/4 v6, 0x1

    #@139
    return v6

    #@13a
    .line 146
    .end local v26    # "_arg5":Z
    .end local v27    # "_arg6":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :cond_7
    const/16 v26, 0x0

    #@13c
    .restart local v26    # "_arg5":Z
    goto :goto_7

    #@13d
    .line 148
    :cond_8
    const/16 v27, 0x0

    #@13f
    .restart local v27    # "_arg6":Z
    goto :goto_8

    #@140
    .line 156
    .restart local v46    # "_result":Landroid/net/Uri;
    :cond_9
    const/4 v6, 0x0

    #@141
    move-object/from16 v0, p3

    #@143
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@146
    goto :goto_9

    #@147
    .line 162
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":I
    .end local v24    # "_arg4":J
    .end local v26    # "_arg5":Z
    .end local v27    # "_arg6":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_5
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@14a
    move-object/from16 v0, p2

    #@14c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@152
    move-result-object v20

    #@153
    .line 166
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156
    move-result v6

    #@157
    if-eqz v6, :cond_a

    #@159
    .line 167
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@160
    move-result-object v30

    #@161
    check-cast v30, Landroid/net/Uri;

    #@163
    .line 173
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@166
    move-result-object v16

    #@167
    .line 175
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@16a
    move-result-wide v32

    #@16b
    .line 177
    .local v32, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v6

    #@16f
    if-eqz v6, :cond_b

    #@171
    const/16 v34, 0x1

    #@173
    .line 179
    .local v34, "_arg4":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v6

    #@177
    if-eqz v6, :cond_c

    #@179
    const/16 v26, 0x1

    #@17b
    .restart local v26    # "_arg5":Z
    :goto_c
    move-object/from16 v28, p0

    #@17d
    move-object/from16 v29, v20

    #@17f
    move-object/from16 v31, v16

    #@181
    move/from16 v35, v26

    #@183
    .line 180
    invoke-virtual/range {v28 .. v35}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    #@186
    move-result-object v46

    #@187
    .line 181
    .restart local v46    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18a
    .line 182
    if-eqz v46, :cond_d

    #@18c
    .line 183
    const/4 v6, 0x1

    #@18d
    move-object/from16 v0, p3

    #@18f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@192
    .line 184
    const/4 v6, 0x1

    #@193
    move-object/from16 v0, v46

    #@195
    move-object/from16 v1, p3

    #@197
    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@19a
    .line 189
    :goto_d
    const/4 v6, 0x1

    #@19b
    return v6

    #@19c
    .line 170
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v26    # "_arg5":Z
    .end local v32    # "_arg3":J
    .end local v34    # "_arg4":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :cond_a
    const/16 v30, 0x0

    #@19e
    .local v30, "_arg1":Landroid/net/Uri;
    goto :goto_a

    #@19f
    .line 177
    .end local v30    # "_arg1":Landroid/net/Uri;
    .restart local v16    # "_arg2":Ljava/lang/String;
    .restart local v32    # "_arg3":J
    :cond_b
    const/16 v34, 0x0

    #@1a1
    .restart local v34    # "_arg4":Z
    goto :goto_b

    #@1a2
    .line 179
    :cond_c
    const/16 v26, 0x0

    #@1a4
    .restart local v26    # "_arg5":Z
    goto :goto_c

    #@1a5
    .line 187
    .restart local v46    # "_result":Landroid/net/Uri;
    :cond_d
    const/4 v6, 0x0

    #@1a6
    move-object/from16 v0, p3

    #@1a8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1ab
    goto :goto_d

    #@1ac
    .line 193
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg5":Z
    .end local v32    # "_arg3":J
    .end local v34    # "_arg4":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_6
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@1af
    move-object/from16 v0, p2

    #@1b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b7
    move-result-object v20

    #@1b8
    .line 197
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bb
    move-result v6

    #@1bc
    if-eqz v6, :cond_e

    #@1be
    .line 198
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c5
    move-result-object v30

    #@1c6
    check-cast v30, Landroid/net/Uri;

    #@1c8
    .line 203
    :goto_e
    move-object/from16 v0, p0

    #@1ca
    move-object/from16 v1, v20

    #@1cc
    move-object/from16 v2, v30

    #@1ce
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    #@1d1
    move-result v48

    #@1d2
    .line 204
    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d5
    .line 205
    if-eqz v48, :cond_f

    #@1d7
    const/4 v6, 0x1

    #@1d8
    :goto_f
    move-object/from16 v0, p3

    #@1da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1dd
    .line 206
    const/4 v6, 0x1

    #@1de
    return v6

    #@1df
    .line 201
    .end local v48    # "_result":Z
    :cond_e
    const/16 v30, 0x0

    #@1e1
    .restart local v30    # "_arg1":Landroid/net/Uri;
    goto :goto_e

    #@1e2
    .line 205
    .end local v30    # "_arg1":Landroid/net/Uri;
    .restart local v48    # "_result":Z
    :cond_f
    const/4 v6, 0x0

    #@1e3
    goto :goto_f

    #@1e4
    .line 210
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_7
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@1e7
    move-object/from16 v0, p2

    #@1e9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ec
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ef
    move-result-object v20

    #@1f0
    .line 214
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1f3
    move-result-wide v42

    #@1f4
    .line 215
    .local v42, "_arg1":J
    move-object/from16 v0, p0

    #@1f6
    move-object/from16 v1, v20

    #@1f8
    move-wide/from16 v2, v42

    #@1fa
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    #@1fd
    move-result v48

    #@1fe
    .line 216
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@201
    .line 217
    if-eqz v48, :cond_10

    #@203
    const/4 v6, 0x1

    #@204
    :goto_10
    move-object/from16 v0, p3

    #@206
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@209
    .line 218
    const/4 v6, 0x1

    #@20a
    return v6

    #@20b
    .line 217
    :cond_10
    const/4 v6, 0x0

    #@20c
    goto :goto_10

    #@20d
    .line 222
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":J
    .end local v48    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@210
    move-object/from16 v0, p2

    #@212
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@215
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@218
    move-result-object v20

    #@219
    .line 226
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21c
    move-result v6

    #@21d
    if-eqz v6, :cond_11

    #@21f
    .line 227
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@221
    move-object/from16 v0, p2

    #@223
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@226
    move-result-object v30

    #@227
    check-cast v30, Landroid/net/Uri;

    #@229
    .line 233
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22c
    move-result v6

    #@22d
    if-eqz v6, :cond_12

    #@22f
    .line 234
    sget-object v6, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@236
    move-result-object v44

    #@237
    check-cast v44, Landroid/content/ContentValues;

    #@239
    .line 239
    :goto_12
    move-object/from16 v0, p0

    #@23b
    move-object/from16 v1, v20

    #@23d
    move-object/from16 v2, v30

    #@23f
    move-object/from16 v3, v44

    #@241
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    #@244
    move-result v48

    #@245
    .line 240
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@248
    .line 241
    if-eqz v48, :cond_13

    #@24a
    const/4 v6, 0x1

    #@24b
    :goto_13
    move-object/from16 v0, p3

    #@24d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@250
    .line 242
    const/4 v6, 0x1

    #@251
    return v6

    #@252
    .line 230
    .end local v48    # "_result":Z
    :cond_11
    const/16 v30, 0x0

    #@254
    .restart local v30    # "_arg1":Landroid/net/Uri;
    goto :goto_11

    #@255
    .line 237
    .end local v30    # "_arg1":Landroid/net/Uri;
    :cond_12
    const/16 v44, 0x0

    #@257
    .local v44, "_arg2":Landroid/content/ContentValues;
    goto :goto_12

    #@258
    .line 241
    .end local v44    # "_arg2":Landroid/content/ContentValues;
    .restart local v48    # "_result":Z
    :cond_13
    const/4 v6, 0x0

    #@259
    goto :goto_13

    #@25a
    .line 246
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_9
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@25d
    move-object/from16 v0, p2

    #@25f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@262
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@265
    move-result-object v20

    #@266
    .line 250
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@269
    move-result-wide v42

    #@26a
    .line 252
    .restart local v42    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26d
    move-result v6

    #@26e
    if-eqz v6, :cond_14

    #@270
    const/16 v45, 0x1

    #@272
    .line 253
    .local v45, "_arg2":Z
    :goto_14
    move-object/from16 v0, p0

    #@274
    move-object/from16 v1, v20

    #@276
    move-wide/from16 v2, v42

    #@278
    move/from16 v4, v45

    #@27a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    #@27d
    move-result v48

    #@27e
    .line 254
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 255
    if-eqz v48, :cond_15

    #@283
    const/4 v6, 0x1

    #@284
    :goto_15
    move-object/from16 v0, p3

    #@286
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@289
    .line 256
    const/4 v6, 0x1

    #@28a
    return v6

    #@28b
    .line 252
    .end local v45    # "_arg2":Z
    .end local v48    # "_result":Z
    :cond_14
    const/16 v45, 0x0

    #@28d
    .restart local v45    # "_arg2":Z
    goto :goto_14

    #@28e
    .line 255
    .restart local v48    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    #@28f
    goto :goto_15

    #@290
    .line 260
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":J
    .end local v45    # "_arg2":Z
    .end local v48    # "_result":Z
    :sswitch_a
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@293
    move-object/from16 v0, p2

    #@295
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@298
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29b
    move-result-object v20

    #@29c
    .line 264
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29f
    move-result-object v8

    #@2a0
    .line 266
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a3
    move-result-object v16

    #@2a4
    .line 267
    .restart local v16    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a6
    move-object/from16 v1, v20

    #@2a8
    move-object/from16 v2, v16

    #@2aa
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@2ad
    move-result-object v46

    #@2ae
    .line 268
    .restart local v46    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b1
    .line 269
    if-eqz v46, :cond_16

    #@2b3
    .line 270
    const/4 v6, 0x1

    #@2b4
    move-object/from16 v0, p3

    #@2b6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2b9
    .line 271
    const/4 v6, 0x1

    #@2ba
    move-object/from16 v0, v46

    #@2bc
    move-object/from16 v1, p3

    #@2be
    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c1
    .line 276
    :goto_16
    const/4 v6, 0x1

    #@2c2
    return v6

    #@2c3
    .line 274
    :cond_16
    const/4 v6, 0x0

    #@2c4
    move-object/from16 v0, p3

    #@2c6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2c9
    goto :goto_16

    #@2ca
    .line 280
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_b
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@2cd
    move-object/from16 v0, p2

    #@2cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d2
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d5
    move-result-object v20

    #@2d6
    .line 284
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d9
    move-result v6

    #@2da
    if-eqz v6, :cond_17

    #@2dc
    .line 285
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2de
    move-object/from16 v0, p2

    #@2e0
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e3
    move-result-object v30

    #@2e4
    check-cast v30, Landroid/net/Uri;

    #@2e6
    .line 290
    :goto_17
    move-object/from16 v0, p0

    #@2e8
    move-object/from16 v1, v20

    #@2ea
    move-object/from16 v2, v30

    #@2ec
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    #@2ef
    move-result-object v46

    #@2f0
    .line 291
    .restart local v46    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f3
    .line 292
    if-eqz v46, :cond_18

    #@2f5
    .line 293
    const/4 v6, 0x1

    #@2f6
    move-object/from16 v0, p3

    #@2f8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2fb
    .line 294
    const/4 v6, 0x1

    #@2fc
    move-object/from16 v0, v46

    #@2fe
    move-object/from16 v1, p3

    #@300
    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@303
    .line 299
    :goto_18
    const/4 v6, 0x1

    #@304
    return v6

    #@305
    .line 288
    .end local v46    # "_result":Landroid/net/Uri;
    :cond_17
    const/16 v30, 0x0

    #@307
    .restart local v30    # "_arg1":Landroid/net/Uri;
    goto :goto_17

    #@308
    .line 297
    .end local v30    # "_arg1":Landroid/net/Uri;
    .restart local v46    # "_result":Landroid/net/Uri;
    :cond_18
    const/4 v6, 0x0

    #@309
    move-object/from16 v0, p3

    #@30b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@30e
    goto :goto_18

    #@30f
    .line 303
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_c
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@317
    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31a
    move-result v7

    #@31b
    .line 307
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31e
    move-result-object v8

    #@31f
    .line 309
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@322
    move-result v6

    #@323
    if-eqz v6, :cond_19

    #@325
    .line 310
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@327
    move-object/from16 v0, p2

    #@329
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32c
    move-result-object v9

    #@32d
    check-cast v9, Landroid/net/Uri;

    #@32f
    .line 316
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@332
    move-result v6

    #@333
    if-eqz v6, :cond_1a

    #@335
    .line 317
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@337
    move-object/from16 v0, p2

    #@339
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33c
    move-result-object v39

    #@33d
    check-cast v39, Landroid/os/Bundle;

    #@33f
    .line 323
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@342
    move-result v6

    #@343
    if-eqz v6, :cond_1b

    #@345
    .line 324
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@347
    move-object/from16 v0, p2

    #@349
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34c
    move-result-object v40

    #@34d
    check-cast v40, Landroid/app/PendingIntent;

    #@34f
    :goto_1b
    move-object/from16 v35, p0

    #@351
    move/from16 v36, v7

    #@353
    move-object/from16 v37, v8

    #@355
    move-object/from16 v38, v9

    #@357
    .line 329
    invoke-virtual/range {v35 .. v40}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    #@35a
    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35d
    .line 331
    const/4 v6, 0x1

    #@35e
    return v6

    #@35f
    .line 313
    :cond_19
    const/4 v9, 0x0

    #@360
    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_19

    #@361
    .line 320
    .end local v9    # "_arg2":Landroid/net/Uri;
    :cond_1a
    const/16 v39, 0x0

    #@363
    .local v39, "_arg3":Landroid/os/Bundle;
    goto :goto_1a

    #@364
    .line 327
    .end local v39    # "_arg3":Landroid/os/Bundle;
    :cond_1b
    const/16 v40, 0x0

    #@366
    .local v40, "_arg4":Landroid/app/PendingIntent;
    goto :goto_1b

    #@367
    .line 335
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_d
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@36a
    move-object/from16 v0, p2

    #@36c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36f
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@372
    move-result-object v20

    #@373
    .line 339
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@376
    move-result v6

    #@377
    if-eqz v6, :cond_1c

    #@379
    const/16 v41, 0x1

    #@37b
    .line 340
    .local v41, "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    #@37d
    move-object/from16 v1, v20

    #@37f
    move/from16 v2, v41

    #@381
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    #@384
    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@387
    .line 342
    const/4 v6, 0x1

    #@388
    return v6

    #@389
    .line 339
    .end local v41    # "_arg1":Z
    :cond_1c
    const/16 v41, 0x0

    #@38b
    .restart local v41    # "_arg1":Z
    goto :goto_1c

    #@38c
    .line 346
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Z
    :sswitch_e
    const-string/jumbo v6, "com.android.internal.telephony.IMms"

    #@38f
    move-object/from16 v0, p2

    #@391
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@394
    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    #@397
    move-result v48

    #@398
    .line 348
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39b
    .line 349
    if-eqz v48, :cond_1d

    #@39d
    const/4 v6, 0x1

    #@39e
    :goto_1d
    move-object/from16 v0, p3

    #@3a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3a3
    .line 350
    const/4 v6, 0x1

    #@3a4
    return v6

    #@3a5
    .line 349
    :cond_1d
    const/4 v6, 0x0

    #@3a6
    goto :goto_1d

    #@3a7
    .line 41
    nop

    #@3a8
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
