.class public abstract Landroid/net/INetworkScoreService$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreService"

.field static final greylist-max-o TRANSACTION_clearScores:I = 0x2

.field static final greylist-max-o TRANSACTION_disableScoring:I = 0x4

.field static final greylist-max-o TRANSACTION_getActiveScorer:I = 0xa

.field static final greylist-max-o TRANSACTION_getActiveScorerPackage:I = 0x9

.field static final greylist-max-o TRANSACTION_getAllValidScorers:I = 0xb

.field static final greylist-max-o TRANSACTION_isCallerActiveScorer:I = 0x8

.field static final greylist-max-o TRANSACTION_registerNetworkScoreCache:I = 0x5

.field static final greylist-max-o TRANSACTION_requestScores:I = 0x7

.field static final greylist-max-o TRANSACTION_setActiveScorer:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterNetworkScoreCache:I = 0x6

.field static final greylist-max-o TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.net.INetworkScoreService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_4
    const-string v0, "android.net.INetworkScoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkScoreService;

    if-eqz v1, :cond_14

    .line 152
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkScoreService;

    return-object v1

    .line 154
    :cond_14
    new-instance v1, Landroid/net/INetworkScoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkScoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_2c

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 207
    :pswitch_5
    const-string v0, "getAllValidScorers"

    return-object v0

    .line 203
    :pswitch_8
    const-string v0, "getActiveScorer"

    return-object v0

    .line 199
    :pswitch_b
    const-string v0, "getActiveScorerPackage"

    return-object v0

    .line 195
    :pswitch_e
    const-string/jumbo v0, "isCallerActiveScorer"

    return-object v0

    .line 191
    :pswitch_12
    const-string/jumbo v0, "requestScores"

    return-object v0

    .line 187
    :pswitch_16
    const-string/jumbo v0, "unregisterNetworkScoreCache"

    return-object v0

    .line 183
    :pswitch_1a
    const-string/jumbo v0, "registerNetworkScoreCache"

    return-object v0

    .line 179
    :pswitch_1e
    const-string v0, "disableScoring"

    return-object v0

    .line 175
    :pswitch_21
    const-string/jumbo v0, "setActiveScorer"

    return-object v0

    .line 171
    :pswitch_25
    const-string v0, "clearScores"

    return-object v0

    .line 167
    :pswitch_28
    const-string/jumbo v0, "updateScores"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 623
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 218
    invoke-static {p1}, Landroid/net/INetworkScoreService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const-string v0, "android.net.INetworkScoreService"

    .line 223
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 224
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 230
    :cond_16
    packed-switch p1, :pswitch_data_d6

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 325
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getAllValidScorers()Ljava/util/List;

    move-result-object v2

    .line 326
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 328
    goto/16 :goto_d5

    .line 318
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    .line 319
    .local v2, "_result":Landroid/net/NetworkScorerAppData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 321
    goto/16 :goto_d5

    .line 311
    .end local v2    # "_result":Landroid/net/NetworkScorerAppData;
    :pswitch_36
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    goto/16 :goto_d5

    .line 302
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->isCallerActiveScorer(I)Z

    move-result v3

    .line 305
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    goto/16 :goto_d5

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_55
    sget-object v2, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/NetworkKey;

    .line 293
    .local v2, "_arg0":[Landroid/net/NetworkKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->requestScores([Landroid/net/NetworkKey;)Z

    move-result v3

    .line 295
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 297
    goto :goto_d5

    .line 281
    .end local v2    # "_arg0":[Landroid/net/NetworkKey;
    .end local v3    # "_result":Z
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v3

    .line 284
    .local v3, "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkScoreService$Stub;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_d5

    .line 268
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/INetworkScoreCache;
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v3

    .line 272
    .restart local v3    # "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 273
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkScoreService$Stub;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto :goto_d5

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/INetworkScoreCache;
    .end local v4    # "_arg2":I
    :pswitch_9b
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->disableScoring()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_d5

    .line 252
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->setActiveScorer(Ljava/lang/String;)Z

    move-result v3

    .line 255
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    goto :goto_d5

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b4
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->clearScores()Z

    move-result v2

    .line 245
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto :goto_d5

    .line 235
    .end local v2    # "_result":Z
    :pswitch_bf
    sget-object v2, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/ScoredNetwork;

    .line 236
    .local v2, "_arg0":[Landroid/net/ScoredNetwork;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->updateScores([Landroid/net/ScoredNetwork;)Z

    move-result v3

    .line 238
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    nop

    .line 335
    .end local v2    # "_arg0":[Landroid/net/ScoredNetwork;
    .end local v3    # "_result":Z
    :goto_d5
    return v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_b4
        :pswitch_a2
        :pswitch_9b
        :pswitch_81
        :pswitch_6b
        :pswitch_55
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
