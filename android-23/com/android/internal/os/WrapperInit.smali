.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p0, "invokeWith"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 105
    .local v1, "command":Ljava/lang/StringBuilder;
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 106
    const-string/jumbo v0, "/system/bin/app_process64"

    #@10
    .line 110
    .local v0, "appProcess":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 113
    const-string/jumbo v2, " /system/bin --application"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 114
    if-eqz p1, :cond_0

    #@1e
    .line 115
    const-string/jumbo v2, " \'--nice-name="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, "\'"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 117
    :cond_0
    const-string/jumbo v2, " com.android.internal.os.WrapperInit "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 118
    if-eqz p4, :cond_2

    #@37
    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    #@3a
    move-result v2

    #@3b
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 120
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    .line 121
    invoke-static {v1, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    #@47
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    #@4e
    .line 101
    return-void

    #@4f
    .line 108
    .end local v0    # "appProcess":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "/system/bin/app_process32"

    #@52
    .restart local v0    # "appProcess":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 118
    :cond_2
    const/4 v2, 0x0

    #@54
    goto :goto_1
.end method

.method public static execStandalone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "invokeWith"    # Ljava/lang/String;
    .param p1, "classPath"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 137
    .local v0, "command":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " /system/bin/dalvikvm -classpath \'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 138
    const-string/jumbo v1, "\' "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 139
    invoke-static {v0, p3}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    #@1c
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    #@23
    .line 135
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const/4 v7, 0x0

    #@1
    :try_start_0
    aget-object v7, p0, v7

    #@3
    const/16 v8, 0xa

    #@5
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@8
    move-result v3

    #@9
    .line 60
    .local v3, "fdNum":I
    const/4 v7, 0x1

    #@a
    aget-object v7, p0, v7

    #@c
    const/16 v8, 0xa

    #@e
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_1

    #@11
    move-result v6

    #@12
    .line 64
    .local v6, "targetSdkVersion":I
    if-eqz v3, :cond_0

    #@14
    .line 66
    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    #@16
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@19
    .line 67
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@1c
    .line 68
    new-instance v4, Ljava/io/DataOutputStream;

    #@1e
    new-instance v7, Ljava/io/FileOutputStream;

    #@20
    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@23
    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@26
    .line 69
    .local v4, "os":Ljava/io/DataOutputStream;
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@29
    move-result v7

    #@2a
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2d
    .line 70
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    #@30
    .line 71
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_1

    #@33
    .line 78
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    #@36
    .line 81
    array-length v7, p0

    #@37
    add-int/lit8 v7, v7, -0x2

    #@39
    new-array v5, v7, [Ljava/lang/String;

    #@3b
    .line 82
    .local v5, "runtimeArgs":[Ljava/lang/String;
    array-length v7, v5

    #@3c
    const/4 v8, 0x2

    #@3d
    const/4 v9, 0x0

    #@3e
    invoke-static {p0, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@41
    .line 83
    invoke-static {v6, v5}, Lcom/android/internal/os/RuntimeInit;->wrapperInit(I[Ljava/lang/String;)V

    #@44
    .line 56
    .end local v3    # "fdNum":I
    .end local v5    # "runtimeArgs":[Ljava/lang/String;
    .end local v6    # "targetSdkVersion":I
    :goto_1
    return-void

    #@45
    .line 72
    .restart local v3    # "fdNum":I
    .restart local v6    # "targetSdkVersion":I
    :catch_0
    move-exception v1

    #@46
    .line 73
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v7, "AndroidRuntime"

    #@49
    const-string/jumbo v8, "Could not write pid of wrapped process to Zygote pipe."

    #@4c
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_1

    #@4f
    goto :goto_0

    #@50
    .line 84
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "fdNum":I
    .end local v6    # "targetSdkVersion":I
    :catch_1
    move-exception v0

    #@51
    .line 85
    .local v0, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    #@54
    goto :goto_1
.end method
