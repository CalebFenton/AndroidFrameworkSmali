.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final greylist-max-o TRANSACTION_close:I = 0xa

.field static final greylist-max-o TRANSACTION_getDeviceSummaryForNetwork:I = 0x1

.field static final greylist-max-o TRANSACTION_getHistoryForNetwork:I = 0x3

.field static final greylist-max-o TRANSACTION_getHistoryForUid:I = 0x7

.field static final blacklist TRANSACTION_getHistoryIntervalForNetwork:I = 0x4

.field static final greylist-max-o TRANSACTION_getHistoryIntervalForUid:I = 0x8

.field static final greylist-max-o TRANSACTION_getRelevantUids:I = 0x9

.field static final greylist-max-o TRANSACTION_getSummaryForAllUid:I = 0x5

.field static final greylist-max-o TRANSACTION_getSummaryForNetwork:I = 0x2

.field static final blacklist TRANSACTION_getTaggedSummaryForAllUid:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_4
    const-string v0, "android.net.INetworkStatsSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_14

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkStatsSession;

    return-object v1

    .line 104
    :cond_14
    new-instance v1, Landroid/net/INetworkStatsSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_24

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 153
    :pswitch_5
    const-string v0, "close"

    return-object v0

    .line 149
    :pswitch_8
    const-string v0, "getRelevantUids"

    return-object v0

    .line 145
    :pswitch_b
    const-string v0, "getHistoryIntervalForUid"

    return-object v0

    .line 141
    :pswitch_e
    const-string v0, "getHistoryForUid"

    return-object v0

    .line 137
    :pswitch_11
    const-string v0, "getTaggedSummaryForAllUid"

    return-object v0

    .line 133
    :pswitch_14
    const-string v0, "getSummaryForAllUid"

    return-object v0

    .line 129
    :pswitch_17
    const-string v0, "getHistoryIntervalForNetwork"

    return-object v0

    .line 125
    :pswitch_1a
    const-string v0, "getHistoryForNetwork"

    return-object v0

    .line 121
    :pswitch_1d
    const-string v0, "getSummaryForNetwork"

    return-object v0

    .line 117
    :pswitch_20
    const-string v0, "getDeviceSummaryForNetwork"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 575
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 164
    invoke-static {p1}, Landroid/net/INetworkStatsSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.net.INetworkStatsSession"

    .line 169
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_13

    const v5, 0xffffff

    if-gt v0, v5, :cond_13

    .line 170
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    :cond_13
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1c

    .line 173
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v4

    .line 176
    :cond_1c
    packed-switch v0, :pswitch_data_168

    .line 319
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 313
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    .line 314
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_167

    .line 306
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->getRelevantUids()[I

    move-result-object v5

    .line 307
    .local v5, "_result":[I
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 309
    goto/16 :goto_167

    .line 285
    .end local v5    # "_result":[I
    :pswitch_38
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/net/NetworkTemplate;

    .line 287
    .local v7, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 289
    .local v8, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 291
    .local v9, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 293
    .local v10, "_arg3":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 295
    .local v11, "_arg4":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 297
    .local v12, "_arg5":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 298
    .local v14, "_arg6":J
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/net/INetworkStatsSession$Stub;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 300
    .local v5, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    goto/16 :goto_167

    .line 267
    .end local v5    # "_result":Landroid/net/NetworkStatsHistory;
    .end local v7    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":J
    .end local v14    # "_arg6":J
    :pswitch_6a
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/net/NetworkTemplate;

    .line 269
    .local v17, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 271
    .local v18, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 273
    .local v19, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 275
    .local v20, "_arg3":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 276
    .local v21, "_arg4":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 278
    .restart local v5    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    goto/16 :goto_167

    .line 253
    .end local v5    # "_result":Landroid/net/NetworkStatsHistory;
    .end local v17    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":I
    :pswitch_95
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/net/NetworkTemplate;

    .line 255
    .restart local v17    # "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 257
    .local v18, "_arg1":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 258
    .local v20, "_arg2":J
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Landroid/net/INetworkStatsSession$Stub;->getTaggedSummaryForAllUid(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v5

    .line 260
    .local v5, "_result":Landroid/net/NetworkStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 262
    goto/16 :goto_167

    .line 237
    .end local v5    # "_result":Landroid/net/NetworkStats;
    .end local v17    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v18    # "_arg1":J
    .end local v20    # "_arg2":J
    :pswitch_b8
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/net/NetworkTemplate;

    .line 239
    .restart local v17    # "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 241
    .restart local v18    # "_arg1":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 243
    .restart local v20    # "_arg2":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 244
    .local v22, "_arg3":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v22}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v5

    .line 246
    .restart local v5    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    goto/16 :goto_167

    .line 221
    .end local v5    # "_result":Landroid/net/NetworkStats;
    .end local v17    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v18    # "_arg1":J
    .end local v20    # "_arg2":J
    .end local v22    # "_arg3":Z
    :pswitch_df
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/net/NetworkTemplate;

    .line 223
    .restart local v17    # "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 225
    .local v18, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 227
    .local v19, "_arg2":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 228
    .local v21, "_arg3":J
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v22}, Landroid/net/INetworkStatsSession$Stub;->getHistoryIntervalForNetwork(Landroid/net/NetworkTemplate;IJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 230
    .local v5, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    goto :goto_167

    .line 209
    .end local v5    # "_result":Landroid/net/NetworkStatsHistory;
    .end local v17    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":J
    :pswitch_105
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 211
    .local v5, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 212
    .local v6, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v8

    .line 214
    .local v8, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v2, v8, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_167

    .line 195
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v6    # "_arg1":I
    .end local v8    # "_result":Landroid/net/NetworkStatsHistory;
    :pswitch_121
    move-object/from16 v7, p0

    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/net/NetworkTemplate;

    .line 197
    .restart local v17    # "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 199
    .local v18, "_arg1":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 200
    .restart local v20    # "_arg2":J
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v21}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v5

    .line 202
    .local v5, "_result":Landroid/net/NetworkStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    goto :goto_167

    .line 181
    .end local v5    # "_result":Landroid/net/NetworkStats;
    .end local v17    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v18    # "_arg1":J
    .end local v20    # "_arg2":J
    :pswitch_145
    sget-object v5, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/net/NetworkTemplate;

    .line 183
    .restart local v17    # "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 185
    .restart local v18    # "_arg1":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 186
    .restart local v20    # "_arg2":J
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Landroid/net/INetworkStatsSession$Stub;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v5

    .line 188
    .restart local v5    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    nop

    .line 322
    .end local v5    # "_result":Landroid/net/NetworkStats;
    .end local v17    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v18    # "_arg1":J
    .end local v20    # "_arg2":J
    :goto_167
    return v4

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_145
        :pswitch_121
        :pswitch_105
        :pswitch_df
        :pswitch_b8
        :pswitch_95
        :pswitch_6a
        :pswitch_38
        :pswitch_2c
        :pswitch_24
    .end packed-switch
.end method
