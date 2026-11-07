.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 63
    const-string v0, "failed to create relro file"

    const-string v1, "error notifying update service"

    const/4 v2, 0x0

    .line 64
    .local v2, "result":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v3

    .line 66
    .local v3, "is64Bit":Z
    const/4 v4, 0x0

    :try_start_e
    array-length v5, p0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d0

    aget-object v5, p0, v4

    if-eqz v5, :cond_d0

    const/4 v5, 0x1

    aget-object v6, p0, v5

    if-nez v6, :cond_1d

    goto/16 :goto_d0

    .line 70
    :cond_1d
    aget-object v6, p0, v4

    .line 71
    .local v6, "packageName":Ljava/lang/String;
    aget-object v5, p0, v5

    .line 72
    .local v5, "libraryFileName":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RelroFileCreator (64bit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetsAddressSpaceReserved()Z

    move-result v7

    if-nez v7, :cond_89

    .line 75
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "can\'t create relro file; address space not reserved"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_119

    .line 90
    :try_start_5e
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_73

    .line 93
    :cond_6c
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_73} :catch_74

    .line 97
    :goto_73
    goto :goto_7c

    .line 95
    :catch_74
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_7c
    if-nez v2, :cond_85

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_85
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 76
    return-void

    .line 78
    :cond_89
    :try_start_89
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v7, v6, v8, v9}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v7

    .line 82
    .local v7, "apk":Landroid/app/LoadedApk;
    nop

    .line 83
    if-eqz v3, :cond_99

    const-string v8, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_9b

    .line 84
    :cond_99
    const-string v8, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 85
    :goto_9b
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 82
    invoke-static {v5, v8, v9}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v8
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_119

    .line 86
    .end local v2    # "result":Z
    .local v8, "result":Z
    nop

    .line 90
    .end local v5    # "libraryFileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "apk":Landroid/app/LoadedApk;
    :try_start_a4
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_b9

    .line 93
    :cond_b2
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b9} :catch_ba

    .line 97
    :goto_b9
    goto :goto_c2

    .line 95
    :catch_ba
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c2
    if-nez v8, :cond_cb

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_cb
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 103
    nop

    .line 104
    return-void

    .line 67
    .end local v8    # "result":Z
    .local v2, "result":Z
    :cond_d0
    :goto_d0
    :try_start_d0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid RelroFileCreator args: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_d0 .. :try_end_ee} :catchall_119

    .line 90
    :try_start_ee
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_103

    .line 93
    :cond_fc
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_103} :catch_104

    .line 97
    :goto_103
    goto :goto_10c

    .line 95
    :catch_104
    move-exception v5

    .line 96
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_10c
    if-nez v2, :cond_115

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_115
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 68
    return-void

    .line 89
    :catchall_119
    move-exception v5

    .line 90
    :try_start_11a
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v6

    if-eqz v6, :cond_128

    .line 91
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_12f

    .line 93
    :cond_128
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    invoke-interface {v6}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_12f} :catch_130

    .line 97
    :goto_12f
    goto :goto_138

    .line 95
    :catch_130
    move-exception v6

    .line 96
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_138
    if-nez v2, :cond_141

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_141
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 103
    throw v5
.end method
