.class public Lcom/android/commands/hid/Hid;
.super Ljava/lang/Object;
.source "Hid.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HID"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/commands/hid/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mReader:Lcom/android/commands/hid/Event$Reader;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    new-instance v1, Landroid/util/SparseArray;

    #@5
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    #@a
    .line 73
    :try_start_0
    new-instance v1, Lcom/android/commands/hid/Event$Reader;

    #@c
    new-instance v2, Ljava/io/InputStreamReader;

    #@e
    const-string/jumbo v3, "UTF-8"

    #@11
    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@14
    invoke-direct {v1, v2}, Lcom/android/commands/hid/Event$Reader;-><init>(Ljava/io/InputStreamReader;)V

    #@17
    iput-object v1, p0, Lcom/android/commands/hid/Hid;->mReader:Lcom/android/commands/hid/Event$Reader;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 70
    return-void

    #@1a
    .line 74
    :catch_0
    move-exception v0

    #@1b
    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@20
    throw v1
.end method

.method private static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4
    .line 122
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5
    .line 128
    const-string/jumbo v0, "HID"

    #@8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 129
    if-eqz p1, :cond_0

    #@d
    .line 130
    const-string/jumbo v0, "HID"

    #@10
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 126
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 48
    array-length v4, p0

    #@2
    if-eq v4, v5, :cond_0

    #@4
    .line 49
    invoke-static {}, Lcom/android/commands/hid/Hid;->usage()V

    #@7
    .line 50
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    #@a
    .line 53
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 55
    .local v2, "stream":Ljava/io/InputStream;
    const/4 v4, 0x0

    #@c
    :try_start_0
    aget-object v4, p0, v4

    #@e
    const-string/jumbo v5, "-"

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 56
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@19
    .line 61
    .local v2, "stream":Ljava/io/InputStream;
    :goto_0
    new-instance v4, Lcom/android/commands/hid/Hid;

    #@1b
    invoke-direct {v4, v2}, Lcom/android/commands/hid/Hid;-><init>(Ljava/io/InputStream;)V

    #@1e
    invoke-direct {v4}, Lcom/android/commands/hid/Hid;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 66
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@24
    .line 47
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_1
    return-void

    #@25
    .line 58
    .local v2, "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@27
    const/4 v4, 0x0

    #@28
    aget-object v4, p0, v4

    #@2a
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2d
    .line 59
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    #@2f
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .local v3, "stream":Ljava/io/InputStream;
    move-object v2, v3

    #@33
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    goto :goto_0

    #@34
    .line 62
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@35
    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "HID injection failed."

    #@38
    invoke-static {v4, v0}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3b
    .line 64
    const/4 v4, 0x1

    #@3c
    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    .line 66
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@42
    goto :goto_1

    #@43
    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@44
    .line 66
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@47
    .line 65
    throw v4
.end method

.method private process(Lcom/android/commands/hid/Event;)V
    .locals 4
    .param p1, "e"    # Lcom/android/commands/hid/Event;

    #@0
    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    #@2
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getId()I

    #@5
    move-result v3

    #@6
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@9
    move-result v1

    #@a
    .line 97
    .local v1, "index":I
    if-ltz v1, :cond_2

    #@c
    .line 98
    iget-object v2, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/commands/hid/Device;

    #@14
    .line 99
    .local v0, "d":Lcom/android/commands/hid/Device;
    const-string/jumbo v2, "delay"

    #@17
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 100
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getDuration()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v0, v2}, Lcom/android/commands/hid/Device;->addDelay(I)V

    #@28
    .line 95
    .end local v0    # "d":Lcom/android/commands/hid/Device;
    :goto_0
    return-void

    #@29
    .line 101
    .restart local v0    # "d":Lcom/android/commands/hid/Device;
    :cond_0
    const-string/jumbo v2, "report"

    #@2c
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 102
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getReport()[B

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v2}, Lcom/android/commands/hid/Device;->sendReport([B)V

    #@3d
    goto :goto_0

    #@3e
    .line 104
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "Unknown command \""

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    const-string/jumbo v3, "\". Ignoring event."

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-static {v2}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;)V

    #@60
    goto :goto_0

    #@61
    .line 107
    .end local v0    # "d":Lcom/android/commands/hid/Device;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/commands/hid/Hid;->registerDevice(Lcom/android/commands/hid/Event;)V

    #@64
    goto :goto_0
.end method

.method private registerDevice(Lcom/android/commands/hid/Event;)V
    .locals 7
    .param p1, "e"    # Lcom/android/commands/hid/Event;

    #@0
    .prologue
    .line 112
    const-string/jumbo v2, "register"

    #@3
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 113
    new-instance v2, Ljava/lang/IllegalStateException;

    #@f
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Tried to send command \""

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, "\" to an unregistered device!"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 113
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getId()I

    #@35
    move-result v1

    #@36
    .line 117
    .local v1, "id":I
    new-instance v0, Lcom/android/commands/hid/Device;

    #@38
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getName()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getVendorId()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getProductId()I

    #@43
    move-result v4

    #@44
    .line 118
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getDescriptor()[B

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getReport()[B

    #@4b
    move-result-object v6

    #@4c
    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/android/commands/hid/Device;-><init>(ILjava/lang/String;II[B[B)V

    #@4f
    .line 119
    .local v0, "d":Lcom/android/commands/hid/Device;
    iget-object v2, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    #@51
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@54
    .line 111
    return-void
.end method

.method private run()V
    .locals 4

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    .line 82
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/hid/Hid;->mReader:Lcom/android/commands/hid/Event$Reader;

    #@3
    invoke-virtual {v3}, Lcom/android/commands/hid/Event$Reader;->getNextEvent()Lcom/android/commands/hid/Event;

    #@6
    move-result-object v0

    #@7
    .local v0, "e":Lcom/android/commands/hid/Event;
    if-eqz v0, :cond_0

    #@9
    .line 83
    invoke-direct {p0, v0}, Lcom/android/commands/hid/Hid;->process(Lcom/android/commands/hid/Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    goto :goto_0

    #@d
    .line 85
    .end local v0    # "e":Lcom/android/commands/hid/Event;
    :catch_0
    move-exception v1

    #@e
    .line 86
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "Error reading in events."

    #@11
    invoke-static {v3, v1}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@14
    .line 89
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@1a
    move-result v3

    #@1b
    if-ge v2, v3, :cond_1

    #@1d
    .line 90
    iget-object v3, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/commands/hid/Device;

    #@25
    invoke-virtual {v3}, Lcom/android/commands/hid/Device;->close()V

    #@28
    .line 89
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 79
    :cond_1
    return-void
.end method

.method private static usage()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, "Usage: hid [FILE]"

    #@3
    invoke-static {v0}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;)V

    #@6
    .line 43
    return-void
.end method
