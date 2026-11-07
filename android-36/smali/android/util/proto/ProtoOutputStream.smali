.class public final Landroid/util/proto/ProtoOutputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoOutputStream.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ProtoOutputStream"


# instance fields
.field private greylist-max-o mBuffer:Landroid/util/proto/EncodedBuffer;

.field private greylist-max-o mCompacted:Z

.field private greylist-max-o mCopyBegin:I

.field private greylist-max-o mDepth:I

.field private greylist-max-o mExpectedObjectToken:J

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mStream:Ljava/io/OutputStream;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 168
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "chunkSize"    # I

    .line 175
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 176
    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 177
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 201
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 187
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 188
    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 189
    return-void
.end method

.method private greylist-max-o assertNotCompacted()V
    .registers 3

    .line 2309
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_5

    .line 2312
    return-void

    .line 2310
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist checkFieldId(JJ)I
    .registers 25
    .param p0, "fieldId"    # J
    .param p2, "expectedFlags"    # J

    .line 2210
    move-wide/from16 v0, p0

    const-wide v2, 0xf0000000000L

    and-long v4, v0, v2

    .line 2211
    .local v4, "fieldCount":J
    const-wide v6, 0xff00000000L

    and-long v8, v0, v6

    .line 2212
    .local v8, "fieldType":J
    and-long v2, p2, v2

    .line 2213
    .local v2, "expectedCount":J
    and-long v6, p2, v6

    .line 2214
    .local v6, "expectedType":J
    long-to-int v10, v0

    if-eqz v10, :cond_e7

    .line 2218
    cmp-long v10, v8, v6

    const-wide v11, 0x50000000000L

    if-nez v10, :cond_34

    cmp-long v10, v4, v2

    if-eqz v10, :cond_32

    cmp-long v10, v4, v11

    if-nez v10, :cond_34

    const-wide v13, 0x20000000000L

    cmp-long v10, v2, v13

    if-eqz v10, :cond_32

    goto :goto_34

    .line 2266
    :cond_32
    long-to-int v10, v0

    return v10

    .line 2222
    :cond_34
    :goto_34
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v10

    .line 2223
    .local v10, "countString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v13

    .line 2224
    .local v13, "typeString":Ljava/lang/String;
    const-string/jumbo v15, "start"

    move-wide/from16 v16, v11

    const-string/jumbo v11, "write"

    const-wide v18, 0xb00000000L

    if-eqz v13, :cond_a5

    if-eqz v10, :cond_a5

    .line 2225
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    .local v12, "sb":Ljava/lang/StringBuilder;
    cmp-long v20, v6, v18

    if-nez v20, :cond_5a

    .line 2227
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 2229
    :cond_5a
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    :goto_5d
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    const-string v14, " called for field "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2235
    const-string v14, " which should be used with "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    cmp-long v14, v8, v18

    if-nez v14, :cond_81

    .line 2237
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 2239
    :cond_81
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    :goto_84
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    cmp-long v11, v4, v16

    if-nez v11, :cond_96

    .line 2244
    const-string v11, " or writeRepeated"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    :cond_96
    const/16 v11, 0x2e

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2248
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2250
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_a5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2251
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    cmp-long v14, v6, v18

    if-nez v14, :cond_b2

    .line 2252
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 2254
    :cond_b2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    :goto_b5
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    const-string v11, " called with an invalid fieldId: 0x"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    const-string v11, ". The proto field ID might be "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    long-to-int v11, v0

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2262
    const/16 v11, 0x2e

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2263
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2215
    .end local v10    # "countString":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "typeString":Ljava/lang/String;
    :cond_e7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid proto field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fieldId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2216
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private greylist-max-o compactIfNecessary()V
    .registers 5

    .line 2332
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_57

    .line 2333
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-nez v0, :cond_36

    .line 2339
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2340
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    .line 2343
    .local v0, "readableSize":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 2349
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    .line 2350
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2353
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_2d

    .line 2354
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2358
    :cond_2d
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2363
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    goto :goto_57

    .line 2334
    .end local v0    # "readableSize":I
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to compact with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing calls to endObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2365
    :cond_57
    :goto_57
    return-void
.end method

.method private greylist-max-o compactSizes(I)V
    .registers 11
    .param p1, "rawSize"    # I

    .line 2441
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2442
    .local v0, "objectStart":I
    add-int v1, v0, p1

    .line 2444
    .local v1, "objectEnd":I
    :goto_8
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    move v3, v2

    .local v3, "tagPos":I
    if-ge v2, v1, :cond_bc

    .line 2445
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v2

    .line 2450
    .local v2, "tag":I
    and-int/lit8 v4, v2, 0x7

    .line 2451
    .local v4, "wireType":I
    packed-switch v4, :pswitch_data_be

    .line 2485
    new-instance v5, Landroid/util/proto/ProtoParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compactSizes Bad tag tag=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2486
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wireType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2487
    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2482
    :pswitch_51
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2483
    goto :goto_ba

    .line 2480
    :pswitch_58
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groups not supported at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2460
    :pswitch_71
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2462
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v5

    .line 2463
    .local v5, "childRawSize":I
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    .line 2464
    .local v6, "childEncodedSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2466
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 2467
    if-ltz v5, :cond_a2

    .line 2470
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_ba

    .line 2472
    :cond_a2
    neg-int v7, v5

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2474
    goto :goto_ba

    .line 2456
    .end local v5    # "childRawSize":I
    .end local v6    # "childEncodedSize":I
    :pswitch_a7
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2457
    goto :goto_ba

    .line 2453
    :goto_af
    :pswitch_af
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_ba

    goto :goto_af

    .line 2489
    .end local v2    # "tag":I
    .end local v4    # "wireType":I
    :cond_ba
    :goto_ba
    goto/16 :goto_8

    .line 2490
    :cond_bc
    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_af
        :pswitch_a7
        :pswitch_71
        :pswitch_58
        :pswitch_58
        :pswitch_51
    .end packed-switch
