.class public final Landroid/aconfig/nano/Aconfig$parsed_flags;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "parsed_flags"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;


# instance fields
.field public blacklist parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1172
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 1173
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$parsed_flags;->clear()Landroid/aconfig/nano/Aconfig$parsed_flags;

    .line 1174
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2

    .line 1158
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    if-nez v0, :cond_15

    .line 1159
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    if-nez v1, :cond_10

    .line 1162
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$parsed_flags;

    sput-object v1, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    .line 1164
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1166
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flags;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1258
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flags;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flags;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$parsed_flags;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1252
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flags;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flags;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$parsed_flags;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 2

    .line 1177
    invoke-static {}, Landroid/aconfig/nano/Aconfig$parsed_flag;->emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 1178
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->cachedSize:I

    .line 1179
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 1198
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1199
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 1200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 1201
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    aget-object v2, v2, v1

    .line 1202
    .local v2, "element":Landroid/aconfig/nano/Aconfig$parsed_flag;
    if-eqz v2, :cond_20

    .line 1203
    nop

    .line 1204
    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1200
    .end local v2    # "element":Landroid/aconfig/nano/Aconfig$parsed_flag;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1208
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;
    .registers 8
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1217
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_54

    .line 1221
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 1222
    return-object p0

    .line 1227
    :sswitch_f
    nop

    .line 1228
    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 1229
    .local v1, "arrayLength":I
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_20

    :cond_1d
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v2, v2

    .line 1230
    .local v2, "i":I
    :goto_20
    add-int v4, v2, v1

    new-array v4, v4, [Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 1232
    .local v4, "newArray":[Landroid/aconfig/nano/Aconfig$parsed_flag;
    if-eqz v2, :cond_2b

    .line 1233
    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1235
    :cond_2b
    :goto_2b
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_42

    .line 1236
    new-instance v3, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    aput-object v3, v4, v2

    .line 1237
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1238
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1241
    :cond_42
    new-instance v3, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    aput-object v3, v4, v2

    .line 1242
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1243
    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 1244
    goto :goto_52

    .line 1219
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Landroid/aconfig/nano/Aconfig$parsed_flag;
    :sswitch_51
    return-object p0

    .line 1247
    .end local v0    # "tag":I
    :cond_52
    :goto_52
    goto :goto_1

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_51
        0xa -> :sswitch_f
    .end sparse-switch
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

    .line 1152
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$parsed_flags;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 1187
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    aget-object v1, v1, v0

    .line 1188
    .local v1, "element":Landroid/aconfig/nano/Aconfig$parsed_flag;
    if-eqz v1, :cond_19

    .line 1189
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1186
    .end local v1    # "element":Landroid/aconfig/nano/Aconfig$parsed_flag;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1193
    .end local v0    # "i":I
    :cond_1c
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1194
    return-void
.end method
