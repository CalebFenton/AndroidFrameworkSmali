.class public abstract Landroid/os/IIdmap2$Stub;
.super Landroid/os/Binder;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIdmap2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireFabricatedOverlayIterator:I = 0x7

.field static final blacklist TRANSACTION_createFabricatedOverlay:I = 0x5

.field static final blacklist TRANSACTION_createIdmap:I = 0x4

.field static final blacklist TRANSACTION_deleteFabricatedOverlay:I = 0x6

.field static final blacklist TRANSACTION_dumpIdmap:I = 0xa

.field static final blacklist TRANSACTION_getIdmapPath:I = 0x1

.field static final blacklist TRANSACTION_nextFabricatedOverlayInfos:I = 0x9

.field static final blacklist TRANSACTION_releaseFabricatedOverlayIterator:I = 0x8

.field static final blacklist TRANSACTION_removeIdmap:I = 0x2

.field static final blacklist TRANSACTION_verifyIdmap:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.os.IIdmap2"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIdmap2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.os.IIdmap2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIdmap2;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/os/IIdmap2;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/os/IIdmap2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIdmap2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_28

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 131
    :pswitch_5
    const-string v0, "dumpIdmap"

    return-object v0

    .line 127
    :pswitch_8
    const-string/jumbo v0, "nextFabricatedOverlayInfos"

    return-object v0

    .line 123
    :pswitch_c
    const-string/jumbo v0, "releaseFabricatedOverlayIterator"

    return-object v0

    .line 119
    :pswitch_10
    const-string v0, "acquireFabricatedOverlayIterator"

    return-object v0

    .line 115
    :pswitch_13
    const-string v0, "deleteFabricatedOverlay"

    return-object v0

    .line 111
    :pswitch_16
    const-string v0, "createFabricatedOverlay"

    return-object v0

    .line 107
    :pswitch_19
    const-string v0, "createIdmap"

    return-object v0

    .line 103
    :pswitch_1c
    const-string/jumbo v0, "verifyIdmap"

    return-object v0

    .line 99
    :pswitch_20
    const-string/jumbo v0, "removeIdmap"

    return-object v0

    .line 95
    :pswitch_24
    const-string v0, "getIdmapPath"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 506
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 142
    invoke-static {p1}, Landroid/os/IIdmap2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.IIdmap2"

    .line 147
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 148
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 151
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v11

    .line 154
    :cond_19
    packed-switch p1, :pswitch_data_118

    .line 282
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 273
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1}, Landroid/os/IIdmap2$Stub;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    goto/16 :goto_117

    .line 263
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v1}, Landroid/os/IIdmap2$Stub;->nextFabricatedOverlayInfos(I)Ljava/util/List;

    move-result-object v2

    .line 266
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 268
    goto/16 :goto_117

    .line 254
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v1}, Landroid/os/IIdmap2$Stub;->releaseFabricatedOverlayIterator(I)V

    .line 257
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_117

    .line 246
    .end local v1    # "_arg0":I
    :pswitch_56
    invoke-virtual {p0}, Landroid/os/IIdmap2$Stub;->acquireFabricatedOverlayIterator()I

    move-result v1

    .line 247
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    goto/16 :goto_117

    .line 237
    .end local v1    # "_result":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v1}, Landroid/os/IIdmap2$Stub;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v2

    .line 240
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto/16 :goto_117

    .line 227
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_75
    sget-object v1, Landroid/os/FabricatedOverlayInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FabricatedOverlayInternal;

    .line 228
    .local v1, "_arg0":Landroid/os/FabricatedOverlayInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v1}, Landroid/os/IIdmap2$Stub;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v2

    .line 230
    .local v2, "_result":Landroid/os/FabricatedOverlayInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    goto/16 :goto_117

    .line 205
    .end local v1    # "_arg0":Landroid/os/FabricatedOverlayInternal;
    .end local v2    # "_result":Landroid/os/FabricatedOverlayInfo;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 215
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 217
    .local v6, "_arg5":I
    sget-object v7, Landroid/os/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/OverlayConstraint;

    .line 218
    .local v7, "_arg6":[Landroid/os/OverlayConstraint;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IIdmap2$Stub;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    goto :goto_117

    .line 183
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":[Landroid/os/OverlayConstraint;
    .end local v12    # "_result":Ljava/lang/String;
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 191
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 193
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 195
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/os/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/os/OverlayConstraint;

    .line 196
    .restart local v7    # "_arg6":[Landroid/os/OverlayConstraint;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IIdmap2$Stub;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result v12

    .line 198
    .local v12, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    goto :goto_117

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":[Landroid/os/OverlayConstraint;
    .end local v12    # "_result":Z
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1, v2}, Landroid/os/IIdmap2$Stub;->removeIdmap(Ljava/lang/String;I)Z

    move-result v3

    .line 176
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    goto :goto_117

    .line 159
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v1, v2}, Landroid/os/IIdmap2$Stub;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    nop

    .line 285
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :goto_117
    return v11

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_101
        :pswitch_eb
        :pswitch_bb
        :pswitch_8c
        :pswitch_75
        :pswitch_62
        :pswitch_56
        :pswitch_47
        :pswitch_34
        :pswitch_21
    .end packed-switch
.end method
