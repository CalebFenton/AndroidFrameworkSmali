.class public final Landroid/aconfig/nano/Aconfig$flag_metadata;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_metadata"
.end annotation


# static fields
.field public static final blacklist PURPOSE_BUGFIX:I = 0x2

.field public static final blacklist PURPOSE_FEATURE:I = 0x1

.field public static final blacklist PURPOSE_UNSPECIFIED:I

.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;


# instance fields
.field public blacklist purpose:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 246
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 247
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_metadata;->clear()Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 248
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2

    .line 232
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v0, :cond_15

    .line 233
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v1, :cond_10

    .line 236
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_metadata;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 238
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 240
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_metadata;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_metadata;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_metadata;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 307
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 2

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->cachedSize:I

    .line 253
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 267
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 268
    .local v0, "size":I
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    if-eqz v1, :cond_10

    .line 269
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    .line 270
    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_10
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;
    .registers 4
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 281
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_1c

    .line 285
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 286
    return-object p0

    .line 291
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 292
    .local v1, "value":I
    packed-switch v1, :pswitch_data_26

    goto :goto_19

    .line 296
    :pswitch_17
    iput v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    .line 299
    :goto_19
    goto :goto_1b

    .line 283
    .end local v1    # "value":I
    :sswitch_1a
    return-object p0

    .line 302
    .end local v0    # "tag":I
    :cond_1b
    :goto_1b
    goto :goto_1

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
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

    .line 221
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_metadata;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_metadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget v0, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    if-eqz v0, :cond_a

    .line 260
    const/4 v0, 0x1

    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_metadata;->purpose:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 262
    :cond_a
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 263
    return-void
.end method
