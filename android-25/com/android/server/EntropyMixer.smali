.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EntropyMixer$1;,
        Lcom/android/server/EntropyMixer$2;
    }
.end annotation


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final hwRandomDevice:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/EntropyMixer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/EntropyMixer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/EntropyMixer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    #@6
    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@9
    move-result-wide v0

    #@a
    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    #@c
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "/entropy.dat"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "/dev/urandom"

    #@1b
    const-string/jumbo v2, "/dev/hw_random"

    #@1e
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entropyFile"    # Ljava/lang/String;
    .param p3, "randomDevice"    # Ljava/lang/String;
    .param p4, "hwRandomDevice"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 73
    new-instance v1, Lcom/android/server/EntropyMixer$1;

    #@5
    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;)V

    #@8
    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    #@a
    .line 86
    new-instance v1, Lcom/android/server/EntropyMixer$2;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    #@f
    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@11
    .line 103
    if-nez p3, :cond_0

    #@13
    new-instance v1, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v2, "randomDevice"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 104
    :cond_0
    if-nez p4, :cond_1

    #@1e
    new-instance v1, Ljava/lang/NullPointerException;

    #@20
    const-string/jumbo v2, "hwRandomDevice"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 105
    :cond_1
    if-nez p2, :cond_2

    #@29
    new-instance v1, Ljava/lang/NullPointerException;

    #@2b
    const-string/jumbo v2, "entropyFile"

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 107
    :cond_2
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    #@34
    .line 108
    iput-object p4, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    #@36
    .line 109
    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    #@38
    .line 110
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    #@3b
    .line 111
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    #@3e
    .line 112
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    #@41
    .line 113
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    #@44
    .line 114
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    #@47
    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    #@49
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    #@4c
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@4f
    .line 116
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    #@52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@55
    .line 117
    const-string/jumbo v1, "android.intent.action.REBOOT"

    #@58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5b
    .line 118
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@5d
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@60
    .line 102
    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .locals 6

    #@0
    .prologue
    .line 160
    const/4 v1, 0x0

    #@1
    .line 162
    .local v1, "out":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    #@3
    new-instance v3, Ljava/io/FileOutputStream;

    #@5
    iget-object v4, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    #@7
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@a
    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 163
    .end local v1    # "out":Ljava/io/PrintWriter;
    .local v2, "out":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v3, "Copyright (C) 2009 The Android Open Source Project"

    #@10
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 164
    const-string/jumbo v3, "All Your Randomness Are Belong To Us"

    #@16
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 165
    sget-wide v4, Lcom/android/server/EntropyMixer;->START_TIME:J

    #@1b
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    #@1e
    .line 166
    sget-wide v4, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    #@20
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    #@23
    .line 167
    const-string/jumbo v3, "ro.serialno"

    #@26
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d
    .line 168
    const-string/jumbo v3, "ro.bootmode"

    #@30
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 169
    const-string/jumbo v3, "ro.baseband"

    #@3a
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 170
    const-string/jumbo v3, "ro.carrier"

    #@44
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 171
    const-string/jumbo v3, "ro.bootloader"

    #@4e
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 172
    const-string/jumbo v3, "ro.hardware"

    #@58
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 173
    const-string/jumbo v3, "ro.revision"

    #@62
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 174
    const-string/jumbo v3, "ro.build.fingerprint"

    #@6c
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 175
    new-instance v3, Ljava/lang/Object;

    #@75
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@78
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    #@7b
    move-result v3

    #@7c
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@7f
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@82
    move-result-wide v4

    #@83
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    #@86
    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@89
    move-result-wide v4

    #@8a
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8d
    .line 181
    if-eqz v2, :cond_0

    #@8f
    .line 182
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    #@92
    :cond_0
    move-object v1, v2

    #@93
    .line 159
    .end local v2    # "out":Ljava/io/PrintWriter;
    :cond_1
    :goto_0
    return-void

    #@94
    .line 178
    .restart local v1    # "out":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    #@95
    .line 179
    .end local v1    # "out":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v3, "EntropyMixer"

    #@98
    const-string/jumbo v4, "Unable to add device specific data to the entropy pool"

    #@9b
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    .line 181
    if-eqz v1, :cond_1

    #@a0
    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    #@a3
    goto :goto_0

    #@a4
    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@a5
    .line 181
    :goto_2
    if-eqz v1, :cond_2

    #@a7
    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    #@aa
    .line 180
    :cond_2
    throw v3

    #@ab
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    #@ac
    move-object v1, v2

    #@ad
    .end local v2    # "out":Ljava/io/PrintWriter;
    .local v1, "out":Ljava/io/PrintWriter;
    goto :goto_2

    #@ae
    .line 178
    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    #@af
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@b0
    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private addHwRandomEntropy()V
    .locals 5

    #@0
    .prologue
    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    #@2
    invoke-static {v2}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v2, v3, v4}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V

    #@c
    .line 193
    const-string/jumbo v2, "EntropyMixer"

    #@f
    const-string/jumbo v3, "Added HW RNG output to entropy pool"

    #@12
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 190
    :goto_0
    return-void

    #@16
    .line 196
    :catch_0
    move-exception v0

    #@17
    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "EntropyMixer"

    #@1a
    const-string/jumbo v3, "Failed to add HW RNG output to entropy pool"

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0

    #@21
    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@22
    .local v1, "ignored":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method private static getSystemDir()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 202
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 203
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@6
    const-string/jumbo v2, "system"

    #@9
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 204
    .local v1, "systemDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 205
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    return-object v2
.end method

.method private loadInitialEntropy()V
    .locals 5

    #@0
    .prologue
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    #@2
    invoke-static {v2}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v2, v3, v4}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 126
    :goto_0
    return-void

    #@d
    .line 131
    :catch_0
    move-exception v1

    #@e
    .line 132
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "EntropyMixer"

    #@11
    const-string/jumbo v3, "Failure loading existing entropy file"

    #@14
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0

    #@18
    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@19
    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v2, "EntropyMixer"

    #@1c
    const-string/jumbo v3, "No existing entropy file -- first boot?"

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method private scheduleEntropyWriter()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 122
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 123
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    #@8
    const-wide/32 v2, 0xa4cb80

    #@b
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@e
    .line 121
    return-void
.end method

.method private writeEntropy()V
    .locals 4

    #@0
    .prologue
    .line 138
    :try_start_0
    const-string/jumbo v1, "EntropyMixer"

    #@3
    const-string/jumbo v2, "Writing entropy..."

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 139
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    #@b
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    #@11
    const/4 v3, 0x1

    #@12
    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 136
    :goto_0
    return-void

    #@16
    .line 140
    :catch_0
    move-exception v0

    #@17
    .line 141
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "EntropyMixer"

    #@1a
    const-string/jumbo v2, "Unable to write entropy"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method
