.class public Lcom/android/internal/logging/AndroidConfig;
.super Ljava/lang/Object;
.source "AndroidConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    :try_start_0
    const-string/jumbo v2, ""

    #@6
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v1

    #@a
    .line 38
    .local v1, "rootLogger":Ljava/util/logging/Logger;
    new-instance v2, Lcom/android/internal/logging/AndroidHandler;

    #@c
    invoke-direct {v2}, Lcom/android/internal/logging/AndroidHandler;-><init>()V

    #@f
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    #@12
    .line 39
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@14
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@17
    .line 42
    const-string/jumbo v2, "org.apache"

    #@1a
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@1d
    move-result-object v2

    #@1e
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@20
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 33
    .end local v1    # "rootLogger":Ljava/util/logging/Logger;
    :goto_0
    return-void

    #@24
    .line 43
    :catch_0
    move-exception v0

    #@25
    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@28
    goto :goto_0
.end method
