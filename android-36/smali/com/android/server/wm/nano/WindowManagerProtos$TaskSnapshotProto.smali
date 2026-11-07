.class public final Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WindowManagerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/nano/WindowManagerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskSnapshotProto"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;


# instance fields
.field public blacklist appearance:I

.field public blacklist id:J

.field public blacklist insetBottom:I

.field public blacklist insetLeft:I

.field public blacklist insetRight:I

.field public blacklist insetTop:I

.field public blacklist isRealSnapshot:Z

.field public blacklist isTranslucent:Z

.field public blacklist legacyScale:F

.field public blacklist letterboxInsetBottom:I

.field public blacklist letterboxInsetLeft:I

.field public blacklist letterboxInsetRight:I

.field public blacklist letterboxInsetTop:I

.field public blacklist orientation:I

.field public blacklist rotation:I

.field public blacklist systemUiVisibility:I

.field public blacklist taskHeight:I

.field public blacklist taskWidth:I

.field public blacklist topActivityComponent:Ljava/lang/String;

.field public blacklist uiMode:I

.field public blacklist windowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->clear()Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    .line 90
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .registers 2

    .line 14
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    if-nez v0, :cond_15

    .line 15
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    if-nez v1, :cond_10

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    sput-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    .line 20
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 22
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .registers 4

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 94
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 95
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 96
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 97
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 98
    iput-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 99
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 100
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    .line 101
    iput-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 102
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 105
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    .line 106
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 107
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    .line 108
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    .line 109
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    .line 110
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    .line 111
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    .line 112
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    .line 113
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cachedSize:I

    .line 115
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 190
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 191
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    if-eqz v1, :cond_10

    .line 192
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 193
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_10
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    if-eqz v1, :cond_1c

    .line 196
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 197
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_1c
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    if-eqz v1, :cond_28

    .line 200
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 201
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_28
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    if-eqz v1, :cond_34

    .line 204
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 205
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_34
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    if-eqz v1, :cond_40

    .line 208
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 209
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_40
    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    if-eqz v1, :cond_4c

    .line 212
    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 213
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_4c
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    if-eqz v1, :cond_58

    .line 216
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 217
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_58
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    if-eqz v1, :cond_65

    .line 220
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    .line 221
    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_65
    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-eqz v1, :cond_72

    .line 224
    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 225
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_72
    iget-object v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 229
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_85
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 232
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_9b

    .line 233
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 234
    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_9b
    iget-wide v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ac

    .line 237
    iget-wide v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 238
    const/16 v3, 0xc

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_ac
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    if-eqz v1, :cond_b9

    .line 241
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    .line 242
    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_b9
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    if-eqz v1, :cond_c6

    .line 245
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 246
    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_c6
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    if-eqz v1, :cond_d3

    .line 249
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    .line 250
    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_d3
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    if-eqz v1, :cond_e0

    .line 253
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    .line 254
    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_e0
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    if-eqz v1, :cond_ed

    .line 257
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    .line 258
    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_ed
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    if-eqz v1, :cond_fa

    .line 261
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    .line 262
    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_fa
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    if-eqz v1, :cond_107

    .line 265
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    .line 266
    const/16 v2, 0x13

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_107
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    if-eqz v1, :cond_114

    .line 269
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    .line 270
    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_114
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    if-eqz v1, :cond_121

    .line 273
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    .line 274
    const/16 v2, 0x15

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_121
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 285
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_ac

    .line 289
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 290
    return-object p0

    .line 375
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    goto/16 :goto_aa

    .line 371
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    .line 372
    goto/16 :goto_aa

    .line 367
    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    .line 368
    goto/16 :goto_aa

    .line 363
    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    .line 364
    goto/16 :goto_aa

    .line 359
    :sswitch_2f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    .line 360
    goto/16 :goto_aa

    .line 355
    :sswitch_37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    .line 356
    goto/16 :goto_aa

    .line 351
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    .line 352
    goto/16 :goto_aa

    .line 347
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 348
    goto :goto_aa

    .line 343
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    .line 344
    goto :goto_aa

    .line 339
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 340
    goto :goto_aa

    .line 335
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 336
    goto :goto_aa

    .line 331
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 332
    goto :goto_aa

    .line 327
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 328
    goto :goto_aa

    .line 323
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    .line 324
    goto :goto_aa

    .line 319
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 320
    goto :goto_aa

    .line 315
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 316
    goto :goto_aa

    .line 311
    :sswitch_86
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 312
    goto :goto_aa

    .line 307
    :sswitch_8d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 308
    goto :goto_aa

    .line 303
    :sswitch_94
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 304
    goto :goto_aa

    .line 299
    :sswitch_9b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 300
    goto :goto_aa

    .line 295
    :sswitch_a2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 296
    goto :goto_aa

    .line 287
    :sswitch_a9
    return-object p0

    .line 379
    .end local v0    # "tag":I
    :cond_aa
    :goto_aa
    goto/16 :goto_1

    :sswitch_data_ac
    .sparse-switch
        0x0 -> :sswitch_a9
        0x8 -> :sswitch_a2
        0x10 -> :sswitch_9b
        0x18 -> :sswitch_94
        0x20 -> :sswitch_8d
        0x28 -> :sswitch_86
        0x30 -> :sswitch_7f
        0x38 -> :sswitch_78
        0x40 -> :sswitch_71
        0x48 -> :sswitch_6a
        0x52 -> :sswitch_63
        0x5d -> :sswitch_5c
        0x60 -> :sswitch_55
        0x68 -> :sswitch_4e
        0x70 -> :sswitch_47
        0x78 -> :sswitch_3f
        0x80 -> :sswitch_37
        0x88 -> :sswitch_2f
        0x90 -> :sswitch_27
        0x98 -> :sswitch_1f
        0xa0 -> :sswitch_17
        0xa8 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    if-eqz v0, :cond_a

    .line 122
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 124
    :cond_a
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    if-eqz v0, :cond_14

    .line 125
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 127
    :cond_14
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    if-eqz v0, :cond_1e

    .line 128
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 130
    :cond_1e
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    if-eqz v0, :cond_28

    .line 131
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 133
    :cond_28
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    if-eqz v0, :cond_32

    .line 134
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 136
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    if-eqz v0, :cond_3c

    .line 137
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 139
    :cond_3c
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    if-eqz v0, :cond_46

    .line 140
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 142
    :cond_46
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    if-eqz v0, :cond_51

    .line 143
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 145
    :cond_51
    iget-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-eqz v0, :cond_5c

    .line 146
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 148
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 149
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 151
    :cond_6d
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 152
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_81

    .line 153
    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 155
    :cond_81
    iget-wide v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_90

    .line 156
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 158
    :cond_90
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    if-eqz v0, :cond_9b

    .line 159
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 161
    :cond_9b
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    if-eqz v0, :cond_a6

    .line 162
    const/16 v0, 0xe

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 164
    :cond_a6
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    if-eqz v0, :cond_b1

    .line 165
    const/16 v0, 0xf

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 167
    :cond_b1
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    if-eqz v0, :cond_bc

    .line 168
    const/16 v0, 0x10

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 170
    :cond_bc
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    if-eqz v0, :cond_c7

    .line 171
    const/16 v0, 0x11

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 173
    :cond_c7
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    if-eqz v0, :cond_d2

    .line 174
    const/16 v0, 0x12

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 176
    :cond_d2
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    if-eqz v0, :cond_dd

    .line 177
    const/16 v0, 0x13

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 179
    :cond_dd
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    if-eqz v0, :cond_e8

    .line 180
    const/16 v0, 0x14

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 182
    :cond_e8
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    if-eqz v0, :cond_f3

    .line 183
    const/16 v0, 0x15

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 185
    :cond_f3
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 186
    return-void
.end method
