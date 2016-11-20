.class Lsun/nio/ch/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IOV_MAX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/IOUtil;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    #@b
    .line 348
    invoke-static {}, Lsun/nio/ch/IOUtil;->iovMax()I

    #@e
    move-result v0

    #@f
    sput v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    #@11
    .line 37
    return-void

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static native configureBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native drain(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native fdLimit()I
.end method

.method static native fdVal(Ljava/io/FileDescriptor;)I
.end method

.method static native iovMax()I
.end method

.method static native makePipe(Z)J
.end method

.method static newFD(I)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 320
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 321
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p0}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    #@8
    .line 322
    return-object v0
.end method

.method static native randomBytes([B)Z
.end method

.method static read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "Read-only buffer"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 191
    :cond_0
    instance-of v2, p1, Lsun/nio/ch/DirectBuffer;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 192
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@16
    move-result v2

    #@17
    return v2

    #@18
    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v2

    #@1c
    invoke-static {v2}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    .line 197
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@23
    move-result v1

    #@24
    .line 198
    .local v1, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@27
    .line 199
    if-lez v1, :cond_2

    #@29
    .line 200
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 203
    :cond_2
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@2f
    .line 201
    return v1

    #@30
    .line 202
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    #@31
    .line 203
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@34
    .line 202
    throw v2
.end method

.method static read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .locals 24
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

    #@0
    .prologue
    .line 240
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    #@3
    move-result-object v19

    #@4
    .line 242
    .local v19, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v5, 0x0

    #@5
    .line 243
    .local v5, "completed":Z
    const/4 v10, 0x0

    #@6
    .line 247
    .local v10, "iov_len":I
    add-int v8, p2, p3

    #@8
    .line 248
    .local v8, "count":I
    move/from16 v9, p2

    #@a
    .line 249
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_7

    #@c
    :try_start_0
    sget v20, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    #@e
    move/from16 v0, v20

    #@10
    if-ge v10, v0, :cond_7

    #@12
    .line 250
    aget-object v4, p1, v9

    #@14
    .line 251
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@17
    move-result v20

    #@18
    if-eqz v20, :cond_1

    #@1a
    .line 252
    new-instance v20, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v21, "Read-only buffer"

    #@1f
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 305
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v20

    #@24
    .line 308
    if-nez v5, :cond_12

    #@26
    .line 309
    const/4 v11, 0x0

    #@27
    .local v11, "j":I
    :goto_1
    if-ge v11, v10, :cond_12

    #@29
    .line 310
    move-object/from16 v0, v19

    #@2b
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@2e
    move-result-object v18

    #@2f
    .line 311
    .local v18, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_0

    #@31
    .line 312
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@34
    .line 313
    :cond_0
    move-object/from16 v0, v19

    #@36
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@39
    .line 309
    add-int/lit8 v11, v11, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 253
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@3f
    move-result v16

    #@40
    .line 254
    .local v16, "pos":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    #@43
    move-result v14

    #@44
    .line 255
    .local v14, "lim":I
    sget-boolean v20, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    #@46
    if-nez v20, :cond_3

    #@48
    move/from16 v0, v16

    #@4a
    if-gt v0, v14, :cond_2

    #@4c
    const/16 v20, 0x1

    #@4e
    :goto_2
    if-nez v20, :cond_3

    #@50
    new-instance v20, Ljava/lang/AssertionError;

    #@52
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@55
    throw v20

    #@56
    :cond_2
    const/16 v20, 0x0

    #@58
    goto :goto_2

    #@59
    .line 256
    :cond_3
    move/from16 v0, v16

    #@5b
    if-gt v0, v14, :cond_6

    #@5d
    sub-int v17, v14, v16

    #@5f
    .line 258
    .local v17, "rem":I
    :goto_3
    if-lez v17, :cond_5

    #@61
    .line 259
    move-object/from16 v0, v19

    #@63
    move/from16 v1, v16

    #@65
    move/from16 v2, v17

    #@67
    invoke-virtual {v0, v10, v4, v1, v2}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    #@6a
    .line 262
    instance-of v0, v4, Lsun/nio/ch/DirectBuffer;

    #@6c
    move/from16 v20, v0

    #@6e
    if-nez v20, :cond_4

    #@70
    .line 263
    invoke-static/range {v17 .. v17}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@73
    move-result-object v18

    #@74
    .line 264
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    #@76
    move-object/from16 v1, v18

    #@78
    invoke-virtual {v0, v10, v1}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    #@7b
    .line 265
    move-object/from16 v4, v18

    #@7d
    .line 266
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    #@80
    move-result v16

    #@81
    .line 269
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_4
    move-object v0, v4

    #@82
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@84
    move-object/from16 v20, v0

    #@86
    invoke-interface/range {v20 .. v20}, Lsun/nio/ch/DirectBuffer;->address()J

    #@89
    move-result-wide v20

    #@8a
    move/from16 v0, v16

    #@8c
    int-to-long v0, v0

    #@8d
    move-wide/from16 v22, v0

    #@8f
    add-long v20, v20, v22

    #@91
    move-object/from16 v0, v19

    #@93
    move-wide/from16 v1, v20

    #@95
    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    #@98
    .line 270
    move/from16 v0, v17

    #@9a
    int-to-long v0, v0

    #@9b
    move-wide/from16 v20, v0

    #@9d
    move-object/from16 v0, v19

    #@9f
    move-wide/from16 v1, v20

    #@a1
    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a4
    .line 271
    add-int/lit8 v10, v10, 0x1

    #@a6
    .line 273
    :cond_5
    add-int/lit8 v9, v9, 0x1

    #@a8
    goto/16 :goto_0

    #@aa
    .line 256
    .end local v17    # "rem":I
    :cond_6
    const/16 v17, 0x0

    #@ac
    goto :goto_3

    #@ad
    .line 275
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "lim":I
    .end local v16    # "pos":I
    :cond_7
    if-nez v10, :cond_a

    #@af
    .line 276
    const-wide/16 v20, 0x0

    #@b1
    .line 308
    if-nez v5, :cond_9

    #@b3
    .line 309
    const/4 v11, 0x0

    #@b4
    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v10, :cond_9

    #@b6
    .line 310
    move-object/from16 v0, v19

    #@b8
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@bb
    move-result-object v18

    #@bc
    .line 311
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_8

    #@be
    .line 312
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@c1
    .line 313
    :cond_8
    move-object/from16 v0, v19

    #@c3
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@c6
    .line 309
    add-int/lit8 v11, v11, 0x1

    #@c8
    goto :goto_4

    #@c9
    .line 276
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_9
    return-wide v20

    #@ca
    .line 278
    :cond_a
    :try_start_2
    move-object/from16 v0, v19

    #@cc
    iget-wide v0, v0, Lsun/nio/ch/IOVecWrapper;->address:J

    #@ce
    move-wide/from16 v20, v0

    #@d0
    move-object/from16 v0, p4

    #@d2
    move-object/from16 v1, p0

    #@d4
    move-wide/from16 v2, v20

    #@d6
    invoke-virtual {v0, v1, v2, v3, v10}, Lsun/nio/ch/NativeDispatcher;->readv(Ljava/io/FileDescriptor;JI)J

    #@d9
    move-result-wide v6

    #@da
    .line 281
    .local v6, "bytesRead":J
    move-wide v12, v6

    #@db
    .line 282
    .local v12, "left":J
    const/4 v11, 0x0

    #@dc
    .restart local v11    # "j":I
    :goto_5
    if-ge v11, v10, :cond_f

    #@de
    .line 283
    move-object/from16 v0, v19

    #@e0
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@e3
    move-result-object v18

    #@e4
    .line 284
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    const-wide/16 v20, 0x0

    #@e6
    cmp-long v20, v12, v20

    #@e8
    if-lez v20, :cond_b

    #@ea
    .line 285
    move-object/from16 v0, v19

    #@ec
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    #@ef
    move-result-object v4

    #@f0
    .line 286
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    #@f2
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    #@f5
    move-result v17

    #@f6
    .line 287
    .restart local v17    # "rem":I
    move/from16 v0, v17

    #@f8
    int-to-long v0, v0

    #@f9
    move-wide/from16 v20, v0

    #@fb
    cmp-long v20, v12, v20

    #@fd
    if-lez v20, :cond_d

    #@ff
    move/from16 v15, v17

    #@101
    .line 288
    .local v15, "n":I
    :goto_6
    if-nez v18, :cond_e

    #@103
    .line 289
    move-object/from16 v0, v19

    #@105
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    #@108
    move-result v16

    #@109
    .line 290
    .restart local v16    # "pos":I
    add-int v20, v16, v15

    #@10b
    move/from16 v0, v20

    #@10d
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@110
    .line 295
    .end local v16    # "pos":I
    :goto_7
    int-to-long v0, v15

    #@111
    move-wide/from16 v20, v0

    #@113
    sub-long v12, v12, v20

    #@115
    .line 297
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v17    # "rem":I
    :cond_b
    if-eqz v18, :cond_c

    #@117
    .line 298
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@11a
    .line 299
    :cond_c
    move-object/from16 v0, v19

    #@11c
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@11f
    .line 282
    add-int/lit8 v11, v11, 0x1

    #@121
    goto :goto_5

    #@122
    .line 287
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v17    # "rem":I
    :cond_d
    long-to-int v15, v12

    #@123
    .restart local v15    # "n":I
    goto :goto_6

    #@124
    .line 292
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    #@127
    move-result v20

    #@128
    add-int v20, v20, v15

    #@12a
    move-object/from16 v0, v18

    #@12c
    move/from16 v1, v20

    #@12e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@131
    .line 293
    move-object/from16 v0, v18

    #@133
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@136
    goto :goto_7

    #@137
    .line 302
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v17    # "rem":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_f
    const/4 v5, 0x1

    #@138
    .line 308
    if-nez v5, :cond_11

    #@13a
    .line 309
    const/4 v11, 0x0

    #@13b
    :goto_8
    if-ge v11, v10, :cond_11

    #@13d
    .line 310
    move-object/from16 v0, v19

    #@13f
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@142
    move-result-object v18

    #@143
    .line 311
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_10

    #@145
    .line 312
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@148
    .line 313
    :cond_10
    move-object/from16 v0, v19

    #@14a
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@14d
    .line 309
    add-int/lit8 v11, v11, 0x1

    #@14f
    goto :goto_8

    #@150
    .line 303
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_11
    return-wide v6

    #@151
    .line 305
    .end local v6    # "bytesRead":J
    .end local v11    # "j":I
    .end local v12    # "left":J
    :cond_12
    throw v20
.end method

.method static read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private static readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4
    move-result v9

    #@5
    .line 212
    .local v9, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@8
    move-result v7

    #@9
    .line 213
    .local v7, "lim":I
    sget-boolean v1, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-gt v9, v7, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    if-nez v1, :cond_1

    #@12
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v0

    #@18
    :cond_0
    move v1, v0

    #@19
    goto :goto_0

    #@1a
    .line 214
    :cond_1
    if-gt v9, v7, :cond_2

    #@1c
    sub-int v4, v7, v9

    #@1e
    .line 216
    .local v4, "rem":I
    :goto_1
    if-nez v4, :cond_3

    #@20
    .line 217
    return v0

    #@21
    .end local v4    # "rem":I
    :cond_2
    move v4, v0

    #@22
    .line 214
    goto :goto_1

    #@23
    .line 218
    .restart local v4    # "rem":I
    :cond_3
    const/4 v8, 0x0

    #@24
    .line 219
    .local v8, "n":I
    const-wide/16 v0, -0x1

    #@26
    cmp-long v0, p2, v0

    #@28
    if-eqz v0, :cond_5

    #@2a
    move-object v0, p1

    #@2b
    .line 220
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@2d
    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    #@30
    move-result-wide v0

    #@31
    int-to-long v2, v9

    #@32
    add-long/2addr v2, v0

    #@33
    move-object v0, p4

    #@34
    move-object v1, p0

    #@35
    move-wide v5, p2

    #@36
    invoke-virtual/range {v0 .. v6}, Lsun/nio/ch/NativeDispatcher;->pread(Ljava/io/FileDescriptor;JIJ)I

    #@39
    move-result v8

    #@3a
    .line 225
    :goto_2
    if-lez v8, :cond_4

    #@3c
    .line 226
    add-int v0, v9, v8

    #@3e
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@41
    .line 227
    :cond_4
    return v8

    #@42
    :cond_5
    move-object v0, p1

    #@43
    .line 223
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@45
    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    #@48
    move-result-wide v0

    #@49
    int-to-long v2, v9

    #@4a
    add-long/2addr v0, v2

    #@4b
    invoke-virtual {p4, p0, v0, v1, v4}, Lsun/nio/ch/NativeDispatcher;->read(Ljava/io/FileDescriptor;JI)I

    #@4e
    move-result v8

    #@4f
    goto :goto_2
.end method

.method static native setfdVal(Ljava/io/FileDescriptor;I)V
.end method

.method static write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 50
    instance-of v5, p1, Lsun/nio/ch/DirectBuffer;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@d
    move-result v3

    #@e
    .line 55
    .local v3, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@11
    move-result v1

    #@12
    .line 56
    .local v1, "lim":I
    sget-boolean v5, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    #@14
    if-nez v5, :cond_2

    #@16
    if-gt v3, v1, :cond_1

    #@18
    const/4 v5, 0x1

    #@19
    :goto_0
    if-nez v5, :cond_2

    #@1b
    new-instance v5, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v5

    #@21
    :cond_1
    move v5, v4

    #@22
    goto :goto_0

    #@23
    .line 57
    :cond_2
    if-gt v3, v1, :cond_3

    #@25
    sub-int v4, v1, v3

    #@27
    .line 58
    .local v4, "rem":I
    :cond_3
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v0

    #@2b
    .line 60
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@2e
    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@31
    .line 63
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@34
    .line 65
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@37
    move-result v2

    #@38
    .line 66
    .local v2, "n":I
    if-lez v2, :cond_4

    #@3a
    .line 68
    add-int v5, v3, v2

    #@3c
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 72
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@42
    .line 70
    return v2

    #@43
    .line 71
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    #@44
    .line 72
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@47
    .line 71
    throw v5
.end method

.method static write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .locals 24
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

    #@0
    .prologue
    .line 110
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    #@3
    move-result-object v19

    #@4
    .line 112
    .local v19, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v5, 0x0

    #@5
    .line 113
    .local v5, "completed":Z
    const/4 v10, 0x0

    #@6
    .line 117
    .local v10, "iov_len":I
    add-int v8, p2, p3

    #@8
    .line 118
    .local v8, "count":I
    move/from16 v9, p2

    #@a
    .line 119
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_6

    #@c
    :try_start_0
    sget v20, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    #@e
    move/from16 v0, v20

    #@10
    if-ge v10, v0, :cond_6

    #@12
    .line 120
    aget-object v4, p1, v9

    #@14
    .line 121
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@17
    move-result v16

    #@18
    .line 122
    .local v16, "pos":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    #@1b
    move-result v14

    #@1c
    .line 123
    .local v14, "lim":I
    sget-boolean v20, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    #@1e
    if-nez v20, :cond_2

    #@20
    move/from16 v0, v16

    #@22
    if-gt v0, v14, :cond_1

    #@24
    const/16 v20, 0x1

    #@26
    :goto_1
    if-nez v20, :cond_2

    #@28
    new-instance v20, Ljava/lang/AssertionError;

    #@2a
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@2d
    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 171
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "lim":I
    .end local v16    # "pos":I
    :catchall_0
    move-exception v20

    #@2f
    .line 174
    if-nez v5, :cond_10

    #@31
    .line 175
    const/4 v11, 0x0

    #@32
    .local v11, "j":I
    :goto_2
    if-ge v11, v10, :cond_10

    #@34
    .line 176
    move-object/from16 v0, v19

    #@36
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@39
    move-result-object v18

    #@3a
    .line 177
    .local v18, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_0

    #@3c
    .line 178
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@3f
    .line 179
    :cond_0
    move-object/from16 v0, v19

    #@41
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@44
    .line 175
    add-int/lit8 v11, v11, 0x1

    #@46
    goto :goto_2

    #@47
    .line 123
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v14    # "lim":I
    .restart local v16    # "pos":I
    :cond_1
    const/16 v20, 0x0

    #@49
    goto :goto_1

    #@4a
    .line 124
    :cond_2
    move/from16 v0, v16

    #@4c
    if-gt v0, v14, :cond_5

    #@4e
    sub-int v17, v14, v16

    #@50
    .line 125
    .local v17, "rem":I
    :goto_3
    if-lez v17, :cond_4

    #@52
    .line 126
    :try_start_1
    move-object/from16 v0, v19

    #@54
    move/from16 v1, v16

    #@56
    move/from16 v2, v17

    #@58
    invoke-virtual {v0, v10, v4, v1, v2}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    #@5b
    .line 129
    instance-of v0, v4, Lsun/nio/ch/DirectBuffer;

    #@5d
    move/from16 v20, v0

    #@5f
    if-nez v20, :cond_3

    #@61
    .line 130
    invoke-static/range {v17 .. v17}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@64
    move-result-object v18

    #@65
    .line 131
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v18

    #@67
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@6a
    .line 132
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@6d
    .line 133
    move-object/from16 v0, v19

    #@6f
    move-object/from16 v1, v18

    #@71
    invoke-virtual {v0, v10, v1}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    #@74
    .line 134
    move/from16 v0, v16

    #@76
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@79
    .line 135
    move-object/from16 v4, v18

    #@7b
    .line 136
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    #@7e
    move-result v16

    #@7f
    .line 139
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_3
    move-object v0, v4

    #@80
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@82
    move-object/from16 v20, v0

    #@84
    invoke-interface/range {v20 .. v20}, Lsun/nio/ch/DirectBuffer;->address()J

    #@87
    move-result-wide v20

    #@88
    move/from16 v0, v16

    #@8a
    int-to-long v0, v0

    #@8b
    move-wide/from16 v22, v0

    #@8d
    add-long v20, v20, v22

    #@8f
    move-object/from16 v0, v19

    #@91
    move-wide/from16 v1, v20

    #@93
    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    #@96
    .line 140
    move/from16 v0, v17

    #@98
    int-to-long v0, v0

    #@99
    move-wide/from16 v20, v0

    #@9b
    move-object/from16 v0, v19

    #@9d
    move-wide/from16 v1, v20

    #@9f
    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a2
    .line 141
    add-int/lit8 v10, v10, 0x1

    #@a4
    .line 143
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@a6
    goto/16 :goto_0

    #@a8
    .line 124
    .end local v17    # "rem":I
    :cond_5
    const/16 v17, 0x0

    #@aa
    goto :goto_3

    #@ab
    .line 145
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "lim":I
    .end local v16    # "pos":I
    :cond_6
    if-nez v10, :cond_9

    #@ad
    .line 146
    const-wide/16 v20, 0x0

    #@af
    .line 174
    if-nez v5, :cond_8

    #@b1
    .line 175
    const/4 v11, 0x0

    #@b2
    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v10, :cond_8

    #@b4
    .line 176
    move-object/from16 v0, v19

    #@b6
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@b9
    move-result-object v18

    #@ba
    .line 177
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_7

    #@bc
    .line 178
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@bf
    .line 179
    :cond_7
    move-object/from16 v0, v19

    #@c1
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@c4
    .line 175
    add-int/lit8 v11, v11, 0x1

    #@c6
    goto :goto_4

    #@c7
    .line 146
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_8
    return-wide v20

    #@c8
    .line 148
    :cond_9
    :try_start_2
    move-object/from16 v0, v19

    #@ca
    iget-wide v0, v0, Lsun/nio/ch/IOVecWrapper;->address:J

    #@cc
    move-wide/from16 v20, v0

    #@ce
    move-object/from16 v0, p4

    #@d0
    move-object/from16 v1, p0

    #@d2
    move-wide/from16 v2, v20

    #@d4
    invoke-virtual {v0, v1, v2, v3, v10}, Lsun/nio/ch/NativeDispatcher;->writev(Ljava/io/FileDescriptor;JI)J

    #@d7
    move-result-wide v6

    #@d8
    .line 151
    .local v6, "bytesWritten":J
    move-wide v12, v6

    #@d9
    .line 152
    .local v12, "left":J
    const/4 v11, 0x0

    #@da
    .restart local v11    # "j":I
    :goto_5
    if-ge v11, v10, :cond_d

    #@dc
    .line 153
    const-wide/16 v20, 0x0

    #@de
    cmp-long v20, v12, v20

    #@e0
    if-lez v20, :cond_a

    #@e2
    .line 154
    move-object/from16 v0, v19

    #@e4
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    #@e7
    move-result-object v4

    #@e8
    .line 155
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    #@ea
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    #@ed
    move-result v16

    #@ee
    .line 156
    .restart local v16    # "pos":I
    move-object/from16 v0, v19

    #@f0
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    #@f3
    move-result v17

    #@f4
    .line 157
    .restart local v17    # "rem":I
    move/from16 v0, v17

    #@f6
    int-to-long v0, v0

    #@f7
    move-wide/from16 v20, v0

    #@f9
    cmp-long v20, v12, v20

    #@fb
    if-lez v20, :cond_c

    #@fd
    move/from16 v15, v17

    #@ff
    .line 158
    .local v15, "n":I
    :goto_6
    add-int v20, v16, v15

    #@101
    move/from16 v0, v20

    #@103
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@106
    .line 159
    int-to-long v0, v15

    #@107
    move-wide/from16 v20, v0

    #@109
    sub-long v12, v12, v20

    #@10b
    .line 162
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v16    # "pos":I
    .end local v17    # "rem":I
    :cond_a
    move-object/from16 v0, v19

    #@10d
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@110
    move-result-object v18

    #@111
    .line 163
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_b

    #@113
    .line 164
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@116
    .line 165
    :cond_b
    move-object/from16 v0, v19

    #@118
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11b
    .line 152
    add-int/lit8 v11, v11, 0x1

    #@11d
    goto :goto_5

    #@11e
    .line 157
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v16    # "pos":I
    .restart local v17    # "rem":I
    :cond_c
    long-to-int v15, v12

    #@11f
    goto :goto_6

    #@120
    .line 168
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v16    # "pos":I
    .end local v17    # "rem":I
    :cond_d
    const/4 v5, 0x1

    #@121
    .line 174
    if-nez v5, :cond_f

    #@123
    .line 175
    const/4 v11, 0x0

    #@124
    :goto_7
    if-ge v11, v10, :cond_f

    #@126
    .line 176
    move-object/from16 v0, v19

    #@128
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    #@12b
    move-result-object v18

    #@12c
    .line 177
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_e

    #@12e
    .line 178
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@131
    .line 179
    :cond_e
    move-object/from16 v0, v19

    #@133
    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    #@136
    .line 175
    add-int/lit8 v11, v11, 0x1

    #@138
    goto :goto_7

    #@139
    .line 169
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_f
    return-wide v6

    #@13a
    .line 171
    .end local v6    # "bytesWritten":J
    .end local v11    # "j":I
    .end local v12    # "left":J
    :cond_10
    throw v20
.end method

.method static write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private static writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4
    move-result v8

    #@5
    .line 81
    .local v8, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@8
    move-result v7

    #@9
    .line 82
    .local v7, "lim":I
    sget-boolean v1, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-gt v8, v7, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    if-nez v1, :cond_1

    #@12
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v0

    #@18
    :cond_0
    move v1, v0

    #@19
    goto :goto_0

    #@1a
    .line 83
    :cond_1
    if-gt v8, v7, :cond_2

    #@1c
    sub-int v4, v7, v8

    #@1e
    .line 85
    .local v4, "rem":I
    :goto_1
    const/4 v9, 0x0

    #@1f
    .line 86
    .local v9, "written":I
    if-nez v4, :cond_3

    #@21
    .line 87
    return v0

    #@22
    .end local v4    # "rem":I
    .end local v9    # "written":I
    :cond_2
    move v4, v0

    #@23
    .line 83
    goto :goto_1

    #@24
    .line 88
    .restart local v4    # "rem":I
    .restart local v9    # "written":I
    :cond_3
    const-wide/16 v0, -0x1

    #@26
    cmp-long v0, p2, v0

    #@28
    if-eqz v0, :cond_5

    #@2a
    move-object v0, p1

    #@2b
    .line 90
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@2d
    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    #@30
    move-result-wide v0

    #@31
    int-to-long v2, v8

    #@32
    add-long/2addr v2, v0

    #@33
    move-object v0, p4

    #@34
    move-object v1, p0

    #@35
    move-wide v5, p2

    #@36
    .line 89
    invoke-virtual/range {v0 .. v6}, Lsun/nio/ch/NativeDispatcher;->pwrite(Ljava/io/FileDescriptor;JIJ)I

    #@39
    move-result v9

    #@3a
    .line 95
    :goto_2
    if-lez v9, :cond_4

    #@3c
    .line 96
    add-int v0, v8, v9

    #@3e
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@41
    .line 97
    :cond_4
    return v9

    #@42
    :cond_5
    move-object v0, p1

    #@43
    .line 93
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@45
    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    #@48
    move-result-wide v0

    #@49
    int-to-long v2, v8

    #@4a
    add-long/2addr v0, v2

    #@4b
    invoke-virtual {p4, p0, v0, v1, v4}, Lsun/nio/ch/NativeDispatcher;->write(Ljava/io/FileDescriptor;JI)I

    #@4e
    move-result v9

    #@4f
    goto :goto_2
.end method
