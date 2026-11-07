.class public Lcom/android/ondevicepersonalization/internal/util/ByteArrayUtil;
.super Ljava/lang/Object;
.source "ByteArrayUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deserializeObject([B)Ljava/lang/Object;
    .registers 5
    .param p0, "bytes"    # [B

    .line 44
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_29

    .line 45
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f

    .line 46
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    .line 47
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1f

    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_29

    .line 46
    return-object v2

    .line 44
    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local p0    # "bytes":[B
    :goto_1e
    throw v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bytes":[B
    :catchall_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v2

    :try_start_25
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "bytes":[B
    :goto_28
    throw v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_29} :catch_29

    .line 47
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bytes":[B
    :catch_29
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to deserialize inputData field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist serializeObject(Ljava/lang/Object;)[B
    .registers 5
    .param p0, "input"    # Ljava/lang/Object;

    .line 33
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2c

    .line 34
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_22

    .line 35
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_18

    .line 37
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    :try_start_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_2c

    .line 36
    return-object v2

    .line 33
    :catchall_18
    move-exception v2

    :try_start_19
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "input":Ljava/lang/Object;
    :goto_21
    throw v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "input":Ljava/lang/Object;
    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "input":Ljava/lang/Object;
    :goto_2b
    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2c

    .line 37
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "input":Ljava/lang/Object;
    :catch_2c
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to serialize inputData field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
