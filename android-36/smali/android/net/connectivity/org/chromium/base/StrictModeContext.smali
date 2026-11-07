.class public Landroid/net/connectivity/org/chromium/base/StrictModeContext;
.super Ljava/lang/Object;
.source "StrictModeContext.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowAllThreadPolicies()Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .registers 4

    .line 79
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_a

    .line 80
    new-instance v0, Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    .line 82
    :cond_a
    const-string v0, "StrictModeContext.allowAllThreadPolicies"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 83
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 84
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 85
    new-instance v2, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_25

    .line 86
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 85
    :cond_24
    return-object v2

    .line 82
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_30

    :try_start_28
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v1
.end method

.method public static blacklist allowAllVmPolicies()Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .registers 4

    .line 63
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_a

    .line 64
    new-instance v0, Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    .line 66
    :cond_a
    const-string v0, "StrictModeContext.allowAllVmPolicies"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 67
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 68
    .local v1, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    sget-object v2, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 69
    new-instance v2, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$VmPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_25

    .line 70
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 69
    :cond_24
    return-object v2

    .line 66
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_30

    :try_start_28
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v1
.end method

.method public static blacklist allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .registers 4

    .line 102
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_a

    .line 103
    new-instance v0, Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    .line 105
    :cond_a
    const-string v0, "StrictModeContext.allowDiskReads"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 106
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 107
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 108
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 107
    :cond_1f
    return-object v2

    .line 105
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_20
    move-exception v1

    if-eqz v0, :cond_2b

    :try_start_23
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw v1
.end method

.method public static blacklist allowDiskWrites()Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .registers 4

    .line 91
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_a

    .line 92
    new-instance v0, Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    .line 94
    :cond_a
    const-string v0, "StrictModeContext.allowDiskWrites"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 95
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 96
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 97
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 96
    :cond_1f
    return-object v2

    .line 94
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_20
    move-exception v1

    if-eqz v0, :cond_2b

    :try_start_23
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw v1
.end method

.method public static blacklist allowSlowCalls()Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .registers 4

    .line 113
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_a

    .line 114
    new-instance v0, Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    .line 116
    :cond_a
    const-string v0, "StrictModeContext.allowSlowCalls"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 117
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 118
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 119
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 118
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 120
    new-instance v2, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_30

    .line 121
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 120
    :cond_2f
    return-object v2

    .line 116
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_30
    move-exception v1

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v1
.end method

.method public static blacklist allowUnbufferedIo()Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .registers 4

    .line 130
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_a

    .line 131
    new-instance v0, Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    .line 133
    :cond_a
    const-string v0, "StrictModeContext.allowUnbufferedIo"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 134
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 135
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    nop

    .line 136
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 138
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 141
    new-instance v2, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_31

    .line 142
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 141
    :cond_30
    return-object v2

    .line 133
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_31
    move-exception v1

    if-eqz v0, :cond_3c

    :try_start_34
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 146
    return-void
.end method
