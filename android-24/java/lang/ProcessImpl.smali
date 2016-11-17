.class final Ljava/lang/ProcessImpl;
.super Ljava/lang/Object;
.source "ProcessImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/lang/ProcessImpl;

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
    sput-boolean v0, Ljava/lang/ProcessImpl;->-assertionsDisabled:Z

    #@b
    .line 41
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    .locals 21
    .param p0, "cmdarray"    # [Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "redirects"    # [Ljava/lang/ProcessBuilder$Redirect;
    .param p4, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
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

    #@0
    .prologue
    .line 65
    .local p1, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Ljava/lang/ProcessImpl;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_1

    #@4
    if-eqz p0, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    array-length v1, v0

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    if-nez v1, :cond_1

    #@e
    new-instance v1, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v1

    #@14
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0

    #@16
    .line 69
    :cond_1
    move-object/from16 v0, p0

    #@18
    array-length v1, v0

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    new-array v11, v1, [[B

    #@1d
    .line 70
    .local v11, "args":[[B
    array-length v0, v11

    #@1e
    move/from16 v20, v0

    #@20
    .line 71
    .local v20, "size":I
    const/16 v19, 0x0

    #@22
    .local v19, "i":I
    :goto_1
    array-length v1, v11

    #@23
    move/from16 v0, v19

    #@25
    if-ge v0, v1, :cond_2

    #@27
    .line 72
    add-int/lit8 v1, v19, 0x1

    #@29
    aget-object v1, p0, v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@2e
    move-result-object v1

    #@2f
    aput-object v1, v11, v19

    #@31
    .line 73
    aget-object v1, v11, v19

    #@33
    array-length v1, v1

    #@34
    add-int v20, v20, v1

    #@36
    .line 71
    add-int/lit8 v19, v19, 0x1

    #@38
    goto :goto_1

    #@39
    .line 75
    :cond_2
    move/from16 v0, v20

    #@3b
    new-array v3, v0, [B

    #@3d
    .line 76
    .local v3, "argBlock":[B
    const/16 v19, 0x0

    #@3f
    .line 77
    const/4 v1, 0x0

    #@40
    array-length v2, v11

    #@41
    :goto_2
    if-ge v1, v2, :cond_3

    #@43
    aget-object v10, v11, v1

    #@45
    .line 78
    .local v10, "arg":[B
    array-length v4, v10

    #@46
    const/4 v6, 0x0

    #@47
    move/from16 v0, v19

    #@49
    invoke-static {v10, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4c
    .line 79
    array-length v4, v10

    #@4d
    add-int/lit8 v4, v4, 0x1

    #@4f
    add-int v19, v19, v4

    #@51
    .line 77
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_2

    #@54
    .line 83
    .end local v10    # "arg":[B
    :cond_3
    const/4 v1, 0x1

    #@55
    new-array v12, v1, [I

    #@57
    .line 84
    .local v12, "envc":[I
    move-object/from16 v0, p1

    #@59
    invoke-static {v0, v12}, Ljava/lang/ProcessEnvironment;->toEnvironmentBlock(Ljava/util/Map;[I)[B

    #@5c
    move-result-object v5

    #@5d
    .line 88
    .local v5, "envBlock":[B
    const/4 v13, 0x0

    #@5e
    .line 89
    .local v13, "f0":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    #@5f
    .line 90
    .local v15, "f1":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    #@61
    .line 93
    .local v17, "f2":Ljava/io/FileOutputStream;
    if-nez p3, :cond_7

    #@63
    .line 94
    const/4 v1, -0x1

    #@64
    const/4 v2, -0x1

    #@65
    const/4 v4, -0x1

    #@66
    :try_start_0
    filled-new-array {v1, v2, v4}, [I

    #@69
    move-result-object v8

    #@6a
    .line 128
    .end local v13    # "f0":Ljava/io/FileInputStream;
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    .local v8, "std_fds":[I
    :goto_3
    new-instance v1, Ljava/lang/UNIXProcess;

    #@6c
    .line 129
    const/4 v2, 0x0

    #@6d
    aget-object v2, p0, v2

    #@6f
    invoke-static {v2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    #@72
    move-result-object v2

    #@73
    .line 130
    array-length v4, v11

    #@74
    .line 131
    const/4 v6, 0x0

    #@75
    aget v6, v12, v6

    #@77
    .line 132
    invoke-static/range {p2 .. p2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    #@7a
    move-result-object v7

    #@7b
    move/from16 v9, p4

    #@7d
    .line 128
    invoke-direct/range {v1 .. v9}, Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 138
    if-eqz v13, :cond_4

    #@82
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@85
    .line 140
    :cond_4
    if-eqz v15, :cond_5

    #@87
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8a
    .line 141
    :cond_5
    if-eqz v17, :cond_6

    #@8c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@8f
    .line 128
    :cond_6
    return-object v1

    #@90
    .line 96
    .end local v8    # "std_fds":[I
    .restart local v13    # "f0":Ljava/io/FileInputStream;
    .restart local v15    # "f1":Ljava/io/FileOutputStream;
    .restart local v17    # "f2":Ljava/io/FileOutputStream;
    :cond_7
    const/4 v1, 0x3

    #@91
    :try_start_3
    new-array v8, v1, [I

    #@93
    .line 98
    .restart local v8    # "std_fds":[I
    const/4 v1, 0x0

    #@94
    aget-object v1, p3, v1

    #@96
    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@98
    if-ne v1, v2, :cond_b

    #@9a
    .line 99
    const/4 v1, -0x1

    #@9b
    const/4 v2, 0x0

    #@9c
    aput v1, v8, v2

    #@9e
    .line 107
    .end local v13    # "f0":Ljava/io/FileInputStream;
    :goto_4
    const/4 v1, 0x1

    #@9f
    aget-object v1, p3, v1

    #@a1
    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@a3
    if-ne v1, v2, :cond_d

    #@a5
    .line 108
    const/4 v1, -0x1

    #@a6
    const/4 v2, 0x1

    #@a7
    aput v1, v8, v2

    #@a9
    .line 117
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    :goto_5
    const/4 v1, 0x2

    #@aa
    aget-object v1, p3, v1

    #@ac
    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@ae
    if-ne v1, v2, :cond_f

    #@b0
    .line 118
    const/4 v1, -0x1

    #@b1
    const/4 v2, 0x2

    #@b2
    aput v1, v8, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b4
    goto :goto_3

    #@b5
    .line 135
    .end local v8    # "std_fds":[I
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    #@b6
    .line 138
    :goto_6
    if-eqz v13, :cond_8

    #@b8
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    #@bb
    .line 140
    :cond_8
    if-eqz v15, :cond_9

    #@bd
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@c0
    .line 141
    :cond_9
    if-eqz v17, :cond_a

    #@c2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@c5
    .line 135
    :cond_a
    throw v1

    #@c6
    .line 100
    .restart local v8    # "std_fds":[I
    .restart local v13    # "f0":Ljava/io/FileInputStream;
    .restart local v15    # "f1":Ljava/io/FileOutputStream;
    .restart local v17    # "f2":Ljava/io/FileOutputStream;
    :cond_b
    const/4 v1, 0x0

    #@c7
    :try_start_6
    aget-object v1, p3, v1

    #@c9
    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    #@cb
    if-ne v1, v2, :cond_c

    #@cd
    .line 101
    const/4 v1, 0x0

    #@ce
    const/4 v2, 0x0

    #@cf
    aput v1, v8, v2

    #@d1
    goto :goto_4

    #@d2
    .line 103
    :cond_c
    new-instance v14, Ljava/io/FileInputStream;

    #@d4
    const/4 v1, 0x0

    #@d5
    aget-object v1, p3, v1

    #@d7
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@da
    move-result-object v1

    #@db
    invoke-direct {v14, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@de
    .line 104
    .local v14, "f0":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@e1
    .end local v13    # "f0":Ljava/io/FileInputStream;
    move-result-object v1

    #@e2
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    #@e5
    move-result v1

    #@e6
    const/4 v2, 0x0

    #@e7
    aput v1, v8, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    #@e9
    move-object v13, v14

    #@ea
    .end local v14    # "f0":Ljava/io/FileInputStream;
    .local v13, "f0":Ljava/io/FileInputStream;
    goto :goto_4

    #@eb
    .line 109
    .end local v13    # "f0":Ljava/io/FileInputStream;
    :cond_d
    const/4 v1, 0x1

    #@ec
    :try_start_8
    aget-object v1, p3, v1

    #@ee
    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    #@f0
    if-ne v1, v2, :cond_e

    #@f2
    .line 110
    const/4 v1, 0x1

    #@f3
    const/4 v2, 0x1

    #@f4
    aput v1, v8, v2

    #@f6
    goto :goto_5

    #@f7
    .line 112
    :cond_e
    new-instance v16, Ljava/io/FileOutputStream;

    #@f9
    const/4 v1, 0x1

    #@fa
    aget-object v1, p3, v1

    #@fc
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@ff
    move-result-object v1

    #@100
    .line 113
    const/4 v2, 0x1

    #@101
    aget-object v2, p3, v2

    #@103
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    #@106
    move-result v2

    #@107
    .line 112
    move-object/from16 v0, v16

    #@109
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@10c
    .line 114
    .local v16, "f1":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@10f
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    move-result-object v1

    #@110
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    #@113
    move-result v1

    #@114
    const/4 v2, 0x1

    #@115
    aput v1, v8, v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    #@117
    move-object/from16 v15, v16

    #@119
    .end local v16    # "f1":Ljava/io/FileOutputStream;
    .local v15, "f1":Ljava/io/FileOutputStream;
    goto :goto_5

    #@11a
    .line 119
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    :cond_f
    const/4 v1, 0x2

    #@11b
    :try_start_a
    aget-object v1, p3, v1

    #@11d
    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    #@11f
    if-ne v1, v2, :cond_10

    #@121
    .line 120
    const/4 v1, 0x2

    #@122
    const/4 v2, 0x2

    #@123
    aput v1, v8, v2

    #@125
    goto/16 :goto_3

    #@127
    .line 122
    :cond_10
    new-instance v18, Ljava/io/FileOutputStream;

    #@129
    const/4 v1, 0x2

    #@12a
    aget-object v1, p3, v1

    #@12c
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    #@12f
    move-result-object v1

    #@130
    .line 123
    const/4 v2, 0x2

    #@131
    aget-object v2, p3, v2

    #@133
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    #@136
    move-result v2

    #@137
    .line 122
    move-object/from16 v0, v18

    #@139
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@13c
    .line 124
    .local v18, "f2":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@13f
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    move-result-object v1

    #@140
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    #@143
    move-result v1

    #@144
    const/4 v2, 0x2

    #@145
    aput v1, v8, v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    #@147
    move-object/from16 v17, v18

    #@149
    .end local v18    # "f2":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    #@14b
    .line 141
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    #@14c
    if-eqz v17, :cond_11

    #@14e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@151
    :cond_11
    throw v1

    #@152
    .line 139
    :catchall_2
    move-exception v1

    #@153
    .line 140
    if-eqz v15, :cond_12

    #@155
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@158
    .line 141
    :cond_12
    if-eqz v17, :cond_13

    #@15a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@15d
    .line 139
    :cond_13
    throw v1

    #@15e
    .line 141
    :catchall_3
    move-exception v1

    #@15f
    if-eqz v17, :cond_14

    #@161
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@164
    :cond_14
    throw v1

    #@165
    .end local v8    # "std_fds":[I
    :catchall_4
    move-exception v1

    #@166
    if-eqz v17, :cond_15

    #@168
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@16b
    :cond_15
    throw v1

    #@16c
    .line 139
    :catchall_5
    move-exception v1

    #@16d
    .line 140
    if-eqz v15, :cond_16

    #@16f
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    #@172
    .line 141
    :cond_16
    if-eqz v17, :cond_17

    #@174
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@177
    .line 139
    :cond_17
    throw v1

    #@178
    .line 141
    :catchall_6
    move-exception v1

    #@179
    if-eqz v17, :cond_18

    #@17b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    #@17e
    :cond_18
    throw v1

    #@17f
    .line 135
    .restart local v8    # "std_fds":[I
    .restart local v14    # "f0":Ljava/io/FileInputStream;
    .local v15, "f1":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v1

    #@180
    move-object v13, v14

    #@181
    .end local v14    # "f0":Ljava/io/FileInputStream;
    .restart local v13    # "f0":Ljava/io/FileInputStream;
    goto/16 :goto_6

    #@183
    .end local v13    # "f0":Ljava/io/FileInputStream;
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    .restart local v16    # "f1":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v1

    #@184
    move-object/from16 v15, v16

    #@186
    .end local v16    # "f1":Ljava/io/FileOutputStream;
    .local v15, "f1":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    #@188
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    .restart local v18    # "f2":Ljava/io/FileOutputStream;
    :catchall_9
    move-exception v1

    #@189
    move-object/from16 v17, v18

    #@18b
    .end local v18    # "f2":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method

.method private static toCString(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 46
    if-nez p0, :cond_0

    #@4
    .line 47
    return-object v2

    #@5
    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@8
    move-result-object v0

    #@9
    .line 49
    .local v0, "bytes":[B
    array-length v2, v0

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    new-array v1, v2, [B

    #@e
    .line 52
    .local v1, "result":[B
    array-length v2, v0

    #@f
    .line 50
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 53
    array-length v2, v1

    #@13
    add-int/lit8 v2, v2, -0x1

    #@15
    aput-byte v3, v1, v2

    #@17
    .line 54
    return-object v1
.end method
