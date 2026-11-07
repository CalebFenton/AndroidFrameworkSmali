.class public final Lcom/android/internal/os/ProcStatsUtil;
.super Ljava/lang/Object;
.source "ProcStatsUtil.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist READ_SIZE:I = 0x400

.field private static final blacklist TAG:Ljava/lang/String; = "ProcStatsUtil"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static blacklist readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 60
    invoke-static {p0}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "contents":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 62
    const/4 v1, 0x0

    return-object v1

    .line 67
    :cond_8
    const-string v1, "\u0000\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "endIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_16
    const-string v2, "\u0000"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 85
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "terminator"    # B

    .line 99
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 101
    .local v0, "savedPolicy":I
    :try_start_4
    invoke-static {p0, p1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFileInternal(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 103
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 101
    return-object v1

    .line 103
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 104
    throw v1
.end method

.method private static blacklist readTerminatedProcFileInternal(Ljava/lang/String;B)Ljava/lang/String;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "terminator"    # B

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_60

    .line 109
    .local v0, "is":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 110
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    :try_start_8
    new-array v3, v2, [B

    .line 113
    .local v3, "buffer":[B
    :goto_a
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 114
    .local v4, "len":I
    if-gtz v4, :cond_11

    .line 116
    goto :goto_45

    .line 120
    :cond_11
    const/4 v5, -0x1

    .line 121
    .local v5, "terminatingIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    if-ge v6, v4, :cond_1e

    .line 122
    aget-byte v7, v3, v6

    if-ne v7, p1, :cond_1b

    .line 123
    move v5, v6

    .line 124
    goto :goto_1e

    .line 121
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 127
    .end local v6    # "i":I
    :cond_1e
    :goto_1e
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    move v6, v7

    .line 131
    .local v6, "foundTerminator":Z
    :goto_25
    if-eqz v6, :cond_32

    if-nez v1, :cond_32

    .line 132
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v7, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_56

    .line 154
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_60

    .line 132
    return-object v2

    .line 136
    :cond_32
    if-nez v1, :cond_3a

    .line 137
    :try_start_34
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v1, v8

    .line 141
    :cond_3a
    if-eqz v6, :cond_3e

    move v8, v5

    goto :goto_3f

    :cond_3e
    move v8, v4

    :goto_3f
    invoke-virtual {v1, v3, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 144
    if-eqz v6, :cond_55

    .line 145
    nop

    .line 150
    .end local v4    # "len":I
    .end local v5    # "terminatingIndex":I
    .end local v6    # "foundTerminator":Z
    :goto_45
    if-nez v1, :cond_4d

    .line 151
    const-string v2, ""
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_56

    .line 154
    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_60

    .line 151
    return-object v2

    .line 153
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_56

    .line 154
    :try_start_51
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_60

    .line 153
    return-object v2

    .line 147
    :cond_55
    goto :goto_a

    .line 108
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    :catchall_56
    move-exception v1

    :try_start_57
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v2

    :try_start_5c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "terminator":B
    :goto_5f
    throw v1
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_60

    .line 154
    .end local v0    # "is":Ljava/io/FileInputStream;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "terminator":B
    :catch_60
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
