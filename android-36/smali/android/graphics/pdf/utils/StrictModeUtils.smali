.class public Landroid/graphics/pdf/utils/StrictModeUtils;
.super Ljava/lang/Object;
.source "StrictModeUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StrictModeUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bypass(Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 34
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 36
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 37
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 38
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1e
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    .line 42
    goto :goto_27

    :catchall_1c
    move-exception v1

    goto :goto_2c

    .line 39
    :catch_1e
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1f
    const-string v2, "StrictModeUtils"

    const-string v3, "Error occurred while running the callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 42
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 43
    nop

    .line 44
    return-void

    .line 42
    :goto_2c
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 43
    throw v1
.end method
