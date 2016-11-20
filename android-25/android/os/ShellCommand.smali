.class public abstract Landroid/os/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mErr:Ljava/io/FileDescriptor;

.field private mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mFileErr:Ljava/io/FileOutputStream;

.field private mFileIn:Ljava/io/FileInputStream;

.field private mFileOut:Ljava/io/FileOutputStream;

.field private mIn:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private mOut:Ljava/io/FileDescriptor;

.field private mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mTarget:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I
    .locals 13
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 80
    if-eqz p5, :cond_2

    #@2
    move-object/from16 v0, p5

    #@4
    array-length v1, v0

    #@5
    if-lez v1, :cond_2

    #@7
    .line 81
    const/4 v1, 0x0

    #@8
    aget-object v8, p5, v1

    #@a
    .line 82
    .local v8, "cmd":Ljava/lang/String;
    const/4 v7, 0x1

    #@b
    .end local v8    # "cmd":Ljava/lang/String;
    .local v7, "start":I
    :goto_0
    move-object v1, p0

    #@c
    move-object v2, p1

    #@d
    move-object v3, p2

    #@e
    move-object/from16 v4, p3

    #@10
    move-object/from16 v5, p4

    #@12
    move-object/from16 v6, p5

    #@14
    .line 87
    invoke-virtual/range {v1 .. v7}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    #@17
    .line 88
    iput-object v8, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    #@19
    .line 89
    move-object/from16 v0, p6

    #@1b
    iput-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1d
    .line 92
    const/4 v12, -0x1

    #@1e
    .line 94
    .local v12, "res":I
    :try_start_0
    iget-object v1, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    #@20
    invoke-virtual {p0, v1}, Landroid/os/ShellCommand;->onCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v12

    #@24
    .line 112
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 113
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@2d
    .line 115
    :cond_0
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 116
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@33
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@36
    .line 119
    :cond_1
    iget-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    #@38
    const/4 v2, 0x0

    #@39
    invoke-virtual {v1, v12, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@3c
    .line 122
    :goto_1
    return v12

    #@3d
    .line 84
    .end local v7    # "start":I
    .end local v12    # "res":I
    :cond_2
    const/4 v8, 0x0

    #@3e
    .line 85
    .local v8, "cmd":Ljava/lang/String;
    const/4 v7, 0x0

    #@3f
    .restart local v7    # "start":I
    goto :goto_0

    #@40
    .line 101
    .end local v8    # "cmd":Ljava/lang/String;
    .restart local v12    # "res":I
    :catch_0
    move-exception v10

    #@41
    .line 106
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    #@44
    move-result-object v11

    #@45
    .line 107
    .local v11, "eout":Ljava/io/PrintWriter;
    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    #@48
    .line 108
    const-string/jumbo v1, "Exception occurred while dumping:"

    #@4b
    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 109
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 112
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@53
    if-eqz v1, :cond_3

    #@55
    .line 113
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@57
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@5a
    .line 115
    :cond_3
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@5c
    if-eqz v1, :cond_4

    #@5e
    .line 116
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@60
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@63
    .line 119
    :cond_4
    iget-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    #@65
    const/4 v2, 0x0

    #@66
    invoke-virtual {v1, v12, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@69
    goto :goto_1

    #@6a
    .line 96
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v11    # "eout":Ljava/io/PrintWriter;
    :catch_1
    move-exception v9

    #@6b
    .line 97
    .local v9, "e":Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    #@6e
    move-result-object v11

    #@6f
    .line 98
    .restart local v11    # "eout":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v2, "Security exception: "

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 99
    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    #@8d
    .line 100
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@90
    .line 112
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@92
    if-eqz v1, :cond_5

    #@94
    .line 113
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@96
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@99
    .line 115
    :cond_5
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@9b
    if-eqz v1, :cond_6

    #@9d
    .line 116
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@9f
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@a2
    .line 119
    :cond_6
    iget-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    #@a4
    const/4 v2, 0x0

    #@a5
    invoke-virtual {v1, v12, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@a8
    goto :goto_1

    #@a9
    .line 110
    .end local v9    # "e":Ljava/lang/SecurityException;
    .end local v11    # "eout":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    #@aa
    .line 112
    iget-object v2, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@ac
    if-eqz v2, :cond_7

    #@ae
    .line 113
    iget-object v2, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@b0
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@b3
    .line 115
    :cond_7
    iget-object v2, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@b5
    if-eqz v2, :cond_8

    #@b7
    .line 116
    iget-object v2, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@b9
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@bc
    .line 119
    :cond_8
    iget-object v2, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    #@be
    const/4 v3, 0x0

    #@bf
    invoke-virtual {v2, v12, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@c2
    .line 110
    throw v1
.end method

.method public getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 183
    new-instance v0, Ljava/io/BufferedInputStream;

    #@6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@d
    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    #@f
    .line 185
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    #@11
    return-object v0
.end method

.method public getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 160
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 162
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 163
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawErrorStream()Ljava/io/OutputStream;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@16
    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@18
    .line 165
    :cond_1
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@1a
    return-object v0
.end method

.method public getNextArg()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 226
    iget-object v1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 227
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@7
    .line 228
    .local v0, "arg":Ljava/lang/String;
    iput-object v3, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@9
    .line 229
    return-object v0

    #@a
    .line 230
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@c
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@e
    array-length v2, v2

    #@f
    if-ge v1, v2, :cond_1

    #@11
    .line 231
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@13
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@15
    add-int/lit8 v3, v2, 0x1

    #@17
    iput v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@19
    aget-object v1, v1, v2

    #@1b
    return-object v1

    #@1c
    .line 233
    :cond_1
    return-object v3
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 253
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 254
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@8
    iget v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@a
    add-int/lit8 v3, v3, -0x1

    #@c
    aget-object v1, v2, v3

    #@e
    .line 255
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Argument expected after \""

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "\""

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 257
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNextOption()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    .line 193
    iget-object v2, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 194
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@9
    iget v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@b
    add-int/lit8 v3, v3, -0x1

    #@d
    aget-object v1, v2, v3

    #@f
    .line 195
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "No argument expected after \""

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "\""

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 197
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@32
    iget-object v3, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@34
    array-length v3, v3

    #@35
    if-lt v2, v3, :cond_1

    #@37
    .line 198
    return-object v4

    #@38
    .line 200
    :cond_1
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@3a
    iget v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@3c
    aget-object v0, v2, v3

    #@3e
    .line 201
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "-"

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_2

    #@47
    .line 202
    return-object v4

    #@48
    .line 204
    :cond_2
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    iput v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@4e
    .line 205
    const-string/jumbo v2, "--"

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_3

    #@57
    .line 206
    return-object v4

    #@58
    .line 208
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5b
    move-result v2

    #@5c
    if-le v2, v6, :cond_5

    #@5e
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v2

    #@62
    const/16 v3, 0x2d

    #@64
    if-eq v2, v3, :cond_5

    #@66
    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@69
    move-result v2

    #@6a
    if-le v2, v5, :cond_4

    #@6c
    .line 210
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@72
    .line 211
    const/4 v2, 0x0

    #@73
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    return-object v2

    #@78
    .line 213
    :cond_4
    iput-object v4, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@7a
    .line 214
    return-object v0

    #@7b
    .line 217
    :cond_5
    iput-object v4, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@7d
    .line 218
    return-object v0
.end method

.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 140
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@d
    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@f
    .line 142
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@11
    return-object v0
.end method

.method public getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 150
    new-instance v0, Ljava/io/FileOutputStream;

    #@6
    iget-object v1, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@b
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    #@d
    .line 152
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    #@f
    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 173
    new-instance v0, Ljava/io/FileInputStream;

    #@6
    iget-object v1, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@b
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    #@d
    .line 175
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    #@f
    return-object v0
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 130
    new-instance v0, Ljava/io/FileOutputStream;

    #@6
    iget-object v1, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@b
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    #@d
    .line 132
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    #@f
    return-object v0
.end method

.method public handleDefaultCommands(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 261
    const-string/jumbo v1, "dump"

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 262
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    new-array v0, v1, [Ljava/lang/String;

    #@11
    .line 263
    .local v0, "newArgs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@13
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@15
    array-length v2, v2

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    const/4 v3, 0x1

    #@19
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 264
    iget-object v1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    #@1e
    iget-object v2, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    #@20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@27
    .line 265
    return v4

    #@28
    .line 266
    .end local v0    # "newArgs":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    #@2a
    const-string/jumbo v1, "help"

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_1

    #@33
    const-string/jumbo v1, "-h"

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->onHelp()V

    #@3f
    .line 271
    :goto_0
    const/4 v1, -0x1

    #@40
    return v1

    #@41
    .line 269
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@44
    move-result-object v1

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "Unknown command: "

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    goto :goto_0
.end method

.method public init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "firstArgPos"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 59
    iput-object p1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    #@3
    .line 60
    iput-object p2, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    #@5
    .line 61
    iput-object p3, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    #@7
    .line 62
    iput-object p4, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    #@9
    .line 63
    iput-object p5, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@b
    .line 64
    iput-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    #@d
    .line 65
    iput-object v0, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    #@f
    .line 66
    iput p6, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@11
    .line 67
    iput-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@13
    .line 68
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    #@15
    .line 69
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    #@17
    .line 70
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    #@19
    .line 71
    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@1b
    .line 72
    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    #@1d
    .line 73
    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    #@1f
    .line 58
    return-void
.end method

.method public abstract onCommand(Ljava/lang/String;)I
.end method

.method public abstract onHelp()V
.end method

.method public peekNextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 238
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 239
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 240
    :cond_0
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@a
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 241
    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    #@11
    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    #@13
    aget-object v0, v0, v1

    #@15
    return-object v0

    #@16
    .line 243
    :cond_1
    return-object v2
.end method
