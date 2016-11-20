.class final Ljava/util/logging/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 175
    const/4 v0, 0x0

    #@3
    .line 177
    .local v0, "cname":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "java.util.logging.manager"

    #@6
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 178
    .local v0, "cname":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 179
    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap0(Ljava/lang/String;)Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/util/logging/LogManager;

    #@16
    invoke-static {v2}, Ljava/util/logging/LogManager;->-set2(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 185
    .end local v0    # "cname":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@1c
    move-result-object v2

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 186
    new-instance v2, Ljava/util/logging/LogManager;

    #@21
    invoke-direct {v2}, Ljava/util/logging/LogManager;-><init>()V

    #@24
    invoke-static {v2}, Ljava/util/logging/LogManager;->-set2(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager;

    #@27
    .line 190
    :cond_1
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@2a
    move-result-object v2

    #@2b
    new-instance v3, Ljava/util/logging/LogManager$RootLogger;

    #@2d
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@34
    invoke-direct {v3, v4, v6}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V

    #@37
    invoke-static {v2, v3}, Ljava/util/logging/LogManager;->-set3(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;

    #@3a
    .line 195
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@41
    move-result-object v3

    #@42
    invoke-static {v3}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    #@49
    .line 196
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v2}, Ljava/util/logging/LogManager;->-get4(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    #@50
    move-result-object v2

    #@51
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@54
    move-result-object v3

    #@55
    invoke-static {v3}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    #@5c
    .line 197
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v2}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    #@63
    move-result-object v2

    #@64
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@67
    move-result-object v3

    #@68
    invoke-static {v3}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    #@6f
    .line 201
    sget-object v2, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@71
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLogManager(Ljava/util/logging/LogManager;)V

    #@78
    .line 204
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@7b
    move-result-object v2

    #@7c
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@7e
    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    #@81
    .line 205
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@84
    move-result-object v2

    #@85
    invoke-static {v2}, Ljava/util/logging/LogManager;->-get4(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    #@88
    move-result-object v2

    #@89
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@8b
    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    #@8e
    .line 206
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@91
    move-result-object v2

    #@92
    invoke-static {v2}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    #@95
    move-result-object v2

    #@96
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@98
    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    #@9b
    .line 211
    return-object v6

    #@9c
    .line 181
    :catch_0
    move-exception v1

    #@9d
    .line 182
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9f
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v4, "Could not load Logmanager \""

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    const-string/jumbo v4, "\""

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bd
    .line 183
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@c0
    goto/16 :goto_0
.end method
