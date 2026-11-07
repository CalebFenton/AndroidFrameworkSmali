.class public Lsun/nio/ch/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field static final blacklist IOV_MAX:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    nop

    .line 373
    invoke-static {}, Lsun/nio/ch/IOUtil;->iovMax()I

    move-result v0

    sput v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    .line 374
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist configureBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist drain(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist fdLimit()I
.end method

.method public static native blacklist fdVal(Ljava/io/FileDescriptor;)I
.end method

.method static native blacklist iovMax()I
.end method

.method static native blacklist makePipe(Z)J
.end method

.method public static blacklist newFD(I)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "i"    # I

    .line 320
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 321
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p0}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    .line 322
    return-object v0
.end method

.method static native blacklist randomBytes([B)Z
.end method

.method static blacklist read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 191
    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_f

    .line 192
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    return v0

    .line 195
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_17
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v1

    .line 198
    .local v1, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    if-lez v1, :cond_23

    .line 200
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_28

    .line 201
    :cond_23
    nop

    .line 203
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 201
    return v1

    .line 203
    .end local v1    # "n":I
    :catchall_28
    move-exception v1

    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 204
    throw v1

    .line 190
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .registers 24
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v1

    .line 242
    .local v1, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v2, 0x0

    .line 243
    .local v2, "completed":Z
    const/4 v0, 0x0

    .line 247
    .local v0, "iov_len":I
    add-int v3, p2, p3

    .line 248
    .local v3, "count":I
    move/from16 v4, p2

    move/from16 v18, v4

    move v4, v0

    move/from16 v0, v18

    .line 249
    .local v0, "i":I
    .local v4, "iov_len":I
    :goto_f
    if-ge v0, v3, :cond_68

    :try_start_11
    sget v5, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    if-ge v4, v5, :cond_68

    .line 250
    aget-object v5, p1, v0

    .line 251
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_58

    .line 253
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 254
    .local v6, "pos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 255
    .local v7, "lim":I
    nop

    .line 256
    if-gt v6, v7, :cond_2b

    sub-int v8, v7, v6

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    .line 258
    .local v8, "rem":I
    :goto_2c
    if-lez v8, :cond_54

    .line 259
    invoke-virtual {v1, v4, v5, v6, v8}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    .line 262
    instance-of v9, v5, Lsun/nio/ch/DirectBuffer;

    if-nez v9, :cond_42

    .line 263
    invoke-static {v8}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 264
    .local v9, "shadow":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4, v9}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    .line 265
    move-object v5, v9

    .line 266
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    move v6, v10

    .line 269
    .end local v9    # "shadow":Ljava/nio/ByteBuffer;
    :cond_42
    move-object v9, v5

    check-cast v9, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v9}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v9

    int-to-long v11, v6

    add-long/2addr v9, v11

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    .line 270
    int-to-long v9, v8

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V

    .line 271
    add-int/lit8 v4, v4, 0x1

    .line 273
    :cond_54
    nop

    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "pos":I
    .end local v7    # "lim":I
    .end local v8    # "rem":I
    add-int/lit8 v0, v0, 0x1

    .line 274
    goto :goto_f

    .line 252
    .restart local v5    # "buf":Ljava/nio/ByteBuffer;
    :cond_58
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Read-only buffer"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "vec":Lsun/nio/ch/IOVecWrapper;
    .end local v2    # "completed":Z
    .end local v4    # "iov_len":I
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bufs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    throw v6
    :try_end_60
    .catchall {:try_start_11 .. :try_end_60} :catchall_60

    .line 308
    .end local v0    # "i":I
    .end local v3    # "count":I
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .restart local v1    # "vec":Lsun/nio/ch/IOVecWrapper;
    .restart local v2    # "completed":Z
    .restart local v4    # "iov_len":I
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "bufs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    :catchall_60
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move v3, v2

    goto/16 :goto_118

    .line 275
    .restart local v0    # "i":I
    .restart local v3    # "count":I
    :cond_68
    const-wide/16 v5, 0x0

    if-nez v4, :cond_82

    .line 276
    nop

    .line 308
    if-nez v2, :cond_81

    .line 309
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_70
    if-ge v7, v4, :cond_81

    .line 310
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 311
    .local v8, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_7b

    .line 312
    invoke-static {v8}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_7b
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    .end local v8    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 276
    .end local v7    # "j":I
    :cond_81
    return-wide v5

    .line 278
    :cond_82
    :try_start_82
    iget-wide v7, v1, Lsun/nio/ch/IOVecWrapper;->address:J
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_112

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    :try_start_88
    invoke-virtual {v10, v9, v7, v8, v4}, Lsun/nio/ch/NativeDispatcher;->readv(Ljava/io/FileDescriptor;JI)J

    move-result-wide v7

    .line 281
    .local v7, "bytesRead":J
    move-wide v11, v7

    .line 282
    .local v11, "left":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8e
    if-ge v13, v4, :cond_f4

    .line 283
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 284
    .local v14, "shadow":Ljava/nio/ByteBuffer;
    cmp-long v15, v11, v5

    if-lez v15, :cond_db

    .line 285
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 286
    .local v15, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v16
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_110

    move/from16 v17, v16

    .line 287
    .local v17, "rem":I
    move v6, v2

    move/from16 v16, v3

    move/from16 v5, v17

    .end local v2    # "completed":Z
    .end local v3    # "count":I
    .end local v17    # "rem":I
    .local v5, "rem":I
    .local v6, "completed":Z
    .local v16, "count":I
    int-to-long v2, v5

    cmp-long v2, v11, v2

    if-lez v2, :cond_af

    move/from16 v17, v5

    goto :goto_b2

    :cond_af
    long-to-int v2, v11

    move/from16 v17, v2

    :goto_b2
    move/from16 v2, v17

    .line 288
    .local v2, "n":I
    if-nez v14, :cond_c6

    .line 289
    :try_start_b6
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v3

    .line 290
    .local v3, "pos":I
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    add-int v0, v3, v2

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_c1
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_c3

    .line 291
    nop

    .end local v3    # "pos":I
    goto :goto_d3

    .line 308
    .end local v2    # "n":I
    .end local v5    # "rem":I
    .end local v7    # "bytesRead":J
    .end local v11    # "left":J
    .end local v13    # "j":I
    .end local v14    # "shadow":Ljava/nio/ByteBuffer;
    .end local v15    # "buf":Ljava/nio/ByteBuffer;
    .end local v16    # "count":I
    .end local v17    # "i":I
    :catchall_c3
    move-exception v0

    move v3, v6

    goto :goto_118

    .line 292
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v5    # "rem":I
    .restart local v7    # "bytesRead":J
    .restart local v11    # "left":J
    .restart local v13    # "j":I
    .restart local v14    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v15    # "buf":Ljava/nio/ByteBuffer;
    .restart local v16    # "count":I
    :cond_c6
    move/from16 v17, v0

    .end local v0    # "i":I
    .restart local v17    # "i":I
    :try_start_c8
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_d3
    .catchall {:try_start_c8 .. :try_end_d3} :catchall_d8

    .line 295
    :goto_d3
    move v0, v5

    move v3, v6

    .end local v5    # "rem":I
    .end local v6    # "completed":Z
    .local v0, "rem":I
    .local v3, "completed":Z
    int-to-long v5, v2

    sub-long/2addr v11, v5

    goto :goto_e0

    .line 308
    .end local v0    # "rem":I
    .end local v2    # "n":I
    .end local v3    # "completed":Z
    .end local v7    # "bytesRead":J
    .end local v11    # "left":J
    .end local v13    # "j":I
    .end local v14    # "shadow":Ljava/nio/ByteBuffer;
    .end local v15    # "buf":Ljava/nio/ByteBuffer;
    .end local v16    # "count":I
    .end local v17    # "i":I
    .restart local v6    # "completed":Z
    :catchall_d8
    move-exception v0

    move v3, v6

    .end local v6    # "completed":Z
    .restart local v3    # "completed":Z
    goto :goto_118

    .line 284
    .local v0, "i":I
    .local v2, "completed":Z
    .local v3, "count":I
    .restart local v7    # "bytesRead":J
    .restart local v11    # "left":J
    .restart local v13    # "j":I
    .restart local v14    # "shadow":Ljava/nio/ByteBuffer;
    :cond_db
    move/from16 v17, v0

    move/from16 v16, v3

    move v3, v2

    .line 297
    .end local v0    # "i":I
    .end local v2    # "completed":Z
    .local v3, "completed":Z
    .restart local v16    # "count":I
    .restart local v17    # "i":I
    :goto_e0
    if-eqz v14, :cond_e5

    .line 298
    :try_start_e2
    invoke-static {v14}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 299
    :cond_e5
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f2

    .line 282
    .end local v14    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v13, v13, 0x1

    move v2, v3

    move/from16 v3, v16

    move/from16 v0, v17

    const-wide/16 v5, 0x0

    goto :goto_8e

    .line 308
    .end local v7    # "bytesRead":J
    .end local v11    # "left":J
    .end local v13    # "j":I
    .end local v16    # "count":I
    .end local v17    # "i":I
    :catchall_f2
    move-exception v0

    goto :goto_118

    .line 282
    .restart local v0    # "i":I
    .restart local v2    # "completed":Z
    .local v3, "count":I
    .restart local v7    # "bytesRead":J
    .restart local v11    # "left":J
    .restart local v13    # "j":I
    :cond_f4
    move/from16 v17, v0

    move/from16 v16, v3

    move v3, v2

    .line 302
    .end local v0    # "i":I
    .end local v2    # "completed":Z
    .end local v13    # "j":I
    .local v3, "completed":Z
    .restart local v16    # "count":I
    .restart local v17    # "i":I
    const/4 v0, 0x1

    .line 303
    .end local v3    # "completed":Z
    .local v0, "completed":Z
    nop

    .line 308
    if-nez v0, :cond_10f

    .line 309
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_fe
    if-ge v2, v4, :cond_10f

    .line 310
    invoke-virtual {v1, v2}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 311
    .local v3, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_109

    .line 312
    invoke-static {v3}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_109
    invoke-virtual {v1, v2}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    .end local v3    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    .line 303
    .end local v2    # "j":I
    :cond_10f
    return-wide v7

    .line 308
    .end local v0    # "completed":Z
    .end local v7    # "bytesRead":J
    .end local v11    # "left":J
    .end local v16    # "count":I
    .end local v17    # "i":I
    .local v2, "completed":Z
    :catchall_110
    move-exception v0

    goto :goto_117

    :catchall_112
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    :goto_117
    move v3, v2

    .end local v2    # "completed":Z
    .local v3, "completed":Z
    :goto_118
    if-nez v3, :cond_12c

    .line 309
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11b
    if-ge v2, v4, :cond_12c

    .line 310
    invoke-virtual {v1, v2}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 311
    .local v5, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_126

    .line 312
    invoke-static {v5}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_126
    invoke-virtual {v1, v2}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    .end local v5    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    .line 316
    .end local v2    # "j":I
    :cond_12c
    throw v0
