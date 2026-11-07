.class final Ljava/lang/ProcessImpl;
.super Ljava/lang/Object;
.source "ProcessImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    .registers 25
    .param p0, "cmdarray"    # [Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "redirects"    # [Ljava/lang/ProcessBuilder$Redirect;
    .param p4, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ProcessBuilder$Redirect;",
            "Z)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    .local p1, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    .line 72
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    new-array v3, v0, [[B

    .line 73
    .local v3, "args":[[B
    array-length v0, v3

    .line 74
    .local v0, "size":I
    const/4 v4, 0x0

    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v19

    .local v0, "i":I
    .local v4, "size":I
    :goto_e
    array-length v5, v3

    if-ge v0, v5, :cond_22

    .line 75
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v3, v0

    .line 76
    aget-object v5, v3, v0

    array-length v5, v5

    add-int/2addr v4, v5

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 78
    .end local v0    # "i":I
    :cond_22
    new-array v7, v4, [B

    .line 79
    .local v7, "argBlock":[B
    const/4 v0, 0x0

    .line 80
    .restart local v0    # "i":I
    array-length v5, v3

    const/4 v6, 0x0

    move v14, v0

    move v0, v6

    .end local v0    # "i":I
    .local v14, "i":I
    :goto_29
    if-ge v0, v5, :cond_37

    aget-object v8, v3, v0

    .line 81
    .local v8, "arg":[B
    array-length v9, v8

    invoke-static {v8, v6, v7, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    array-length v9, v8

    add-int/2addr v9, v2

    add-int/2addr v14, v9

    .line 80
    .end local v8    # "arg":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 86
    :cond_37
    new-array v15, v2, [I

    .line 87
    .local v15, "envc":[I
    move-object/from16 v5, p1

    invoke-static {v5, v15}, Ljava/lang/ProcessEnvironment;->toEnvironmentBlock(Ljava/util/Map;[I)[B

    move-result-object v9

    .line 91
    .local v9, "envBlock":[B
    const/4 v8, 0x0

    .line 92
    .local v8, "f0":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 93
    .local v10, "f1":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 96
    .local v11, "f2":Ljava/io/FileOutputStream;
    const/4 v0, -0x1

    if-nez p3, :cond_51

    .line 97
    :try_start_45
    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    move-object v12, v0

    move-object v2, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .local v0, "std_fds":[I
    goto/16 :goto_e9

    .line 99
    .end local v0    # "std_fds":[I
    :cond_51
    const/4 v12, 0x3

    new-array v12, v12, [I

    .line 101
    .local v12, "std_fds":[I
    aget-object v13, p3, v6

    move/from16 v16, v0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v13, v0, :cond_5f

    .line 102
    aput v16, v12, v6

    goto :goto_7e

    .line 103
    :cond_5f
    aget-object v0, p3, v6

    sget-object v13, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v0, v13, :cond_68

    .line 104
    aput v6, v12, v6

    goto :goto_7e

    .line 106
    :cond_68
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v13, p3, v6

    invoke-virtual {v13}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 109
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    aput v0, v12, v6

    .line 112
    :goto_7e
    aget-object v0, p3, v2

    sget-object v13, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v0, v13, :cond_87

    .line 113
    aput v16, v12, v2

    goto :goto_ae

    .line 114
    :cond_87
    aget-object v0, p3, v2

    sget-object v13, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v0, v13, :cond_90

    .line 115
    aput v2, v12, v2

    goto :goto_ae

    .line 117
    :cond_90
    new-instance v0, Ljava/io/FileOutputStream;

    aget-object v13, p3, v2

    invoke-virtual {v13}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v13

    aget-object v17, p3, v2

    .line 118
    move/from16 v18, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v2

    invoke-direct {v0, v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v10, v0

    .line 121
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    aput v0, v12, v18

    .line 124
    :goto_ae
    const/4 v0, 0x2

    aget-object v2, p3, v0

    sget-object v13, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v2, v13, :cond_b8

    .line 125
    aput v16, v12, v0

    goto :goto_c0

    .line 126
    :cond_b8
    aget-object v2, p3, v0

    sget-object v13, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v2, v13, :cond_c6

    .line 127
    aput v0, v12, v0

    .line 137
    :goto_c0
    move-object v2, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_e9

    .line 129
    :cond_c6
    new-instance v2, Ljava/io/FileOutputStream;

    aget-object v13, p3, v0

    invoke-virtual {v13}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v13

    aget-object v16, p3, v0

    .line 130
    move/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v0

    invoke-direct {v2, v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v11, v2

    .line 133
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    aput v0, v12, v17
    :try_end_e4
    .catchall {:try_start_45 .. :try_end_e4} :catchall_133

    move-object v2, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 137
    .end local v8    # "f0":Ljava/io/FileInputStream;
    .end local v10    # "f1":Ljava/io/FileOutputStream;
    .end local v11    # "f2":Ljava/io/FileOutputStream;
    .local v2, "f0":Ljava/io/FileInputStream;
    .local v16, "f1":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    :goto_e9
    :try_start_e9
    new-instance v5, Ljava/lang/UNIXProcess;

    aget-object v0, v1, v6

    .line 138
    invoke-static {v0}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v0

    array-length v8, v3

    aget v10, v15, v6

    .line 141
    invoke-static/range {p2 .. p2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v11

    move/from16 v13, p4

    move-object v6, v0

    invoke-direct/range {v5 .. v13}, Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
    :try_end_fe
    .catchall {:try_start_e9 .. :try_end_fe} :catchall_12c

    .line 147
    if-eqz v2, :cond_118

    :try_start_100
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    goto :goto_118

    .line 149
    :catchall_104
    move-exception v0

    if-eqz v16, :cond_112

    :try_start_107
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b

    goto :goto_112

    .line 150
    :catchall_10b
    move-exception v0

    if-eqz v17, :cond_111

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_111
    throw v0

    :cond_112
    :goto_112
    if-eqz v17, :cond_117

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_117
    throw v0

    .line 149
    :cond_118
    :goto_118
    if-eqz v16, :cond_125

    :try_start_11a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11e

    goto :goto_125

    .line 150
    :catchall_11e
    move-exception v0

    if-eqz v17, :cond_124

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_124
    throw v0

    :cond_125
    :goto_125
    if-eqz v17, :cond_12a

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_12a
    nop

    .line 137
    return-object v5

    .line 147
    .end local v12    # "std_fds":[I
    :catchall_12c
    move-exception v0

    move-object v8, v2

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_134

    .end local v2    # "f0":Ljava/io/FileInputStream;
    .end local v16    # "f1":Ljava/io/FileOutputStream;
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    .restart local v8    # "f0":Ljava/io/FileInputStream;
    .restart local v10    # "f1":Ljava/io/FileOutputStream;
    .restart local v11    # "f2":Ljava/io/FileOutputStream;
    :catchall_133
    move-exception v0

    :goto_134
    if-eqz v8, :cond_14e

    :try_start_136
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_13a

    goto :goto_14e

    .line 149
    :catchall_13a
    move-exception v0

    if-eqz v10, :cond_148

    :try_start_13d
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_141

    goto :goto_148

    .line 150
    :catchall_141
    move-exception v0

    if-eqz v11, :cond_147

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_147
    throw v0

    :cond_148
    :goto_148
    if-eqz v11, :cond_14d

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_14d
    throw v0

    .line 149
    :cond_14e
    :goto_14e
    if-eqz v10, :cond_15b

    :try_start_150
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    goto :goto_15b

    .line 150
    :catchall_154
    move-exception v0

    if-eqz v11, :cond_15a

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_15a
    throw v0

    :cond_15b
    :goto_15b
    if-eqz v11, :cond_160

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_160
    nop

    .line 152
    throw v0
.end method

.method private static blacklist toCString(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    .local v0, "bytes":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 53
    .local v1, "result":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v3, v1, v2

    .line 57
    return-object v1
.end method
