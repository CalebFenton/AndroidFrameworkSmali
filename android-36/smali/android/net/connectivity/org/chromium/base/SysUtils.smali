.class public Landroid/net/connectivity/org/chromium/base/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/SysUtils$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist LOW_MEMORY_DEVICE_THRESHOLD_MB:I = 0x400

.field private static final blacklist TAG:Ljava/lang/String; = "SysUtils"

.field private static blacklist sAmountOfPhysicalMemoryKB:Ljava/lang/Integer;

.field private static blacklist sLowEndDevice:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 24
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist amountOfPhysicalMemoryKB()I
    .registers 1

    .line 99
    sget-object v0, Landroid/net/connectivity/org/chromium/base/SysUtils;->sAmountOfPhysicalMemoryKB:Ljava/lang/Integer;

    if-nez v0, :cond_e

    .line 100
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/SysUtils;->detectAmountOfPhysicalMemoryKB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/SysUtils;->sAmountOfPhysicalMemoryKB:Ljava/lang/Integer;

    .line 102
    :cond_e
    sget-object v0, Landroid/net/connectivity/org/chromium/base/SysUtils;->sAmountOfPhysicalMemoryKB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist detectAmountOfPhysicalMemoryKB()I
    .registers 11

    .line 53
    const-string v0, "SysUtils"

    const-string v1, "^MemTotal:\\s+([0-9]+) kB$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 55
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 56
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_c
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_7f
    .catchall {:try_start_c .. :try_end_13} :catchall_7d

    .line 57
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_13
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_73

    .line 59
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_18
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_24

    .line 61
    const-string v6, "/proc/meminfo lacks a MemTotal entry?"

    invoke-static {v0, v6}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_57

    .line 64
    :cond_24
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 65
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_18

    .line 66
    :cond_2f
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 67
    .local v8, "totalMemoryKB":I
    const/16 v9, 0x400

    if-gt v8, v9, :cond_5e

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid /proc/meminfo total size in kB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_18 .. :try_end_56} :catchall_69

    .line 69
    nop

    .line 73
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "totalMemoryKB":I
    :goto_57
    :try_start_57
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_73

    .line 74
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_7f
    .catchall {:try_start_5a .. :try_end_5d} :catchall_7d

    goto :goto_85

    .line 71
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    .restart local v8    # "totalMemoryKB":I
    :cond_5e
    nop

    .line 73
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_73

    .line 74
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_7f
    .catchall {:try_start_62 .. :try_end_65} :catchall_7d

    .line 77
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 71
    return v8

    .line 57
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "totalMemoryKB":I
    :catchall_69
    move-exception v5

    :try_start_6a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v6

    :try_start_6f
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    :goto_72
    throw v5
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 56
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "pattern":Ljava/util/regex/Pattern;
    .restart local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catchall_73
    move-exception v4

    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v5

    :try_start_79
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_7c
    throw v4
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7d} :catch_7f
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 77
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "pattern":Ljava/util/regex/Pattern;
    .restart local v2    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_7d
    move-exception v0

    goto :goto_8b

    .line 74
    :catch_7f
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    :try_start_80
    const-string v4, "Cannot get total physical size from /proc/meminfo"

    invoke-static {v0, v4, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_7d

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_85
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 78
    nop

    .line 79
    const/4 v0, 0x0

    return v0

    .line 77
    :goto_8b
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 78
    throw v0
.end method

.method private static blacklist detectLowEndDevice()Z
    .registers 5

    .line 132
    nop

    .line 133
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "enable-low-end-device-mode"

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 134
    return v1

    .line 136
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v0

    const-string v2, "disable-low-end-device-mode"

    invoke-virtual {v0, v2}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 137
    return v2

    .line 141
    :cond_1d
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/SysUtils;->amountOfPhysicalMemoryKB()I

    move-result v0

    .line 143
    .local v0, "physicalMemoryKb":I
    if-gtz v0, :cond_25

    .line 144
    const/4 v1, 0x0

    .local v1, "isLowEnd":Z
    goto :goto_2d

    .line 146
    .end local v1    # "isLowEnd":Z
    :cond_25
    div-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-gt v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 149
    .restart local v1    # "isLowEnd":Z
    :goto_2d
    return v1
.end method

.method public static blacklist hasCamera(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 128
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isCurrentlyLowMemory()Z
    .registers 4

    .line 112
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 116
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    :try_start_11
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 117
    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    return v2

    .line 118
    :catch_17
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return v3
.end method

.method public static blacklist isLowEndDevice()Z
    .registers 1

    .line 88
    sget-object v0, Landroid/net/connectivity/org/chromium/base/SysUtils;->sLowEndDevice:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_12

    .line 89
    :cond_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/SysUtils;->detectLowEndDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/SysUtils;->sLowEndDevice:Ljava/lang/Boolean;

    .line 91
    :cond_12
    sget-object v0, Landroid/net/connectivity/org/chromium/base/SysUtils;->sLowEndDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist logPageFaultCountToTracing()V
    .registers 1

    .line 157
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/SysUtilsJni;->get()Landroid/net/connectivity/org/chromium/base/SysUtils$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/SysUtils$Natives;->logPageFaultCountToTracing()V

    .line 158
    return-void
.end method