.end method

.method static blacklist read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 16
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 212
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 213
    .local v1, "lim":I
    nop

    .line 214
    const/4 v2, 0x0

    if-gt v0, v1, :cond_f

    sub-int v3, v1, v0

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    move v8, v3

    .line 216
    .local v8, "rem":I
    if-nez v8, :cond_14

    .line 217
    return v2

    .line 218
    :cond_14
    const/4 v2, 0x0

    .line 219
    .local v2, "n":I
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-eqz v3, :cond_2d

    .line 220
    move-object v3, p1

    check-cast v3, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v3

    int-to-long v5, v0

    add-long v6, v3, v5

    move-object v5, p0

    move-wide v9, p2

    move-object v4, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "position":J
    .end local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .local v4, "nd":Lsun/nio/ch/NativeDispatcher;
    .local v5, "fd":Ljava/io/FileDescriptor;
    .local v9, "position":J
    invoke-virtual/range {v4 .. v10}, Lsun/nio/ch/NativeDispatcher;->pread(Ljava/io/FileDescriptor;JIJ)I

    move-result p0

    .end local v2    # "n":I
    .local p0, "n":I
    goto :goto_3d

    .line 223
    .end local v4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "position":J
    .restart local v2    # "n":I
    .local p0, "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "position":J
    .restart local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    :cond_2d
    move-object v5, p0

    move-wide v9, p2

    move-object v4, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "position":J
    .end local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .restart local v4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .restart local v5    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "position":J
    move-object p0, p1

    check-cast p0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide p2

    int-to-long v6, v0

    add-long/2addr p2, v6

    invoke-virtual {v4, v5, p2, p3, v8}, Lsun/nio/ch/NativeDispatcher;->read(Ljava/io/FileDescriptor;JI)I

    move-result p0

    .line 225
    .end local v2    # "n":I
    .local p0, "n":I
    :goto_3d
    if-lez p0, :cond_44

    .line 226
    add-int p2, v0, p0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    :cond_44
    return p0
