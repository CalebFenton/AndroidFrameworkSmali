.class Landroid/os/CommonTimeUtils;
.super Ljava/lang/Object;
.source "CommonTimeUtils.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field private mInterfaceDesc:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;
    .param p2, "interfaceDesc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@5
    .line 45
    iput-object p2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@7
    .line 43
    return-void
.end method


# virtual methods
.method public transactGetInt(II)I
    .locals 6
    .param p1, "method_code"    # I
    .param p2, "error_ret_val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 51
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 56
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 57
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v5, 0x0

    #@10
    invoke-interface {v4, p1, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v2

    #@17
    .line 60
    .local v2, "res":I
    if-nez v2, :cond_0

    #@19
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    .line 63
    .local v3, "ret_val":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 67
    return v3

    #@24
    .line 60
    .end local v3    # "ret_val":I
    :cond_0
    move v3, p2

    #@25
    .restart local v3    # "ret_val":I
    goto :goto_0

    #@26
    .line 62
    .end local v2    # "res":I
    .end local v3    # "ret_val":I
    :catchall_0
    move-exception v4

    #@27
    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 62
    throw v4
.end method

.method public transactGetLong(IJ)J
    .locals 8
    .param p1, "method_code"    # I
    .param p2, "error_ret_val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 93
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 98
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 99
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v6, 0x0

    #@10
    invoke-interface {v3, p1, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v2

    #@17
    .line 102
    .local v2, "res":I
    if-nez v2, :cond_0

    #@19
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v4

    #@1d
    .line 105
    .local v4, "ret_val":J
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 109
    return-wide v4

    #@24
    .line 102
    .end local v4    # "ret_val":J
    :cond_0
    move-wide v4, p2

    #@25
    .restart local v4    # "ret_val":J
    goto :goto_0

    #@26
    .line 104
    .end local v2    # "res":I
    .end local v4    # "ret_val":J
    :catchall_0
    move-exception v3

    #@27
    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 104
    throw v3
.end method

.method public transactGetSockaddr(I)Ljava/net/InetSocketAddress;
    .locals 22
    .param p1, "method_code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v9

    #@4
    .line 177
    .local v9, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v12

    #@8
    .line 178
    .local v12, "reply":Landroid/os/Parcel;
    const/4 v14, 0x0

    #@9
    .line 182
    .local v14, "ret_val":Ljava/net/InetSocketAddress;
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@d
    move-object/from16 v17, v0

    #@f
    move-object/from16 v0, v17

    #@11
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@14
    .line 183
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@18
    move-object/from16 v17, v0

    #@1a
    const/16 v18, 0x0

    #@1c
    move-object/from16 v0, v17

    #@1e
    move/from16 v1, p1

    #@20
    move/from16 v2, v18

    #@22
    invoke-interface {v0, v1, v9, v12, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 185
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v13

    #@29
    .line 186
    .local v13, "res":I
    if-nez v13, :cond_1

    #@2b
    .line 188
    const/4 v11, 0x0

    #@2c
    .line 189
    .local v11, "port":I
    const/4 v8, 0x0

    #@2d
    .line 191
    .local v8, "addrStr":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v16

    #@31
    .line 193
    .local v16, "type":I
    sget v17, Landroid/system/OsConstants;->AF_INET:I

    #@33
    move/from16 v0, v17

    #@35
    move/from16 v1, v16

    #@37
    if-ne v0, v1, :cond_2

    #@39
    .line 194
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    .line 195
    .local v3, "addr":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v11

    #@41
    .line 196
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@43
    const-string/jumbo v18, "%d.%d.%d.%d"

    #@46
    const/16 v19, 0x4

    #@48
    move/from16 v0, v19

    #@4a
    new-array v0, v0, [Ljava/lang/Object;

    #@4c
    move-object/from16 v19, v0

    #@4e
    .line 197
    shr-int/lit8 v20, v3, 0x18

    #@50
    move/from16 v0, v20

    #@52
    and-int/lit16 v0, v0, 0xff

    #@54
    move/from16 v20, v0

    #@56
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v20

    #@5a
    const/16 v21, 0x0

    #@5c
    aput-object v20, v19, v21

    #@5e
    .line 198
    shr-int/lit8 v20, v3, 0x10

    #@60
    move/from16 v0, v20

    #@62
    and-int/lit16 v0, v0, 0xff

    #@64
    move/from16 v20, v0

    #@66
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v20

    #@6a
    const/16 v21, 0x1

    #@6c
    aput-object v20, v19, v21

    #@6e
    .line 199
    shr-int/lit8 v20, v3, 0x8

    #@70
    move/from16 v0, v20

    #@72
    and-int/lit16 v0, v0, 0xff

    #@74
    move/from16 v20, v0

    #@76
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v20

    #@7a
    const/16 v21, 0x2

    #@7c
    aput-object v20, v19, v21

    #@7e
    .line 200
    and-int/lit16 v0, v3, 0xff

    #@80
    move/from16 v20, v0

    #@82
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v20

    #@86
    const/16 v21, 0x3

    #@88
    aput-object v20, v19, v21

    #@8a
    .line 196
    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    .line 219
    .end local v3    # "addr":I
    .end local v8    # "addrStr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    #@90
    .line 220
    new-instance v14, Ljava/net/InetSocketAddress;

    #@92
    .end local v14    # "ret_val":Ljava/net/InetSocketAddress;
    invoke-direct {v14, v8, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    .line 225
    .end local v11    # "port":I
    .end local v16    # "type":I
    :cond_1
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    #@98
    .line 226
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    #@9b
    .line 229
    return-object v14

    #@9c
    .line 201
    .restart local v8    # "addrStr":Ljava/lang/String;
    .restart local v11    # "port":I
    .restart local v14    # "ret_val":Ljava/net/InetSocketAddress;
    .restart local v16    # "type":I
    :cond_2
    :try_start_1
    sget v17, Landroid/system/OsConstants;->AF_INET6:I

    #@9e
    move/from16 v0, v17

    #@a0
    move/from16 v1, v16

    #@a2
    if-ne v0, v1, :cond_0

    #@a4
    .line 202
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v4

    #@a8
    .line 203
    .local v4, "addr1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v5

    #@ac
    .line 204
    .local v5, "addr2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v6

    #@b0
    .line 205
    .local v6, "addr3":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v7

    #@b4
    .line 207
    .local v7, "addr4":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v11

    #@b8
    .line 209
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v10

    #@bc
    .line 210
    .local v10, "flowinfo":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v15

    #@c0
    .line 212
    .local v15, "scope_id":I
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c2
    const-string/jumbo v18, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]"

    #@c5
    const/16 v19, 0x8

    #@c7
    move/from16 v0, v19

    #@c9
    new-array v0, v0, [Ljava/lang/Object;

    #@cb
    move-object/from16 v19, v0

    #@cd
    .line 213
    shr-int/lit8 v20, v4, 0x10

    #@cf
    const v21, 0xffff

    #@d2
    and-int v20, v20, v21

    #@d4
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d7
    move-result-object v20

    #@d8
    const/16 v21, 0x0

    #@da
    aput-object v20, v19, v21

    #@dc
    const v20, 0xffff

    #@df
    and-int v20, v20, v4

    #@e1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e4
    move-result-object v20

    #@e5
    const/16 v21, 0x1

    #@e7
    aput-object v20, v19, v21

    #@e9
    .line 214
    shr-int/lit8 v20, v5, 0x10

    #@eb
    const v21, 0xffff

    #@ee
    and-int v20, v20, v21

    #@f0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f3
    move-result-object v20

    #@f4
    const/16 v21, 0x2

    #@f6
    aput-object v20, v19, v21

    #@f8
    const v20, 0xffff

    #@fb
    and-int v20, v20, v5

    #@fd
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@100
    move-result-object v20

    #@101
    const/16 v21, 0x3

    #@103
    aput-object v20, v19, v21

    #@105
    .line 215
    shr-int/lit8 v20, v6, 0x10

    #@107
    const v21, 0xffff

    #@10a
    and-int v20, v20, v21

    #@10c
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10f
    move-result-object v20

    #@110
    const/16 v21, 0x4

    #@112
    aput-object v20, v19, v21

    #@114
    const v20, 0xffff

    #@117
    and-int v20, v20, v6

    #@119
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11c
    move-result-object v20

    #@11d
    const/16 v21, 0x5

    #@11f
    aput-object v20, v19, v21

    #@121
    .line 216
    shr-int/lit8 v20, v7, 0x10

    #@123
    const v21, 0xffff

    #@126
    and-int v20, v20, v21

    #@128
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v20

    #@12c
    const/16 v21, 0x6

    #@12e
    aput-object v20, v19, v21

    #@130
    const v20, 0xffff

    #@133
    and-int v20, v20, v7

    #@135
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v20

    #@139
    const/16 v21, 0x7

    #@13b
    aput-object v20, v19, v21

    #@13d
    .line 212
    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@140
    move-result-object v8

    #@141
    .local v8, "addrStr":Ljava/lang/String;
    goto/16 :goto_0

    #@143
    .line 224
    .end local v4    # "addr1":I
    .end local v5    # "addr2":I
    .end local v6    # "addr3":I
    .end local v7    # "addr4":I
    .end local v8    # "addrStr":Ljava/lang/String;
    .end local v10    # "flowinfo":I
    .end local v11    # "port":I
    .end local v13    # "res":I
    .end local v14    # "ret_val":Ljava/net/InetSocketAddress;
    .end local v15    # "scope_id":I
    .end local v16    # "type":I
    :catchall_0
    move-exception v17

    #@144
    .line 225
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    #@147
    .line 226
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    #@14a
    .line 224
    throw v17
.end method

.method public transactGetString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "method_code"    # I
    .param p2, "error_ret_val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 140
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 141
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v5, 0x0

    #@10
    invoke-interface {v4, p1, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v2

    #@17
    .line 144
    .local v2, "res":I
    if-nez v2, :cond_0

    #@19
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v3

    #@1d
    .line 147
    .local v3, "ret_val":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 151
    return-object v3

    #@24
    .line 144
    .end local v3    # "ret_val":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    #@25
    .restart local v3    # "ret_val":Ljava/lang/String;
    goto :goto_0

    #@26
    .line 146
    .end local v2    # "res":I
    .end local v3    # "ret_val":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@27
    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 146
    throw v4
.end method

.method public transactSetInt(II)I
    .locals 5
    .param p1, "method_code"    # I
    .param p2, "val"    # I

    #@0
    .prologue
    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 72
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 75
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 76
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 77
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 79
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 79
    return v3

    #@21
    .line 81
    :catch_0
    move-exception v1

    #@22
    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    #@23
    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 82
    return v3

    #@2a
    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@2b
    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 84
    throw v3
.end method

.method public transactSetLong(IJ)I
    .locals 6
    .param p1, "method_code"    # I
    .param p2, "val"    # J

    #@0
    .prologue
    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 117
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 118
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 119
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 121
    return v3

    #@21
    .line 123
    :catch_0
    move-exception v1

    #@22
    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    #@23
    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 124
    return v3

    #@2a
    .line 126
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@2b
    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 126
    throw v3
.end method

.method public transactSetSockaddr(ILjava/net/InetSocketAddress;)I
    .locals 14
    .param p1, "method_code"    # I
    .param p2, "addr"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v4

    #@4
    .line 234
    .local v4, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v8

    #@8
    .line 235
    .local v8, "reply":Landroid/os/Parcel;
    const/4 v9, -0x1

    #@9
    .line 238
    .local v9, "ret_val":I
    :try_start_0
    iget-object v12, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@b
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 240
    if-nez p2, :cond_0

    #@10
    .line 241
    const/4 v12, 0x0

    #@11
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 277
    :goto_0
    iget-object v12, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v13, 0x0

    #@17
    invoke-interface {v12, p1, v4, v8, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 278
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v9

    #@1e
    .line 284
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 285
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 288
    :goto_1
    return v9

    #@25
    .line 243
    :cond_0
    const/4 v12, 0x1

    #@26
    :try_start_1
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 244
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v1

    #@2d
    .line 245
    .local v1, "a":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    #@30
    move-result-object v3

    #@31
    .line 246
    .local v3, "b":[B
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    #@34
    move-result v7

    #@35
    .line 248
    .local v7, "p":I
    instance-of v12, v1, Ljava/net/Inet4Address;

    #@37
    if-eqz v12, :cond_1

    #@39
    .line 249
    const/4 v12, 0x0

    #@3a
    aget-byte v12, v3, v12

    #@3c
    and-int/lit16 v12, v12, 0xff

    #@3e
    shl-int/lit8 v12, v12, 0x18

    #@40
    .line 250
    const/4 v13, 0x1

    #@41
    aget-byte v13, v3, v13

    #@43
    and-int/lit16 v13, v13, 0xff

    #@45
    shl-int/lit8 v13, v13, 0x10

    #@47
    .line 249
    or-int/2addr v12, v13

    #@48
    .line 251
    const/4 v13, 0x2

    #@49
    aget-byte v13, v3, v13

    #@4b
    and-int/lit16 v13, v13, 0xff

    #@4d
    shl-int/lit8 v13, v13, 0x8

    #@4f
    .line 249
    or-int/2addr v12, v13

    #@50
    .line 252
    const/4 v13, 0x3

    #@51
    aget-byte v13, v3, v13

    #@53
    and-int/lit16 v13, v13, 0xff

    #@55
    .line 249
    or-int v10, v12, v13

    #@57
    .line 254
    .local v10, "v4addr":I
    sget v12, Landroid/system/OsConstants;->AF_INET:I

    #@59
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 255
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 256
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 280
    .end local v1    # "a":Ljava/net/InetAddress;
    .end local v3    # "b":[B
    .end local v7    # "p":I
    .end local v10    # "v4addr":I
    :catch_0
    move-exception v5

    #@64
    .line 281
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v9, -0x7

    #@65
    .line 284
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    #@68
    .line 285
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@6b
    goto :goto_1

    #@6c
    .line 258
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "a":Ljava/net/InetAddress;
    .restart local v3    # "b":[B
    .restart local v7    # "p":I
    :cond_1
    :try_start_2
    instance-of v12, v1, Ljava/net/Inet6Address;

    #@6e
    if-eqz v12, :cond_3

    #@70
    .line 260
    move-object v0, v1

    #@71
    check-cast v0, Ljava/net/Inet6Address;

    #@73
    move-object v11, v0

    #@74
    .line 261
    .local v11, "v6":Ljava/net/Inet6Address;
    sget v12, Landroid/system/OsConstants;->AF_INET6:I

    #@76
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    .line 262
    const/4 v6, 0x0

    #@7a
    .local v6, "i":I
    :goto_2
    const/4 v12, 0x4

    #@7b
    if-ge v6, v12, :cond_2

    #@7d
    .line 263
    mul-int/lit8 v12, v6, 0x4

    #@7f
    add-int/lit8 v12, v12, 0x0

    #@81
    aget-byte v12, v3, v12

    #@83
    and-int/lit16 v12, v12, 0xff

    #@85
    shl-int/lit8 v12, v12, 0x18

    #@87
    .line 264
    mul-int/lit8 v13, v6, 0x4

    #@89
    add-int/lit8 v13, v13, 0x1

    #@8b
    aget-byte v13, v3, v13

    #@8d
    and-int/lit16 v13, v13, 0xff

    #@8f
    shl-int/lit8 v13, v13, 0x10

    #@91
    .line 263
    or-int/2addr v12, v13

    #@92
    .line 265
    mul-int/lit8 v13, v6, 0x4

    #@94
    add-int/lit8 v13, v13, 0x2

    #@96
    aget-byte v13, v3, v13

    #@98
    and-int/lit16 v13, v13, 0xff

    #@9a
    shl-int/lit8 v13, v13, 0x8

    #@9c
    .line 263
    or-int/2addr v12, v13

    #@9d
    .line 266
    mul-int/lit8 v13, v6, 0x4

    #@9f
    add-int/lit8 v13, v13, 0x3

    #@a1
    aget-byte v13, v3, v13

    #@a3
    and-int/lit16 v13, v13, 0xff

    #@a5
    .line 263
    or-int v2, v12, v13

    #@a7
    .line 267
    .local v2, "aword":I
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 262
    add-int/lit8 v6, v6, 0x1

    #@ac
    goto :goto_2

    #@ad
    .line 269
    .end local v2    # "aword":I
    :cond_2
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@b0
    .line 270
    const/4 v12, 0x0

    #@b1
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 271
    invoke-virtual {v11}, Ljava/net/Inet6Address;->getScopeId()I

    #@b7
    move-result v12

    #@b8
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bb
    goto/16 :goto_0

    #@bd
    .line 283
    .end local v1    # "a":Ljava/net/InetAddress;
    .end local v3    # "b":[B
    .end local v6    # "i":I
    .end local v7    # "p":I
    .end local v11    # "v6":Ljava/net/Inet6Address;
    :catchall_0
    move-exception v12

    #@be
    .line 284
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    #@c1
    .line 285
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@c4
    .line 283
    throw v12

    #@c5
    .line 273
    .restart local v1    # "a":Ljava/net/InetAddress;
    .restart local v3    # "b":[B
    .restart local v7    # "p":I
    :cond_3
    const/4 v12, -0x4

    #@c6
    .line 284
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    #@c9
    .line 285
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@cc
    .line 273
    return v12
.end method

.method public transactSetString(ILjava/lang/String;)I
    .locals 5
    .param p1, "method_code"    # I
    .param p2, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 159
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 161
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 163
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 163
    return v3

    #@21
    .line 165
    :catch_0
    move-exception v1

    #@22
    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    #@23
    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 166
    return v3

    #@2a
    .line 168
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@2b
    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 168
    throw v3
.end method
