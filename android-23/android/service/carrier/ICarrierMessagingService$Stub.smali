.class public abstract Landroid/service/carrier/ICarrierMessagingService$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingService"

.field static final TRANSACTION_downloadMms:I = 0x6

.field static final TRANSACTION_filterSms:I = 0x1

.field static final TRANSACTION_sendDataSms:I = 0x3

.field static final TRANSACTION_sendMms:I = 0x5

.field static final TRANSACTION_sendMultipartTextSms:I = 0x4

.field static final TRANSACTION_sendTextSms:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.service.carrier.ICarrierMessagingService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingService;
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
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/service/carrier/ICarrierMessagingService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 30
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
    .line 170
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 55
    sget-object v4, Landroid/service/carrier/MessagePdu;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Landroid/service/carrier/MessagePdu;

    #@2a
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 63
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v7

    #@32
    .line 65
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v8

    #@36
    .line 67
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    #@3d
    move-result-object v9

    #@3e
    .local v9, "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v4, p0

    #@40
    .line 68
    invoke-virtual/range {v4 .. v9}, Landroid/service/carrier/ICarrierMessagingService$Stub;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V

    #@43
    .line 69
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 58
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_0
    const/4 v5, 0x0

    #@46
    .local v5, "_arg0":Landroid/service/carrier/MessagePdu;
    goto :goto_0

    #@47
    .line 73
    .end local v5    # "_arg0":Landroid/service/carrier/MessagePdu;
    :sswitch_2
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@4a
    move-object/from16 v0, p2

    #@4c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    .line 77
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v12

    #@57
    .line 79
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a
    move-result-object v13

    #@5b
    .line 81
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v8

    #@5f
    .line 83
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@62
    move-result-object v4

    #@63
    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    #@66
    move-result-object v9

    #@67
    .restart local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v10, p0

    #@69
    move v14, v8

    #@6a
    move-object v15, v9

    #@6b
    .line 84
    invoke-virtual/range {v10 .. v15}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V

    #@6e
    .line 85
    const/4 v4, 0x1

    #@6f
    return v4

    #@70
    .line 89
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@7b
    move-result-object v15

    #@7c
    .line 93
    .local v15, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v12

    #@80
    .line 95
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@83
    move-result-object v13

    #@84
    .line 97
    .restart local v13    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v8

    #@88
    .line 99
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v19

    #@8c
    .line 101
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8f
    move-result-object v4

    #@90
    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    #@93
    move-result-object v20

    #@94
    .local v20, "_arg5":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v14, p0

    #@96
    move/from16 v16, v12

    #@98
    move-object/from16 v17, v13

    #@9a
    move/from16 v18, v8

    #@9c
    .line 102
    invoke-virtual/range {v14 .. v20}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V

    #@9f
    .line 103
    const/4 v4, 0x1

    #@a0
    return v4

    #@a1
    .line 107
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg0":[B
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Landroid/service/carrier/ICarrierMessagingCallback;
    :sswitch_4
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@a4
    move-object/from16 v0, p2

    #@a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@ac
    move-result-object v22

    #@ad
    .line 111
    .local v22, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v12

    #@b1
    .line 113
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b4
    move-result-object v13

    #@b5
    .line 115
    .restart local v13    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v8

    #@b9
    .line 117
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bc
    move-result-object v4

    #@bd
    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    #@c0
    move-result-object v9

    #@c1
    .restart local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v21, p0

    #@c3
    move/from16 v23, v12

    #@c5
    move-object/from16 v24, v13

    #@c7
    move/from16 v25, v8

    #@c9
    move-object/from16 v26, v9

    #@cb
    .line 118
    invoke-virtual/range {v21 .. v26}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V

    #@ce
    .line 119
    const/4 v4, 0x1

    #@cf
    return v4

    #@d0
    .line 123
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v22    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d8
    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db
    move-result v4

    #@dc
    if-eqz v4, :cond_1

    #@de
    .line 126
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e5
    move-result-object v27

    #@e6
    check-cast v27, Landroid/net/Uri;

    #@e8
    .line 132
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@eb
    move-result v12

    #@ec
    .line 134
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v4

    #@f0
    if-eqz v4, :cond_2

    #@f2
    .line 135
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9
    move-result-object v28

    #@fa
    check-cast v28, Landroid/net/Uri;

    #@fc
    .line 141
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ff
    move-result-object v4

    #@100
    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    #@103
    move-result-object v29

    #@104
    .line 142
    .local v29, "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, v27

    #@108
    move-object/from16 v2, v28

    #@10a
    move-object/from16 v3, v29

    #@10c
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V

    #@10f
    .line 143
    const/4 v4, 0x1

    #@110
    return v4

    #@111
    .line 129
    .end local v12    # "_arg1":I
    .end local v29    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_1
    const/16 v27, 0x0

    #@113
    .local v27, "_arg0":Landroid/net/Uri;
    goto :goto_1

    #@114
    .line 138
    .end local v27    # "_arg0":Landroid/net/Uri;
    .restart local v12    # "_arg1":I
    :cond_2
    const/16 v28, 0x0

    #@116
    .local v28, "_arg2":Landroid/net/Uri;
    goto :goto_2

    #@117
    .line 147
    .end local v12    # "_arg1":I
    .end local v28    # "_arg2":Landroid/net/Uri;
    :sswitch_6
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingService"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v4

    #@123
    if-eqz v4, :cond_3

    #@125
    .line 150
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@127
    move-object/from16 v0, p2

    #@129
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12c
    move-result-object v27

    #@12d
    check-cast v27, Landroid/net/Uri;

    #@12f
    .line 156
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132
    move-result v12

    #@133
    .line 158
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@136
    move-result v4

    #@137
    if-eqz v4, :cond_4

    #@139
    .line 159
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@140
    move-result-object v28

    #@141
    check-cast v28, Landroid/net/Uri;

    #@143
    .line 165
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@146
    move-result-object v4

    #@147
    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    #@14a
    move-result-object v29

    #@14b
    .line 166
    .restart local v29    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v0, p0

    #@14d
    move-object/from16 v1, v27

    #@14f
    move-object/from16 v2, v28

    #@151
    move-object/from16 v3, v29

    #@153
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/service/carrier/ICarrierMessagingService$Stub;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V

    #@156
    .line 167
    const/4 v4, 0x1

    #@157
    return v4

    #@158
    .line 153
    .end local v12    # "_arg1":I
    .end local v29    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_3
    const/16 v27, 0x0

    #@15a
    .restart local v27    # "_arg0":Landroid/net/Uri;
    goto :goto_3

    #@15b
    .line 162
    .end local v27    # "_arg0":Landroid/net/Uri;
    .restart local v12    # "_arg1":I
    :cond_4
    const/16 v28, 0x0

    #@15d
    .restart local v28    # "_arg2":Landroid/net/Uri;
    goto :goto_4

    #@15e
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