.end method

.method static native blacklist setfdVal(Ljava/io/FileDescriptor;I)V
.end method

.method static blacklist write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_9

    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    return v0

    .line 54
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 55
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 56
    .local v1, "lim":I
    nop

    .line 57
    if-gt v0, v1, :cond_17

    sub-int v2, v1, v0

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 58
    .local v2, "rem":I
    :goto_18
    invoke-static {v2}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 60
    .local v3, "bb":Ljava/nio/ByteBuffer;
    :try_start_1c
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-static {p0, v3, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    .line 66
    .local v4, "n":I
    if-lez v4, :cond_30

    .line 68
    add-int v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_35

    .line 70
    :cond_30
    nop

    .line 72
    invoke-static {v3}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 70
    return v4

    .line 72
    .end local v4    # "n":I
    :catchall_35
    move-exception v4

    invoke-static {v3}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 73
    throw v4
.end method

.method static blacklist write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .registers 24
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v1

    .line 112
    .local v1, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v2, 0x0

    .line 113
    .local v2, "completed":Z
    const/4 v0, 0x0

    .line 117
    .local v0, "iov_len":I
    add-int v3, p2, p3

    .line 118
    .local v3, "count":I
    move/from16 v4, p2

    move/from16 v18, v4

    move v4, v0

    move/from16 v0, v18

    .line 119
    .local v0, "i":I
    .local v4, "iov_len":I
    :goto_f
    if-ge v0, v3, :cond_64

    :try_start_11
    sget v5, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    if-ge v4, v5, :cond_64

    .line 120
    aget-object v5, p1, v0

    .line 121
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 122
    .local v6, "pos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 123
    .local v7, "lim":I
    nop

    .line 124
    if-gt v6, v7, :cond_25

    sub-int v8, v7, v6

    goto :goto_26

    :cond_25
    const/4 v8, 0x0

    .line 125
    .local v8, "rem":I
    :goto_26
    if-lez v8, :cond_57

    .line 126
    invoke-virtual {v1, v4, v5, v6, v8}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    .line 129
    instance-of v9, v5, Lsun/nio/ch/DirectBuffer;

    if-nez v9, :cond_45

    .line 130
    invoke-static {v8}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 131
    .local v9, "shadow":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v1, v4, v9}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    .line 134
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    move-object v5, v9

    .line 136
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    move v6, v10

    .line 139
    .end local v9    # "shadow":Ljava/nio/ByteBuffer;
    :cond_45
    move-object v9, v5

    check-cast v9, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v9}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v9

    int-to-long v11, v6

    add-long/2addr v9, v11

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    .line 140
    int-to-long v9, v8

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_5b

    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 143
    :cond_57
    nop

    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "pos":I
    .end local v7    # "lim":I
    .end local v8    # "rem":I
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto :goto_f

    .line 174
    .end local v0    # "i":I
    .end local v3    # "count":I
    :catchall_5b
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move/from16 v17, v2

    goto/16 :goto_fe

    .line 145
    .restart local v0    # "i":I
    .restart local v3    # "count":I
    :cond_64
    const-wide/16 v5, 0x0

    if-nez v4, :cond_7e

    .line 146
    nop

    .line 174
    if-nez v2, :cond_7d

    .line 175
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6c
    if-ge v7, v4, :cond_7d

    .line 176
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 177
    .local v8, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_77

    .line 178
    invoke-static {v8}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_77
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    .end local v8    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 146
    .end local v7    # "j":I
    :cond_7d
    return-wide v5

    .line 148
    :cond_7e
    :try_start_7e
    iget-wide v7, v1, Lsun/nio/ch/IOVecWrapper;->address:J
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_f7

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    :try_start_84
    invoke-virtual {v10, v9, v7, v8, v4}, Lsun/nio/ch/NativeDispatcher;->writev(Ljava/io/FileDescriptor;JI)J

    move-result-wide v7

    .line 151
    .local v7, "bytesWritten":J
    move-wide v11, v7

    .line 152
    .local v11, "left":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8a
    if-ge v13, v4, :cond_da

    .line 153
    cmp-long v14, v11, v5

    if-lez v14, :cond_bf

    .line 154
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 155
    .local v14, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v15

    .line 156
    .local v15, "pos":I
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v16
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_f5

    move/from16 v17, v16

    .line 157
    .local v17, "rem":I
    move v6, v2

    move/from16 v16, v3

    move/from16 v5, v17

    .end local v2    # "completed":Z
    .end local v3    # "count":I
    .end local v17    # "rem":I
    .local v5, "rem":I
    .local v6, "completed":Z
    .local v16, "count":I
    int-to-long v2, v5

    cmp-long v2, v11, v2

    if-lez v2, :cond_ab

    move/from16 v17, v5

    goto :goto_ae

    :cond_ab
    long-to-int v2, v11

    move/from16 v17, v2

    :goto_ae
    move/from16 v2, v17

    .line 158
    .local v2, "n":I
    add-int v3, v15, v2

    :try_start_b2
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_bb

    .line 159
    move v3, v5

    move/from16 v17, v6

    .end local v5    # "rem":I
    .end local v6    # "completed":Z
    .local v3, "rem":I
    .local v17, "completed":Z
    int-to-long v5, v2

    sub-long/2addr v11, v5

    goto :goto_c3

    .line 174
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "rem":I
    .end local v7    # "bytesWritten":J
    .end local v11    # "left":J
    .end local v13    # "j":I
    .end local v14    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "pos":I
    .end local v16    # "count":I
    .end local v17    # "completed":Z
    .restart local v6    # "completed":Z
    :catchall_bb
    move-exception v0

    move/from16 v17, v6

    .end local v6    # "completed":Z
    .restart local v17    # "completed":Z
    goto :goto_fe

    .line 153
    .end local v17    # "completed":Z
    .restart local v0    # "i":I
    .local v2, "completed":Z
    .local v3, "count":I
    .restart local v7    # "bytesWritten":J
    .restart local v11    # "left":J
    .restart local v13    # "j":I
    :cond_bf
    move/from16 v17, v2

    move/from16 v16, v3

    .line 162
    .end local v2    # "completed":Z
    .end local v3    # "count":I
    .restart local v16    # "count":I
    .restart local v17    # "completed":Z
    :goto_c3
    :try_start_c3
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 163
    .local v2, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_cc

    .line 164
    invoke-static {v2}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 165
    :cond_cc
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_d8

    .line 152
    .end local v2    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move/from16 v2, v17

    const-wide/16 v5, 0x0

    goto :goto_8a

    .line 174
    .end local v0    # "i":I
    .end local v7    # "bytesWritten":J
    .end local v11    # "left":J
    .end local v13    # "j":I
    .end local v16    # "count":I
    :catchall_d8
    move-exception v0

    goto :goto_fe

    .line 152
    .end local v17    # "completed":Z
    .restart local v0    # "i":I
    .local v2, "completed":Z
    .restart local v3    # "count":I
    .restart local v7    # "bytesWritten":J
    .restart local v11    # "left":J
    .restart local v13    # "j":I
    :cond_da
    move/from16 v17, v2

    move/from16 v16, v3

    .line 168
    .end local v2    # "completed":Z
    .end local v3    # "count":I
    .end local v13    # "j":I
    .restart local v16    # "count":I
    .restart local v17    # "completed":Z
    const/4 v2, 0x1

    .line 169
    .end local v17    # "completed":Z
    .restart local v2    # "completed":Z
    nop

    .line 174
    if-nez v2, :cond_f4

    .line 175
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e3
    if-ge v3, v4, :cond_f4

    .line 176
    invoke-virtual {v1, v3}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 177
    .local v5, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_ee

    .line 178
    invoke-static {v5}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_ee
    invoke-virtual {v1, v3}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    .end local v5    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    .line 169
    .end local v3    # "j":I
    :cond_f4
    return-wide v7

    .line 174
    .end local v0    # "i":I
    .end local v7    # "bytesWritten":J
    .end local v11    # "left":J
    .end local v16    # "count":I
    :catchall_f5
    move-exception v0

    goto :goto_fc

    :catchall_f7
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    :goto_fc
    move/from16 v17, v2

    .end local v2    # "completed":Z
    .restart local v17    # "completed":Z
    :goto_fe
    if-nez v17, :cond_112

    .line 175
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_101
    if-ge v2, v4, :cond_112

    .line 176
    invoke-virtual {v1, v2}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 177
    .local v3, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_10c

    .line 178
    invoke-static {v3}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_10c
    invoke-virtual {v1, v2}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    .end local v3    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_101

    .line 182
    .end local v2    # "j":I
    :cond_112
    throw v0
