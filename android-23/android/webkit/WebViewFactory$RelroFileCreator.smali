.class Landroid/webkit/WebViewFactory$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 463
    const/4 v2, 0x0

    #@2
    .line 464
    .local v2, "result":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    #@9
    move-result v1

    #@a
    .line 466
    .local v1, "is64Bit":Z
    :try_start_0
    array-length v3, p0

    #@b
    const/4 v4, 0x2

    #@c
    if-ne v3, v4, :cond_0

    #@e
    const/4 v3, 0x0

    #@f
    aget-object v3, p0, v3

    #@11
    if-nez v3, :cond_2

    #@13
    .line 467
    :cond_0
    const-string/jumbo v3, "WebViewFactory"

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "Invalid RelroFileCreator args: "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 484
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->-wrap0()Landroid/webkit/IWebViewUpdateService;

    #@34
    move-result-object v3

    #@35
    invoke-interface {v3, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    .line 489
    :goto_0
    if-nez v2, :cond_1

    #@3a
    const-string/jumbo v3, "WebViewFactory"

    #@3d
    const-string/jumbo v4, "failed to create relro file"

    #@40
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 492
    :cond_1
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@46
    .line 468
    return-void

    #@47
    .line 466
    :cond_2
    const/4 v3, 0x1

    #@48
    :try_start_2
    aget-object v3, p0, v3

    #@4a
    if-eqz v3, :cond_0

    #@4c
    .line 470
    const-string/jumbo v3, "WebViewFactory"

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "RelroFileCreator (64bit = "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    const-string/jumbo v5, "), "

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 471
    const-string/jumbo v5, " 32-bit lib: "

    #@69
    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 471
    const/4 v5, 0x0

    #@6e
    aget-object v5, p0, v5

    #@70
    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    .line 471
    const-string/jumbo v5, ", 64-bit lib: "

    #@77
    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 471
    const/4 v5, 0x1

    #@7c
    aget-object v5, p0, v5

    #@7e
    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 472
    invoke-static {}, Landroid/webkit/WebViewFactory;->-get0()Z

    #@8c
    move-result v3

    #@8d
    if-nez v3, :cond_4

    #@8f
    .line 473
    const-string/jumbo v3, "WebViewFactory"

    #@92
    const-string/jumbo v4, "can\'t create relro file; address space not reserved"

    #@95
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@98
    .line 484
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->-wrap0()Landroid/webkit/IWebViewUpdateService;

    #@9b
    move-result-object v3

    #@9c
    invoke-interface {v3, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@9f
    .line 489
    :goto_1
    if-nez v2, :cond_3

    #@a1
    const-string/jumbo v3, "WebViewFactory"

    #@a4
    const-string/jumbo v4, "failed to create relro file"

    #@a7
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 492
    :cond_3
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@ad
    .line 474
    return-void

    #@ae
    .line 485
    :catch_0
    move-exception v0

    #@af
    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WebViewFactory"

    #@b2
    const-string/jumbo v4, "error notifying update service"

    #@b5
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b8
    goto :goto_0

    #@b9
    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@ba
    .line 486
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WebViewFactory"

    #@bd
    const-string/jumbo v4, "error notifying update service"

    #@c0
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c3
    goto :goto_1

    #@c4
    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v3, 0x0

    #@c5
    :try_start_4
    aget-object v3, p0, v3

    #@c7
    .line 477
    const/4 v4, 0x1

    #@c8
    aget-object v4, p0, v4

    #@ca
    .line 478
    const-string/jumbo v5, "/data/misc/shared_relro/libwebviewchromium32.relro"

    #@cd
    .line 479
    const-string/jumbo v6, "/data/misc/shared_relro/libwebviewchromium64.relro"

    #@d0
    .line 476
    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewFactory;->-wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d3
    move-result v2

    #@d4
    .line 480
    .local v2, "result":Z
    if-eqz v2, :cond_5

    #@d6
    .line 484
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/webkit/WebViewFactory;->-wrap0()Landroid/webkit/IWebViewUpdateService;

    #@d9
    move-result-object v3

    #@da
    invoke-interface {v3, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    #@dd
    .line 489
    :goto_2
    if-nez v2, :cond_6

    #@df
    const-string/jumbo v3, "WebViewFactory"

    #@e2
    const-string/jumbo v4, "failed to create relro file"

    #@e5
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e8
    .line 492
    :cond_6
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@eb
    .line 462
    return-void

    #@ec
    .line 485
    :catch_2
    move-exception v0

    #@ed
    .line 486
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WebViewFactory"

    #@f0
    const-string/jumbo v4, "error notifying update service"

    #@f3
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f6
    goto :goto_2

    #@f7
    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v2, "result":Z
    :catchall_0
    move-exception v3

    #@f8
    .line 484
    :try_start_6
    invoke-static {}, Landroid/webkit/WebViewFactory;->-wrap0()Landroid/webkit/IWebViewUpdateService;

    #@fb
    move-result-object v4

    #@fc
    invoke-interface {v4, v1, v2}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    #@ff
    .line 489
    :goto_3
    if-nez v2, :cond_7

    #@101
    const-string/jumbo v4, "WebViewFactory"

    #@104
    const-string/jumbo v5, "failed to create relro file"

    #@107
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 492
    :cond_7
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@10d
    .line 481
    throw v3

    #@10e
    .line 485
    :catch_3
    move-exception v0

    #@10f
    .line 486
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WebViewFactory"

    #@112
    const-string/jumbo v5, "error notifying update service"

    #@115
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@118
    goto :goto_3
.end method