.end method

.method private greylist-max-o editEncodedSize(I)I
    .registers 14
    .param p1, "rawSize"    # I

    .line 2372
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2373
    .local v0, "objectStart":I
    add-int v1, v0, p1

    .line 2374
    .local v1, "objectEnd":I
    const/4 v2, 0x0

    .line 2377
    .local v2, "encodedSize":I
    :goto_9
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    move v4, v3

    .local v4, "tagPos":I
    if-ge v3, v1, :cond_ef

    .line 2378
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v3

    .line 2379
    .local v3, "tag":I
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 2381
    and-int/lit8 v5, v3, 0x7

    .line 2382
    .local v5, "wireType":I
    packed-switch v5, :pswitch_data_f0

    .line 2426
    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2427
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wireType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2428
    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2422
    :pswitch_57
    add-int/lit8 v2, v2, 0x4

    .line 2423
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2424
    goto/16 :goto_ed

    .line 2420
    :pswitch_61
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "groups not supported at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2396
    :pswitch_7a
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    .line 2397
    .local v6, "childRawSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    .line 2398
    .local v7, "childEncodedSizePos":I
    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v8

    .line 2399
    .local v8, "childEncodedSize":I
    if-ltz v6, :cond_c3

    .line 2401
    if-ne v8, v6, :cond_96

    .line 2408
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_cd

    .line 2402
    :cond_96
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " childEncodedSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " childEncodedSizePos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2411
    :cond_c3
    neg-int v9, v6

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v8

    .line 2412
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2414
    :goto_cd
    invoke-static {v8}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 2416
    goto :goto_ed

    .line 2390
    .end local v6    # "childRawSize":I
    .end local v7    # "childEncodedSizePos":I
    .end local v8    # "childEncodedSize":I
    :pswitch_d4
    add-int/lit8 v2, v2, 0x8

    .line 2391
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2392
    goto :goto_ed

    .line 2384
    :pswitch_de
    add-int/lit8 v2, v2, 0x1

    .line 2385
    :goto_e0
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_ed

    .line 2386
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 2430
    .end local v3    # "tag":I
    .end local v5    # "wireType":I
    :cond_ed
    :goto_ed
    goto/16 :goto_9

    .line 2432
    :cond_ef
    return v2

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d4
        :pswitch_7a
        :pswitch_61
        :pswitch_61
        :pswitch_57
    .end packed-switch
.end method

.method private greylist-max-o endObjectImpl(JZ)V
    .registers 14
    .param p1, "token"    # J
    .param p3, "repeated"    # Z

    .line 2095
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v0

    .line 2096
    .local v0, "depth":I
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v1

    .line 2097
    .local v1, "expectedRepeated":Z
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getOffsetFromToken(J)I

    move-result v2

    .line 2098
    .local v2, "sizePos":I
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    .line 2100
    .local v3, "childRawSize":I
    if-eq p3, v1, :cond_29

    .line 2101
    if-eqz p3, :cond_21

    .line 2102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2105
    :cond_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2111
    :cond_29
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v0, :cond_84

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_84

    .line 2121
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v7, v2, 0x4

    .line 2122
    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2124
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2125
    if-lez v3, :cond_68

    .line 2126
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2127
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v2, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_83

    .line 2128
    :cond_68
    if-eqz p3, :cond_78

    .line 2129
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2130
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_83

    .line 2133
    :cond_78
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    .line 2135
    :goto_83
    return-void

    .line 2114
    :cond_84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2116
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expectedToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2117
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static greylist-max-o getTagSize(I)I
    .registers 2
    .param p0, "id"    # I

    .line 2273
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static whitelist makeFieldId(IJ)J
    .registers 7
    .param p0, "id"    # I
    .param p1, "fieldFlags"    # J

    .line 2187
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private greylist-max-o readRawTag()I
    .registers 3

    .line 2527
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 2528
    const/4 v0, 0x0

    return v0

    .line 2530
    :cond_10
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o startObjectImpl(IZ)J
    .registers 9
    .param p1, "id"    # I
    .param p2, "repeated"    # Z

    .line 2068
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2069
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    .line 2070
    .local v0, "sizePos":I
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2071
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 2076
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2077
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2079
    iget-wide v1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2081
    .local v1, "old":J
    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2082
    iget-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide v3
.end method