.end method

.method static blacklist write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 16
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 81
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 82
    .local v1, "lim":I
    nop

    .line 83
    const/4 v2, 0x0

    if-gt v0, v1, :cond_f

    sub-int v3, v1, v0

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    move v8, v3

    .line 85
    .local v8, "rem":I
    const/4 v3, 0x0

    .line 86
    .local v3, "written":I
    if-nez v8, :cond_15

    .line 87
    return v2

    .line 88
    :cond_15
    const-wide/16 v4, -0x1

    cmp-long v2, p2, v4

    if-eqz v2, :cond_2c

    .line 89
    move-object v2, p1

    check-cast v2, Lsun/nio/ch/DirectBuffer;

    .line 90
    invoke-interface {v2}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v6, v4

    .line 89
    move-object v5, p0

    move-wide v9, p2

    move-object v4, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "position":J
    .end local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .local v4, "nd":Lsun/nio/ch/NativeDispatcher;
    .local v5, "fd":Ljava/io/FileDescriptor;
    .local v9, "position":J
    invoke-virtual/range {v4 .. v10}, Lsun/nio/ch/NativeDispatcher;->pwrite(Ljava/io/FileDescriptor;JIJ)I

    move-result p0

    .end local v3    # "written":I
    .local p0, "written":I
    goto :goto_3c

    .line 93
    .end local v4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "position":J
    .restart local v3    # "written":I
    .local p0, "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "position":J
    .restart local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    :cond_2c
    move-object v5, p0

    move-wide v9, p2

    move-object v4, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "position":J
    .end local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .restart local v4    # "nd":Lsun/nio/ch/NativeDispatcher;
    .restart local v5    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "position":J
    move-object p0, p1

    check-cast p0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide p2

    int-to-long v6, v0

    add-long/2addr p2, v6

    invoke-virtual {v4, v5, p2, p3, v8}, Lsun/nio/ch/NativeDispatcher;->write(Ljava/io/FileDescriptor;JI)I

    move-result p0

    .line 95
    .end local v3    # "written":I
    .local p0, "written":I
    :goto_3c
    if-lez p0, :cond_43

    .line 96
    add-int p2, v0, p0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    :cond_43
    return p0
.end method
