.class public Lcom/android/internal/logging/AndroidConfig;
.super Ljava/lang/Object;
.source "AndroidConfig.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_3
    const-string v0, ""

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 38
    .local v0, "rootLogger":Ljava/util/logging/Logger;
    new-instance v1, Lcom/android/internal/logging/AndroidHandler;

    invoke-direct {v1}, Lcom/android/internal/logging/AndroidHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 39
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 42
    const-string v1, "org.apache"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    .line 45
    .end local v0    # "rootLogger":Ljava/util/logging/Logger;
    goto :goto_26

    .line 43
    :catch_22
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    return-void
.end method
