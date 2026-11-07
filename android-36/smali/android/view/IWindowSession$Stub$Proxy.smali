.class Landroid/view/IWindowSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1215
    return-void
.end method


# virtual methods
.method public blacklist addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .registers 16
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "layerStackId"    # I
    .param p5, "requestedVisibleTypes"    # I
    .param p6, "outInputChannel"    # Landroid/view/InputChannel;
    .param p7, "insetsState"    # Landroid/view/InsetsState;
    .param p8, "activeControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p9, "attachedFrame"    # Landroid/graphics/Rect;
    .param p10, "sizeCompatScale"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1226
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1232
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1233
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    array-length v3, p10

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1238
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1240
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 1241
    invoke-virtual {p6, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V

    .line 1243
    :cond_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1244
    invoke-virtual {p7, v1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    .line 1246
    :cond_45
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 1247
    invoke-virtual {p8, v1}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    .line 1249
    :cond_4e
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57

    .line 1250
    invoke-virtual {p9, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1252
    :cond_57
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->readFloatArray([F)V
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_62

    .line 1255
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    nop

    .line 1258
    return v3

    .line 1255
    .end local v3    # "_result":I
    :catchall_62
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    throw v2
.end method

.method public blacklist addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .registers 28
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "layerStackId"    # I
    .param p5, "userId"    # I
    .param p6, "requestedVisibleTypes"    # I
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;
    .param p8, "insetsState"    # Landroid/view/InsetsState;
    .param p9, "activeControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p10, "attachedFrame"    # Landroid/graphics/Rect;
    .param p11, "sizeCompatScale"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    move-object/from16 v1, p11

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v2

    .line 1263
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1266
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_e
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_ab

    .line 1267
    move-object/from16 v4, p1

    :try_start_15
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_a7

    .line 1268
    const/4 v0, 0x0

    move-object/from16 v5, p2

    :try_start_1b
    invoke-virtual {v2, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_a3

    .line 1269
    move/from16 v6, p3

    :try_start_20
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_9f

    .line 1270
    move/from16 v7, p4

    :try_start_25
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_9b

    .line 1271
    move/from16 v8, p5

    :try_start_2a
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_97

    .line 1272
    move/from16 v9, p6

    :try_start_2f
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    array-length v10, v1

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_93

    .line 1274
    move-object/from16 v10, p0

    :try_start_38
    iget-object v11, v10, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v12, 0x2

    invoke-interface {v11, v12, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1275
    .local v0, "_status":Z
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 1276
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1277
    .local v11, "_result":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_91

    if-eqz v12, :cond_52

    .line 1278
    move-object/from16 v12, p7

    :try_start_4e
    invoke-virtual {v12, v3}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_54

    .line 1277
    :cond_52
    move-object/from16 v12, p7

    .line 1280
    :goto_54
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v13
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_8f

    if-eqz v13, :cond_60

    .line 1281
    move-object/from16 v13, p8

    :try_start_5c
    invoke-virtual {v13, v3}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    goto :goto_62

    .line 1280
    :cond_60
    move-object/from16 v13, p8

    .line 1283
    :goto_62
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v14
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_8d

    if-eqz v14, :cond_6e

    .line 1284
    move-object/from16 v14, p9

    :try_start_6a
    invoke-virtual {v14, v3}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_70

    .line 1283
    :cond_6e
    move-object/from16 v14, p9

    .line 1286
    :goto_70
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_8b

    if-eqz v15, :cond_7c

    .line 1287
    move-object/from16 v15, p10

    :try_start_78
    invoke-virtual {v15, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_7e

    .line 1286
    :cond_7c
    move-object/from16 v15, p10

    .line 1289
    :goto_7e
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->readFloatArray([F)V
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_89

    .line 1292
    .end local v0    # "_status":Z
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1294
    nop

    .line 1295
    return v11

    .line 1292
    .end local v11    # "_result":I
    :catchall_89
    move-exception v0

    goto :goto_c2

    :catchall_8b
    move-exception v0

    goto :goto_c0

    :catchall_8d
    move-exception v0

    goto :goto_be

    :catchall_8f
    move-exception v0

    goto :goto_bc

    :catchall_91
    move-exception v0

    goto :goto_ba

    :catchall_93
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_ba

    :catchall_97
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_b8

    :catchall_9b
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_b6

    :catchall_9f
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_b4

    :catchall_a3
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_b2

    :catchall_a7
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_b0

    :catchall_ab
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v4, p1

    :goto_b0
    move-object/from16 v5, p2

    :goto_b2
    move/from16 v6, p3

    :goto_b4
    move/from16 v7, p4

    :goto_b6
    move/from16 v8, p5

    :goto_b8
    move/from16 v9, p6

    :goto_ba
    move-object/from16 v12, p7

    :goto_bc
    move-object/from16 v13, p8

    :goto_be
    move-object/from16 v14, p9

    :goto_c0
    move-object/from16 v15, p10

    :goto_c2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1294
    throw v0
.end method

.method public blacklist addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "layerStackId"    # I
    .param p5, "insetsState"    # Landroid/view/InsetsState;
    .param p6, "attachedFrame"    # Landroid/graphics/Rect;
    .param p7, "sizeCompatScale"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1305
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1306
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    array-length v3, p7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1310
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1311
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1312
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    .line 1313
    invoke-virtual {p5, v1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    .line 1315
    :cond_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 1316
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1318
    :cond_42
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->readFloatArray([F)V
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_4d

    .line 1321
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    nop

    .line 1324
    return v3

    .line 1321
    .end local v3    # "_result":I
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1218
    iget-object v0, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1583
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1585
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1587
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1588
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1592
    nop

    .line 1593
    return-void

    .line 1591
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1592
    throw v1
.end method

.method public blacklist cancelDraw(Landroid/view/IWindow;)Z
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2076
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2077
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2082
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2083
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2084
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2087
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2089
    nop

    .line 2090
    return v3

    .line 2087
    .end local v3    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2089
    throw v2
.end method

.method public blacklist clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2060
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2065
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2066
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2069
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    nop

    .line 2072
    return-void

    .line 2069
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    throw v2
.end method

.method public greylist-max-o dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1599
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1601
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    nop

    .line 1606
    return-void

    .line 1604
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw v1
.end method

.method public greylist-max-o dragRecipientExited(Landroid/view/IWindow;)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1612
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1614
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    nop

    .line 1619
    return-void

    .line 1617
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    throw v1
.end method

.method public blacklist dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1549
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1553
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    nop

    .line 1556
    return v3

    .line 1553
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    throw v2
.end method

.method public blacklist finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "seqId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1481
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1483
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1484
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    nop

    .line 1490
    return-void

    .line 1488
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    throw v1
.end method

.method public blacklist finishMovingTask(Landroid/view/IWindow;)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1827
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    nop

    .line 1832
    return-void

    .line 1830
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    throw v1
.end method

.method public blacklist generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p3, "hashAlgorithm"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2024
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2026
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2028
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2029
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2031
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2035
    nop

    .line 2036
    return-void

    .line 2034
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2035
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1222
    const-string v0, "android.view.IWindowSession"

    return-object v0
.end method

.method public greylist-max-o getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 7
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1751
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1757
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1762
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/view/IWindowId;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    nop

    .line 1765
    return-object v3

    .line 1762
    .end local v3    # "_result":Landroid/view/IWindowId;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    throw v2
.end method

.method public blacklist grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inputToken"    # Landroid/window/InputTransferToken;
    .param p3, "grantFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1997
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2002
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2003
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2004
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2005
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2008
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    nop

    .line 2011
    return-void

    .line 2008
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    throw v2
.end method

.method public blacklist grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 29
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "clientToken"    # Landroid/os/IBinder;
    .param p4, "hostInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p5, "flags"    # I
    .param p6, "privateFlags"    # I
    .param p7, "inputFeatures"    # I
    .param p8, "type"    # I
    .param p9, "windowToken"    # Landroid/os/IBinder;
    .param p10, "embeddedInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p11, "inputHandleName"    # Ljava/lang/String;
    .param p12, "outInputChannel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1939
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1940
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1942
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1943
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_98

    .line 1944
    const/4 v0, 0x0

    move-object/from16 v4, p2

    :try_start_19
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_94

    .line 1945
    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_90

    .line 1946
    move-object/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_8c

    .line 1947
    move/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_88

    .line 1948
    move/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_84

    .line 1949
    move/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_80

    .line 1950
    move/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_7c

    .line 1951
    move-object/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_78

    .line 1952
    move-object/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_74

    .line 1953
    move-object/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_70

    .line 1954
    move-object/from16 v14, p0

    :try_start_4b
    iget-object v15, v14, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1955
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1956
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_6e

    if-eqz v3, :cond_64

    .line 1957
    move-object/from16 v3, p12

    :try_start_5e
    invoke-virtual {v3, v2}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    .line 1961
    .end local v0    # "_status":Z
    :catchall_62
    move-exception v0

    goto :goto_b1

    .line 1956
    .restart local v0    # "_status":Z
    :cond_64
    move-object/from16 v3, p12

    .line 1961
    .end local v0    # "_status":Z
    :goto_66
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    nop

    .line 1964
    return-void

    .line 1961
    :catchall_6e
    move-exception v0

    goto :goto_af

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_af

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_ad

    :catchall_78
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_ab

    :catchall_7c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a9

    :catchall_80
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a7

    :catchall_84
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a5

    :catchall_88
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a3

    :catchall_8c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a1

    :catchall_90
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9f

    :catchall_94
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9d

    :catchall_98
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_9d
    move-object/from16 v5, p3

    :goto_9f
    move-object/from16 v6, p4

    :goto_a1
    move/from16 v7, p5

    :goto_a3
    move/from16 v8, p6

    :goto_a5
    move/from16 v9, p7

    :goto_a7
    move/from16 v10, p8

    :goto_a9
    move-object/from16 v11, p9

    :goto_ab
    move-object/from16 v12, p10

    :goto_ad
    move-object/from16 v13, p11

    :goto_af
    move-object/from16 v3, p12

    :goto_b1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    throw v0
.end method

.method public blacklist moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z
    .registers 8
    .param p1, "fromWindow"    # Landroid/view/IWindow;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2102
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2110
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2114
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    nop

    .line 2117
    return v3

    .line 2114
    .end local v3    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    throw v2
.end method

.method public blacklist notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "visible"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2128
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2133
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2134
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 2137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    nop

    .line 2139
    return-void

    .line 2137
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    throw v1
.end method

.method public greylist-max-o onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1742
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1743
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    nop

    .line 1748
    return-void

    .line 1746
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    throw v1
.end method

.method public greylist-max-o outOfMemory(Landroid/view/IWindow;)Z
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1428
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1434
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1435
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1439
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    nop

    .line 1442
    return v3

    .line 1439
    .end local v3    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    throw v2
.end method

.method public blacklist performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 28
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchDeviceId"    # I
    .param p6, "touchPointerId"    # I
    .param p7, "touchX"    # F
    .param p8, "touchY"    # F
    .param p9, "thumbCenterX"    # F
    .param p10, "thumbCenterY"    # F
    .param p11, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1512
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1515
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_8c

    .line 1517
    move/from16 v4, p2

    :try_start_18
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_88

    .line 1518
    const/4 v0, 0x0

    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_84

    .line 1519
    move/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_80

    .line 1520
    move/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_7c

    .line 1521
    move/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_78

    .line 1522
    move/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_74

    .line 1523
    move/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_70

    .line 1524
    move/from16 v11, p9

    :try_start_3c
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6c

    .line 1525
    move/from16 v12, p10

    :try_start_41
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_68

    .line 1526
    move-object/from16 v13, p11

    :try_start_46
    invoke-virtual {v1, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_64

    .line 1527
    move-object/from16 v14, p0

    :try_start_4b
    iget-object v15, v14, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1528
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1529
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_62

    .line 1532
    .end local v0    # "_status":Z
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    nop

    .line 1535
    return-object v3

    .line 1532
    .end local v3    # "_result":Landroid/os/IBinder;
    :catchall_62
    move-exception v0

    goto :goto_a3

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a3

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_a1

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9f

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9d

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9b

    :catchall_78
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_99

    :catchall_7c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_97

    :catchall_80
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_95

    :catchall_84
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_93

    :catchall_88
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_91

    :catchall_8c
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p2

    :goto_91
    move-object/from16 v5, p3

    :goto_93
    move/from16 v6, p4

    :goto_95
    move/from16 v7, p5

    :goto_97
    move/from16 v8, p6

    :goto_99
    move/from16 v9, p7

    :goto_9b
    move/from16 v10, p8

    :goto_9d
    move/from16 v11, p9

    :goto_9f
    move/from16 v12, p10

    :goto_a1
    move-object/from16 v13, p11

    :goto_a3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    throw v0
.end method

.method public greylist-max-o pokeDrawLock(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1782
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1787
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1788
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1791
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    nop

    .line 1794
    return-void

    .line 1791
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    throw v2
.end method

.method public blacklist relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I
    .registers 15
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewVisibility"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I
    .param p9, "outRelayoutResult"    # Landroid/view/WindowRelayoutResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1374
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1375
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1382
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1384
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1385
    invoke-virtual {p9, v1}, Landroid/view/WindowRelayoutResult;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_49

    .line 1389
    .end local v2    # "_status":Z
    :cond_41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1391
    nop

    .line 1392
    return v3

    .line 1389
    .end local v3    # "_result":I
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1391
    throw v2
.end method

.method public blacklist relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .registers 14
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewVisibility"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1408
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1410
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1412
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_33

    .line 1422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    nop

    .line 1424
    return-void

    .line 1422
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    throw v1
.end method

.method public blacklist remove(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1340
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1341
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1344
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1346
    nop

    .line 1347
    return-void

    .line 1344
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1346
    throw v2
.end method

.method public blacklist reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    .registers 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "intercepted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1907
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1910
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1914
    nop

    .line 1915
    return-void

    .line 1913
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1914
    throw v1
.end method

.method public greylist-max-o reportDropResult(Landroid/view/IWindow;Z)V
    .registers 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1567
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    nop

    .line 1575
    return-void

    .line 1573
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    throw v1
.end method

.method public blacklist reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1919
    .local p2, "restricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1921
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1923
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1924
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1925
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    nop

    .line 1930
    return-void

    .line 1928
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    throw v1
.end method

.method public blacklist reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 8
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1891
    .local p2, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1893
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1895
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1896
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1900
    nop

    .line 1901
    return-void

    .line 1899
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1900
    throw v1
.end method

.method public blacklist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 13
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1708
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1710
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1715
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1716
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_31

    .line 1719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    nop

    .line 1721
    return-void

    .line 1719
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    throw v1
.end method

.method public greylist-max-o setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1458
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1462
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1463
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1464
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1468
    nop

    .line 1469
    return-void

    .line 1467
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1468
    throw v1
.end method

.method public blacklist setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "callbackInfo"    # Landroid/window/OnBackInvokedCallbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2046
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2048
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2050
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2051
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    nop

    .line 2056
    return-void

    .line 2054
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    throw v1
.end method

.method public blacklist setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "shouldZoom"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1666
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1668
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1671
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1675
    nop

    .line 1676
    return-void

    .line 1674
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1675
    throw v1
.end method

.method public greylist-max-o setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1694
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1702
    nop

    .line 1703
    return-void

    .line 1701
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1702
    throw v1
.end method

.method public greylist-max-o setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xstep"    # F
    .param p5, "ystep"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1628
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1630
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1632
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1633
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1634
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1635
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1636
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    nop

    .line 1641
    return-void

    .line 1639
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    throw v1
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1648
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1650
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1652
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1653
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1657
    nop

    .line 1658
    return-void

    .line 1656
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1657
    throw v1
.end method

.method public greylist-max-o startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1810
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1811
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1812
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1813
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1816
    .end local v2    # "_status":Z
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1818
    nop

    .line 1819
    return v3

    .line 1816
    .end local v3    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1818
    throw v2
.end method

.method public blacklist updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "animatingTypes"    # I
    .param p3, "imeStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1876
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1878
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1880
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1882
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    nop

    .line 1887
    return-void

    .line 1885
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    throw v1
.end method

.method public blacklist updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .registers 13
    .param p1, "channelToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "privateFlags"    # I
    .param p6, "inputFeatures"    # I
    .param p7, "region"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1968
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1970
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1974
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1978
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_31

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    nop

    .line 1983
    return-void

    .line 1981
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    throw v1
.end method

.method public blacklist updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "requestedVisibleTypes"    # I
    .param p3, "imeStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1854
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1856
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1859
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1860
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    nop

    .line 1865
    return-void

    .line 1863
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    throw v1
.end method

.method public blacklist updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1844
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1845
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    nop

    .line 1850
    return-void

    .line 1848
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    throw v1
.end method

.method public greylist-max-o wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1726
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1728
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1729
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    nop

    .line 1734
    return-void

    .line 1732
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    throw v1
.end method

.method public greylist-max-o wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1679
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1683
    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    nop

    .line 1688
    return-void

    .line 1686
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    throw v1
.end method