.method private greylist-max-o writeBoolImpl(IZ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .line 1770
    if-eqz p2, :cond_c

    .line 1771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1773
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1775
    :cond_c
    return-void
.end method

.method private greylist-max-o writeBytesImpl(I[B)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .line 1905
    if-eqz p2, :cond_e

    array-length v0, p2

    if-lez v0, :cond_e

    .line 1906
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1907
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1909
    :cond_e
    return-void
.end method

.method private greylist-max-o writeDoubleImpl(ID)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "val"    # D

    .line 906
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_13

    .line 907
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 908
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 910
    :cond_13
    return-void
.end method

.method private greylist-max-o writeEnumImpl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1953
    if-eqz p2, :cond_9

    .line 1954
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1955
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1957
    :cond_9
    return-void
.end method

.method private greylist-max-o writeFixed32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1503
    if-eqz p2, :cond_b

    .line 1504
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1505
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1507
    :cond_b
    return-void
.end method

.method private greylist-max-o writeFixed64Impl(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1570
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1571
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1572
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1574
    :cond_f
    return-void
.end method

.method private greylist-max-o writeFloatImpl(IF)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 973
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_12

    .line 974
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 975
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 977
    :cond_12
    return-void
.end method

.method private greylist-max-o writeInt32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1063
    if-eqz p2, :cond_9

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1065
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1067
    :cond_9
    return-void
.end method

.method private greylist-max-o writeInt64Impl(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1144
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1146
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1148
    :cond_f
    return-void
.end method

.method private greylist-max-o writeKnownLengthHeader(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "size"    # I

    .line 2292
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2295
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2296
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2297
    return-void
.end method

.method private greylist-max-o writeRepeatedBoolImpl(IZ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .line 1792
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1793
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1794
    return-void
.end method

.method private greylist-max-o writeRepeatedBytesImpl(I[B)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .line 1926
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p2

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1927
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1928
    return-void
.end method

.method private greylist-max-o writeRepeatedDoubleImpl(ID)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "val"    # D

    .line 927
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 928
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 929
    return-void
.end method

.method private greylist-max-o writeRepeatedEnumImpl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1975
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1976
    return-void
.end method

.method private greylist-max-o writeRepeatedFixed32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1524
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1525
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1526
    return-void
.end method

.method private greylist-max-o writeRepeatedFixed64Impl(IJ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1591
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1592
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1593
    return-void
.end method

.method private greylist-max-o writeRepeatedFloatImpl(IF)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 994
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 995
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 996
    return-void
.end method

.method private greylist-max-o writeRepeatedInt32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1089
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1090
    return-void
.end method

.method private greylist-max-o writeRepeatedInt64Impl(IJ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1166
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1167
    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1657
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1658
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1659
    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed64Impl(IJ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1724
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1725
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1726
    return-void
.end method

.method private greylist-max-o writeRepeatedSInt32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1382
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1383
    return-void
.end method

.method private greylist-max-o writeRepeatedSInt64Impl(IJ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1454
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1455
    return-void
.end method

.method private greylist-max-o writeRepeatedStringImpl(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1862
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_d

    .line 1865
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_11

    .line 1863
    :cond_d
    :goto_d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1867
    :goto_11
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1238
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1239
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt64Impl(IJ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1310
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1311
    return-void
.end method

.method private greylist-max-o writeSFixed32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1636
    if-eqz p2, :cond_b

    .line 1637
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1638
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1640
    :cond_b
    return-void
.end method

.method private greylist-max-o writeSFixed64Impl(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1703
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1704
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1705
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1707
    :cond_f
    return-void
.end method

.method private greylist-max-o writeSInt32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1360
    if-eqz p2, :cond_b

    .line 1361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1362
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1364
    :cond_b
    return-void
.end method

.method private greylist-max-o writeSInt64Impl(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1432
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1434
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1436
    :cond_f
    return-void
.end method

.method private greylist-max-o writeStringImpl(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1842
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1843
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 1845
    :cond_b
    return-void
.end method

.method private greylist-max-o writeUInt32Impl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1216
    if-eqz p2, :cond_b

    .line 1217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1218
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1220
    :cond_b
    return-void
.end method

.method private greylist-max-o writeUInt64Impl(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1288
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1290
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1292
    :cond_f
    return-void
.end method

.method private greylist-max-o writeUnsignedVarintFromSignedInt(I)V
    .registers 5
    .param p1, "val"    # I

    .line 1037
    if-ltz p1, :cond_8

    .line 1038
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    goto :goto_e

    .line 1040
    :cond_8
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1042
    :goto_e
    return-void
.end method

.method private greylist-max-o writeUtf8String(ILjava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1875
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1876
    .local v0, "buf":[B
    array-length v1, v0

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1877
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1880
    .end local v0    # "buf":[B
    nop

    .line 1881
    return-void

    .line 1878
    :catch_11
    move-exception v0

    .line 1879
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not possible"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist dump(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 2537
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    .line 2539
    return-void
.end method

.method public whitelist end(J)V
    .registers 4
    .param p1, "token"    # J

    .line 881
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 882
    return-void
.end method

.method public blacklist endObject(J)V
    .registers 4
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2029
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2031
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2032
    return-void
.end method

.method public blacklist endRepeatedObject(J)V
    .registers 4
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2059
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2061
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2062
    return-void
.end method

.method public whitelist flush()V
    .registers 5

    .line 2501
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    .line 2502
    return-void

    .line 2504
    :cond_5
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v0, :cond_a

    .line 2507
    return-void

    .line 2509
    :cond_a
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_f

    .line 2511
    return-void

    .line 2513
    :cond_f
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2514
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    .line 2516
    .local v0, "data":[B
    :try_start_1e
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2517
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_2a

    .line 2520
    nop

    .line 2521
    return-void

    .line 2518
    :catch_2a
    move-exception v1

    .line 2519
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getBytes()[B
    .registers 3

    .line 2322
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2324
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRawSize()I
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_a

    .line 212
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0

    .line 214
    :cond_a
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getSize()I

    move-result v0

    return v0
.end method

.method public whitelist start(J)J
    .registers 8
    .param p1, "fieldId"    # J

    .line 860
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 861
    long-to-int v0, p1

    .line 863
    .local v0, "id":I
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const-wide v3, 0xb00000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_40

    .line 864
    const-wide v1, 0xf0000000000L

    and-long/2addr v1, p1

    .line 865
    .local v1, "count":J
    const-wide v3, 0x10000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_28

    .line 866
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    .line 867
    :cond_28
    const-wide v3, 0x20000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3a

    const-wide v3, 0x50000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_40

    .line 868
    :cond_3a
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    .line 871
    .end local v1    # "count":J
    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call start(long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startObject(J)J
    .registers 6
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2015
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2016
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2018
    .local v0, "id":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist startRepeatedObject(J)J
    .registers 6
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2045
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2046
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2048
    .local v0, "id":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist write(JD)V
    .registers 11
    .param p1, "fieldId"    # J
    .param p3, "val"    # D

    .line 229
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 230
    long-to-int v0, p1

    .line 232
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_d2

    .line 347
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 348
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :sswitch_32
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 296
    goto/16 :goto_d1

    .line 287
    :sswitch_38
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 288
    goto/16 :goto_d1

    .line 327
    :sswitch_3e
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 328
    goto/16 :goto_d1

    .line 319
    :sswitch_44
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 320
    goto/16 :goto_d1

    .line 343
    :sswitch_4a
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 344
    goto/16 :goto_d1

    .line 271
    :sswitch_50
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 272
    goto/16 :goto_d1

    .line 335
    :sswitch_56
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 336
    goto/16 :goto_d1

    .line 303
    :sswitch_61
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 304
    goto/16 :goto_d1

    .line 311
    :sswitch_67
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 312
    goto/16 :goto_d1

    .line 255
    :sswitch_6d
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 256
    goto/16 :goto_d1

    .line 279
    :sswitch_73
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 280
    goto/16 :goto_d1

    .line 263
    :sswitch_79
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 264
    goto :goto_d1

    .line 247
    :sswitch_7e
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 248
    goto :goto_d1

    .line 239
    :sswitch_83
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 240
    goto :goto_d1

    .line 291
    :sswitch_87
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 292
    goto :goto_d1

    .line 283
    :sswitch_8c
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 284
    goto :goto_d1

    .line 323
    :sswitch_91
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 324
    goto :goto_d1

    .line 315
    :sswitch_96
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 316
    goto :goto_d1

    .line 339
    :sswitch_9b
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 340
    goto :goto_d1

    .line 267
    :sswitch_a0
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 268
    goto :goto_d1

    .line 331
    :sswitch_a5
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    :goto_ab
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 332
    goto :goto_d1

    .line 299
    :sswitch_af
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 300
    goto :goto_d1

    .line 307
    :sswitch_b4
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 308
    goto :goto_d1

    .line 251
    :sswitch_b9
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 252
    goto :goto_d1

    .line 275
    :sswitch_be
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 276
    goto :goto_d1

    .line 259
    :sswitch_c3
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 260
    goto :goto_d1

    .line 243
    :sswitch_c8
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 244
    goto :goto_d1

    .line 235
    :sswitch_cd
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 236
    nop

    .line 351
    :goto_d1
    return-void

    :sswitch_data_d2
    .sparse-switch
        0x101 -> :sswitch_cd
        0x102 -> :sswitch_c8
        0x103 -> :sswitch_c3
        0x104 -> :sswitch_be
        0x105 -> :sswitch_b9
        0x106 -> :sswitch_b4
        0x107 -> :sswitch_af
        0x108 -> :sswitch_a5
        0x10d -> :sswitch_a0
        0x10e -> :sswitch_9b
        0x10f -> :sswitch_96
        0x110 -> :sswitch_91
        0x111 -> :sswitch_8c
        0x112 -> :sswitch_87
        0x201 -> :sswitch_83
        0x202 -> :sswitch_7e
        0x203 -> :sswitch_79
        0x204 -> :sswitch_73
        0x205 -> :sswitch_6d
        0x206 -> :sswitch_67
        0x207 -> :sswitch_61
        0x208 -> :sswitch_56
        0x20d -> :sswitch_50
        0x20e -> :sswitch_4a
        0x20f -> :sswitch_44
        0x210 -> :sswitch_3e
        0x211 -> :sswitch_38
        0x212 -> :sswitch_32
        0x501 -> :sswitch_83
        0x502 -> :sswitch_7e
        0x503 -> :sswitch_79
        0x504 -> :sswitch_73
        0x505 -> :sswitch_6d
        0x506 -> :sswitch_67
        0x507 -> :sswitch_61
        0x508 -> :sswitch_56
        0x50d -> :sswitch_50
        0x50e -> :sswitch_4a
        0x50f -> :sswitch_44
        0x510 -> :sswitch_3e
        0x511 -> :sswitch_38
        0x512 -> :sswitch_32
    .end sparse-switch
.end method

.method public whitelist write(JF)V
    .registers 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # F

    .line 364
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 365
    long-to-int v0, p1

    .line 367
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_d2

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 483
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :sswitch_31
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 431
    goto/16 :goto_d0

    .line 422
    :sswitch_37
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 423
    goto/16 :goto_d0

    .line 462
    :sswitch_3d
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 463
    goto/16 :goto_d0

    .line 454
    :sswitch_43
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 455
    goto/16 :goto_d0

    .line 478
    :sswitch_49
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 479
    goto/16 :goto_d0

    .line 406
    :sswitch_4f
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 407
    goto/16 :goto_d0

    .line 470
    :sswitch_55
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v2, v3

    :goto_5b
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 471
    goto/16 :goto_d0

    .line 438
    :sswitch_60
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 439
    goto/16 :goto_d0

    .line 446
    :sswitch_66
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 447
    goto/16 :goto_d0

    .line 390
    :sswitch_6c
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 391
    goto/16 :goto_d0

    .line 414
    :sswitch_72
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 415
    goto/16 :goto_d0

    .line 398
    :sswitch_78
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 399
    goto :goto_d0

    .line 382
    :sswitch_7d
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 383
    goto :goto_d0

    .line 374
    :sswitch_81
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 375
    goto :goto_d0

    .line 426
    :sswitch_86
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 427
    goto :goto_d0

    .line 418
    :sswitch_8b
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 419
    goto :goto_d0

    .line 458
    :sswitch_90
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 459
    goto :goto_d0

    .line 450
    :sswitch_95
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 451
    goto :goto_d0

    .line 474
    :sswitch_9a
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 475
    goto :goto_d0

    .line 402
    :sswitch_9f
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 403
    goto :goto_d0

    .line 466
    :sswitch_a4
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v3

    :goto_aa
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 467
    goto :goto_d0

    .line 434
    :sswitch_ae
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 435
    goto :goto_d0

    .line 442
    :sswitch_b3
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 443
    goto :goto_d0

    .line 386
    :sswitch_b8
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 387
    goto :goto_d0

    .line 410
    :sswitch_bd
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 411
    goto :goto_d0

    .line 394
    :sswitch_c2
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 395
    goto :goto_d0

    .line 378
    :sswitch_c7
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 379
    goto :goto_d0

    .line 370
    :sswitch_cb
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 371
    nop

    .line 486
    :goto_d0
    return-void

    nop

    :sswitch_data_d2
    .sparse-switch
        0x101 -> :sswitch_cb
        0x102 -> :sswitch_c7
        0x103 -> :sswitch_c2
        0x104 -> :sswitch_bd
        0x105 -> :sswitch_b8
        0x106 -> :sswitch_b3
        0x107 -> :sswitch_ae
        0x108 -> :sswitch_a4
        0x10d -> :sswitch_9f
        0x10e -> :sswitch_9a
        0x10f -> :sswitch_95
        0x110 -> :sswitch_90
        0x111 -> :sswitch_8b
        0x112 -> :sswitch_86
        0x201 -> :sswitch_81
        0x202 -> :sswitch_7d
        0x203 -> :sswitch_78
        0x204 -> :sswitch_72
        0x205 -> :sswitch_6c
        0x206 -> :sswitch_66
        0x207 -> :sswitch_60
        0x208 -> :sswitch_55
        0x20d -> :sswitch_4f
        0x20e -> :sswitch_49
        0x20f -> :sswitch_43
        0x210 -> :sswitch_3d
        0x211 -> :sswitch_37
        0x212 -> :sswitch_31
        0x501 -> :sswitch_81
        0x502 -> :sswitch_7d
        0x503 -> :sswitch_78
        0x504 -> :sswitch_72
        0x505 -> :sswitch_6c
        0x506 -> :sswitch_66
        0x507 -> :sswitch_60
        0x508 -> :sswitch_55
        0x50d -> :sswitch_4f
        0x50e -> :sswitch_49
        0x50f -> :sswitch_43
        0x510 -> :sswitch_3d
        0x511 -> :sswitch_37
        0x512 -> :sswitch_31
    .end sparse-switch
.end method

.method public whitelist write(JI)V
    .registers 8
    .param p1, "fieldId"    # J
    .param p3, "val"    # I

    .line 499
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 500
    long-to-int v0, p1

    .line 502
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_c2

    .line 617
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 618
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :sswitch_30
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 566
    goto/16 :goto_c0

    .line 557
    :sswitch_36
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 558
    goto/16 :goto_c0

    .line 597
    :sswitch_3b
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 598
    goto/16 :goto_c0

    .line 589
    :sswitch_41
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 590
    goto/16 :goto_c0

    .line 613
    :sswitch_46
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 614
    goto/16 :goto_c0

    .line 541
    :sswitch_4b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 542
    goto/16 :goto_c0

    .line 605
    :sswitch_50
    if-eqz p3, :cond_53

    goto :goto_54

    :cond_53
    move v2, v3

    :goto_54
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 606
    goto/16 :goto_c0

    .line 573
    :sswitch_59
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 574
    goto/16 :goto_c0

    .line 581
    :sswitch_5e
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 582
    goto/16 :goto_c0

    .line 525
    :sswitch_64
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 526
    goto/16 :goto_c0

    .line 549
    :sswitch_69
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 550
    goto :goto_c0

    .line 533
    :sswitch_6e
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 534
    goto :goto_c0

    .line 517
    :sswitch_73
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 518
    goto :goto_c0

    .line 509
    :sswitch_78
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 510
    goto :goto_c0

    .line 561
    :sswitch_7d
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 562
    goto :goto_c0

    .line 553
    :sswitch_82
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 554
    goto :goto_c0

    .line 593
    :sswitch_86
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 594
    goto :goto_c0

    .line 585
    :sswitch_8b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 586
    goto :goto_c0

    .line 609
    :sswitch_8f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 610
    goto :goto_c0

    .line 537
    :sswitch_93
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 538
    goto :goto_c0

    .line 601
    :sswitch_97
    if-eqz p3, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v3

    :goto_9b
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 602
    goto :goto_c0

    .line 569
    :sswitch_9f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 570
    goto :goto_c0

    .line 577
    :sswitch_a3
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 578
    goto :goto_c0

    .line 521
    :sswitch_a8
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 522
    goto :goto_c0

    .line 545
    :sswitch_ac
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 546
    goto :goto_c0

    .line 529
    :sswitch_b1
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 530
    goto :goto_c0

    .line 513
    :sswitch_b6
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 514
    goto :goto_c0

    .line 505
    :sswitch_bb
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 506
    nop

    .line 621
    :goto_c0
    return-void

    nop

    :sswitch_data_c2
    .sparse-switch
        0x101 -> :sswitch_bb
        0x102 -> :sswitch_b6
        0x103 -> :sswitch_b1
        0x104 -> :sswitch_ac
        0x105 -> :sswitch_a8
        0x106 -> :sswitch_a3
        0x107 -> :sswitch_9f
        0x108 -> :sswitch_97
        0x10d -> :sswitch_93
        0x10e -> :sswitch_8f
        0x10f -> :sswitch_8b
        0x110 -> :sswitch_86
        0x111 -> :sswitch_82
        0x112 -> :sswitch_7d
        0x201 -> :sswitch_78
        0x202 -> :sswitch_73
        0x203 -> :sswitch_6e
        0x204 -> :sswitch_69
        0x205 -> :sswitch_64
        0x206 -> :sswitch_5e
        0x207 -> :sswitch_59
        0x208 -> :sswitch_50
        0x20d -> :sswitch_4b
        0x20e -> :sswitch_46
        0x20f -> :sswitch_41
        0x210 -> :sswitch_3b
        0x211 -> :sswitch_36
        0x212 -> :sswitch_30
        0x501 -> :sswitch_78
        0x502 -> :sswitch_73
        0x503 -> :sswitch_6e
        0x504 -> :sswitch_69
        0x505 -> :sswitch_64
        0x506 -> :sswitch_5e
        0x507 -> :sswitch_59
        0x508 -> :sswitch_50
        0x50d -> :sswitch_4b
        0x50e -> :sswitch_46
        0x50f -> :sswitch_41
        0x510 -> :sswitch_3b
        0x511 -> :sswitch_36
        0x512 -> :sswitch_30
    .end sparse-switch
.end method

.method public whitelist write(JJ)V
    .registers 11
    .param p1, "fieldId"    # J
    .param p3, "val"    # J

    .line 634
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 635
    long-to-int v0, p1

    .line 637
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_ca

    .line 752
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 753
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    :sswitch_32
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 701
    goto/16 :goto_c8

    .line 692
    :sswitch_37
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 693
    goto/16 :goto_c8

    .line 732
    :sswitch_3d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 733
    goto/16 :goto_c8

    .line 724
    :sswitch_42
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 725
    goto/16 :goto_c8

    .line 748
    :sswitch_48
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 749
    goto/16 :goto_c8

    .line 676
    :sswitch_4e
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 677
    goto/16 :goto_c8

    .line 740
    :sswitch_54
    cmp-long v1, p3, v4

    if-eqz v1, :cond_59

    goto :goto_5a

    :cond_59
    move v2, v3

    :goto_5a
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 741
    goto/16 :goto_c8

    .line 708
    :sswitch_5f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 709
    goto/16 :goto_c8

    .line 716
    :sswitch_65
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 717
    goto/16 :goto_c8

    .line 660
    :sswitch_6a
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 661
    goto/16 :goto_c8

    .line 684
    :sswitch_70
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 685
    goto :goto_c8

    .line 668
    :sswitch_74
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 669
    goto :goto_c8

    .line 652
    :sswitch_78
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 653
    goto :goto_c8

    .line 644
    :sswitch_7d
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 645
    goto :goto_c8

    .line 696
    :sswitch_82
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 697
    goto :goto_c8

    .line 688
    :sswitch_86
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 689
    goto :goto_c8

    .line 728
    :sswitch_8b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 729
    goto :goto_c8

    .line 720
    :sswitch_8f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 721
    goto :goto_c8

    .line 744
    :sswitch_94
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 745
    goto :goto_c8

    .line 672
    :sswitch_99
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 673
    goto :goto_c8

    .line 736
    :sswitch_9e
    cmp-long v1, p3, v4

    if-eqz v1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v3

    :goto_a4
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 737
    goto :goto_c8

    .line 704
    :sswitch_a8
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 705
    goto :goto_c8

    .line 712
    :sswitch_ad
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 713
    goto :goto_c8

    .line 656
    :sswitch_b1
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 657
    goto :goto_c8

    .line 680
    :sswitch_b6
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 681
    goto :goto_c8

    .line 664
    :sswitch_ba
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 665
    goto :goto_c8

    .line 648
    :sswitch_be
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 649
    goto :goto_c8

    .line 640
    :sswitch_c3
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 641
    nop

    .line 756
    :goto_c8
    return-void

    nop

    :sswitch_data_ca
    .sparse-switch
        0x101 -> :sswitch_c3
        0x102 -> :sswitch_be
        0x103 -> :sswitch_ba
        0x104 -> :sswitch_b6
        0x105 -> :sswitch_b1
        0x106 -> :sswitch_ad
        0x107 -> :sswitch_a8
        0x108 -> :sswitch_9e
        0x10d -> :sswitch_99
        0x10e -> :sswitch_94
        0x10f -> :sswitch_8f
        0x110 -> :sswitch_8b
        0x111 -> :sswitch_86
        0x112 -> :sswitch_82
        0x201 -> :sswitch_7d
        0x202 -> :sswitch_78
        0x203 -> :sswitch_74
        0x204 -> :sswitch_70
        0x205 -> :sswitch_6a
        0x206 -> :sswitch_65
        0x207 -> :sswitch_5f
        0x208 -> :sswitch_54
        0x20d -> :sswitch_4e
        0x20e -> :sswitch_48
        0x20f -> :sswitch_42
        0x210 -> :sswitch_3d
        0x211 -> :sswitch_37
        0x212 -> :sswitch_32
        0x501 -> :sswitch_7d
        0x502 -> :sswitch_78
        0x503 -> :sswitch_74
        0x504 -> :sswitch_70
        0x505 -> :sswitch_6a
        0x506 -> :sswitch_65
        0x507 -> :sswitch_5f
        0x508 -> :sswitch_54
        0x50d -> :sswitch_4e
        0x50e -> :sswitch_48
        0x50f -> :sswitch_42
        0x510 -> :sswitch_3d
        0x511 -> :sswitch_37
        0x512 -> :sswitch_32
    .end sparse-switch
.end method

.method public whitelist write(JLjava/lang/String;)V
    .registers 8
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 796
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 797
    long-to-int v0, p1

    .line 799
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_38

    .line 810
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 811
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :sswitch_2e
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 807
    goto :goto_36

    .line 802
    :sswitch_32
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 803
    nop

    .line 814
    :goto_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x109 -> :sswitch_32
        0x209 -> :sswitch_2e
        0x509 -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist write(JZ)V
    .registers 8
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z

    .line 767
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 768
    long-to-int v0, p1

    .line 770
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_38

    .line 781
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 782
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 777
    :sswitch_2e
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 778
    goto :goto_36

    .line 773
    :sswitch_32
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 774
    nop

    .line 785
    :goto_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x108 -> :sswitch_32
        0x208 -> :sswitch_2e
        0x508 -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist write(J[B)V
    .registers 8
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B

    .line 825
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 826
    long-to-int v0, p1

    .line 828
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_40

    .line 847
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 848
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :sswitch_2e
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 836
    goto :goto_3e

    .line 843
    :sswitch_32
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 844
    goto :goto_3e

    .line 831
    :sswitch_36
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 832
    goto :goto_3e

    .line 839
    :sswitch_3a
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 840
    nop

    .line 851
    :goto_3e
    return-void

    nop

    :sswitch_data_40
    .sparse-switch
        0x10b -> :sswitch_3a
        0x10c -> :sswitch_36
        0x20b -> :sswitch_32
        0x20c -> :sswitch_2e
        0x50b -> :sswitch_32
        0x50c -> :sswitch_2e
    .end sparse-switch
.end method

.method public blacklist writeBool(JZ)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1763
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1764
    const-wide v0, 0x10800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1766
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 1767
    return-void
.end method

.method public blacklist writeBytes(J[B)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1898
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1899
    const-wide v0, 0x10c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1901
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 1902
    return-void
.end method

.method public blacklist writeDouble(JD)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 899
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 900
    const-wide v0, 0x10100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 902
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 903
    return-void
.end method

.method public blacklist writeEnum(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1946
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1947
    const-wide v0, 0x10e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1949
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 1950
    return-void
.end method

.method public blacklist writeFixed32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1496
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1497
    const-wide v0, 0x10700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1499
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 1500
    return-void
.end method

.method public blacklist writeFixed64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1563
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1564
    const-wide v0, 0x10600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1566
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 1567
    return-void
.end method

.method public blacklist writeFloat(JF)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 967
    const-wide v0, 0x10200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 969
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 970
    return-void
.end method

.method public blacklist writeInt32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1057
    const-wide v0, 0x10500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1059
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 1060
    return-void
.end method

.method public blacklist writeInt64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1138
    const-wide v0, 0x10300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1140
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 1141
    return-void
.end method

.method public blacklist writeObject(J[B)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2145
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2146
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2148
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 2149
    return-void
.end method

.method greylist-max-o writeObjectImpl(I[B)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .line 2152
    if-eqz p2, :cond_e

    array-length v0, p2

    if-eqz v0, :cond_e

    .line 2153
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2154
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2156
    :cond_e
    return-void
.end method

.method public blacklist writePackedBool(J[Z)V
    .registers 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1804
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1805
    const-wide v0, 0x50800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1807
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1808
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_24

    .line 1810
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1813
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_24

    .line 1815
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v4, p3, v2

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1813
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1818
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method public blacklist writePackedDouble(J[D)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 940
    const-wide v0, 0x50100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 942
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 943
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_29

    .line 944
    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 945
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_29

    .line 946
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 949
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method public blacklist writePackedEnum(J[I)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1986
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1987
    const-wide v0, 0x50e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1989
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1990
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_34

    .line 1991
    const/4 v2, 0x0

    .line 1992
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_26

    .line 1993
    aget v4, p3, v3

    .line 1994
    .local v4, "v":I
    if-ltz v4, :cond_20

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    goto :goto_22

    :cond_20
    const/16 v5, 0xa

    :goto_22
    add-int/2addr v2, v5

    .line 1992
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1996
    .end local v3    # "i":I
    :cond_26
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1997
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    if-ge v3, v1, :cond_34

    .line 1998
    aget v4, p3, v3

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1997
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2001
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_34
    return-void
.end method

.method public blacklist writePackedFixed32(J[I)V
    .registers 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1536
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1537
    const-wide v0, 0x50700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1539
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1540
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_25

    .line 1541
    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_25

    .line 1543
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1542
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1546
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist writePackedFixed64(J[J)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1603
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1604
    const-wide v0, 0x50600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1606
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1607
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_25

    .line 1608
    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1609
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_25

    .line 1610
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1609
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1613
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist writePackedFloat(J[F)V
    .registers 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1006
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1007
    const-wide v0, 0x50200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1009
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1010
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_29

    .line 1011
    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1012
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_29

    .line 1013
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1016
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method public blacklist writePackedInt32(J[I)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1104
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1105
    const-wide v0, 0x50500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1107
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1108
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_34

    .line 1109
    const/4 v2, 0x0

    .line 1110
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_26

    .line 1111
    aget v4, p3, v3

    .line 1112
    .local v4, "v":I
    if-ltz v4, :cond_20

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    goto :goto_22

    :cond_20
    const/16 v5, 0xa

    :goto_22
    add-int/2addr v2, v5

    .line 1110
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1114
    .end local v3    # "i":I
    :cond_26
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1115
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    if-ge v3, v1, :cond_34

    .line 1116
    aget v4, p3, v3

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1115
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1119
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_34
    return-void
.end method

.method public blacklist writePackedInt64(J[J)V
    .registers 11
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1177
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1178
    const-wide v0, 0x50300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1180
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1181
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_31

    .line 1182
    const/4 v2, 0x0

    .line 1183
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_21

    .line 1184
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 1183
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1186
    .end local v3    # "i":I
    :cond_21
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1187
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    if-ge v3, v1, :cond_31

    .line 1188
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1187
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1191
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_31
    return-void
.end method

.method public blacklist writePackedSFixed32(J[I)V
    .registers 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1669
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1670
    const-wide v0, 0x50f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1672
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1673
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_25

    .line 1674
    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1675
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_25

    .line 1676
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1675
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1679
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist writePackedSFixed64(J[J)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1736
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1737
    const-wide v0, 0x51000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1739
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1740
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_25

    .line 1741
    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1742
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_25

    .line 1743
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1742
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1746
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist writePackedSInt32(J[I)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1393
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1394
    const-wide v0, 0x51100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1396
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1397
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_31

    .line 1398
    const/4 v2, 0x0

    .line 1399
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_21

    .line 1400
    aget v4, p3, v3

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1399
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1402
    .end local v3    # "i":I
    :cond_21
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1403
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    if-ge v3, v1, :cond_31

    .line 1404
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1403
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1407
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_31
    return-void
.end method

.method public blacklist writePackedSInt64(J[J)V
    .registers 11
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1465
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1466
    const-wide v0, 0x51200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1468
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1469
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_31

    .line 1470
    const/4 v2, 0x0

    .line 1471
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_21

    .line 1472
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 1471
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1474
    .end local v3    # "i":I
    :cond_21
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1475
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    if-ge v3, v1, :cond_31

    .line 1476
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1475
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1479
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_31
    return-void
.end method

.method public blacklist writePackedUInt32(J[I)V
    .registers 10
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1249
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1250
    const-wide v0, 0x50d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1252
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1253
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_31

    .line 1254
    const/4 v2, 0x0

    .line 1255
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_21

    .line 1256
    aget v4, p3, v3

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1255
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1258
    .end local v3    # "i":I
    :cond_21
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1259
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    if-ge v3, v1, :cond_31

    .line 1260
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1259
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1263
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_31
    return-void
.end method

.method public blacklist writePackedUInt64(J[J)V
    .registers 11
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1321
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1322
    const-wide v0, 0x50400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1324
    .local v0, "id":I
    if-eqz p3, :cond_10

    array-length v1, p3

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1325
    .local v1, "N":I
    :goto_11
    if-lez v1, :cond_31

    .line 1326
    const/4 v2, 0x0

    .line 1327
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_21

    .line 1328
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 1327
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1330
    .end local v3    # "i":I
    :cond_21
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1331
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    if-ge v3, v1, :cond_31

    .line 1332
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1331
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1335
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_31
    return-void
.end method

.method public blacklist writeRepeatedBool(JZ)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1785
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1786
    const-wide v0, 0x20800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1788
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 1789
    return-void
.end method

.method public blacklist writeRepeatedBytes(J[B)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1919
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1920
    const-wide v0, 0x20c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1922
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 1923
    return-void
.end method

.method public blacklist writeRepeatedDouble(JD)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 921
    const-wide v0, 0x20100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 923
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 924
    return-void
.end method

.method public blacklist writeRepeatedEnum(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1967
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1968
    const-wide v0, 0x20e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1970
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 1971
    return-void
.end method

.method public blacklist writeRepeatedFixed32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1517
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1518
    const-wide v0, 0x20700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1520
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 1521
    return-void
.end method

.method public blacklist writeRepeatedFixed64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1585
    const-wide v0, 0x20600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1587
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 1588
    return-void
.end method

.method public blacklist writeRepeatedFloat(JF)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 987
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 988
    const-wide v0, 0x20200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 990
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 991
    return-void
.end method

.method public blacklist writeRepeatedInt32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1081
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1082
    const-wide v0, 0x20500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1084
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 1085
    return-void
.end method

.method public blacklist writeRepeatedInt64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1158
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1159
    const-wide v0, 0x20300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1161
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 1162
    return-void
.end method

.method public blacklist writeRepeatedObject(J[B)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2166
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2167
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2169
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 2170
    return-void
.end method

.method greylist-max-o writeRepeatedObjectImpl(I[B)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .line 2173
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p2

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2174
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2175
    return-void
.end method

.method public blacklist writeRepeatedSFixed32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1650
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1651
    const-wide v0, 0x20f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1653
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 1654
    return-void
.end method

.method public blacklist writeRepeatedSFixed64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1717
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1718
    const-wide v0, 0x21000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1720
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 1721
    return-void
.end method

.method public blacklist writeRepeatedSInt32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1374
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1375
    const-wide v0, 0x21100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1377
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 1378
    return-void
.end method

.method public blacklist writeRepeatedSInt64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1447
    const-wide v0, 0x21200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1449
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 1450
    return-void
.end method

.method public blacklist writeRepeatedString(JLjava/lang/String;)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1855
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1856
    const-wide v0, 0x20900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1858
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 1859
    return-void
.end method

.method public blacklist writeRepeatedUInt32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1230
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1231
    const-wide v0, 0x20d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1233
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 1234
    return-void
.end method

.method public blacklist writeRepeatedUInt64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1302
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1303
    const-wide v0, 0x20400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1305
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 1306
    return-void
.end method

.method public blacklist writeSFixed32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1629
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1630
    const-wide v0, 0x10f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1632
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 1633
    return-void
.end method

.method public blacklist writeSFixed64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1696
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1697
    const-wide v0, 0x11000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1699
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 1700
    return-void
.end method

.method public blacklist writeSInt32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1353
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1354
    const-wide v0, 0x11100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1356
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 1357
    return-void
.end method

.method public blacklist writeSInt64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1425
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1426
    const-wide v0, 0x11200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1428
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 1429
    return-void
.end method

.method public blacklist writeString(JLjava/lang/String;)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1836
    const-wide v0, 0x10900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1838
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 1839
    return-void
.end method

.method public whitelist writeTag(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "wireType"    # I

    .line 2283
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2284
    return-void
.end method

.method public blacklist writeUInt32(JI)V
    .registers 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1209
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1210
    const-wide v0, 0x10d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1212
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 1213
    return-void
.end method

.method public blacklist writeUInt64(JJ)V
    .registers 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1281
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1282
    const-wide v0, 0x10400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1284
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 1285
    return-void
.end method
