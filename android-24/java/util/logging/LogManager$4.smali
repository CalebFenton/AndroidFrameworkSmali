.class Ljava/util/logging/LogManager$4;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;

.field final synthetic val$handlersPropertyName:Ljava/lang/String;

.field final synthetic val$logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "val$handlersPropertyName"    # Ljava/lang/String;
    .param p3, "val$logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 767
    iput-object p1, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    #@2
    iput-object p2, p0, Ljava/util/logging/LogManager$4;->val$handlersPropertyName:Ljava/lang/String;

    #@4
    iput-object p3, p0, Ljava/util/logging/LogManager$4;->val$logger:Ljava/util/logging/Logger;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 769
    iget-object v8, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    #@3
    iget-object v9, p0, Ljava/util/logging/LogManager$4;->val$handlersPropertyName:Ljava/lang/String;

    #@5
    invoke-static {v8, v9}, Ljava/util/logging/LogManager;->-wrap1(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 770
    .local v6, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    array-length v8, v6

    #@b
    if-ge v3, v8, :cond_2

    #@d
    .line 771
    aget-object v7, v6, v3

    #@f
    .line 773
    .local v7, "word":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/util/logging/LogManager;->-wrap0(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 774
    .local v0, "clz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/util/logging/Handler;

    #@19
    .line 777
    .local v2, "hdl":Ljava/util/logging/Handler;
    iget-object v8, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    #@1b
    new-instance v9, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    const-string/jumbo v10, ".level"

    #@27
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v9

    #@2b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v8, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 778
    .local v5, "levs":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@35
    .line 779
    invoke-static {v5}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    #@38
    move-result-object v4

    #@39
    .line 780
    .local v4, "l":Ljava/util/logging/Level;
    if-eqz v4, :cond_1

    #@3b
    .line 781
    invoke-virtual {v2, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    #@3e
    .line 788
    .end local v4    # "l":Ljava/util/logging/Level;
    :cond_0
    :goto_1
    iget-object v8, p0, Ljava/util/logging/LogManager$4;->val$logger:Ljava/util/logging/Logger;

    #@40
    invoke-virtual {v8, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    #@43
    .line 770
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v2    # "hdl":Ljava/util/logging/Handler;
    .end local v5    # "levs":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_0

    #@46
    .line 784
    .restart local v0    # "clz":Ljava/lang/Class;
    .restart local v2    # "hdl":Ljava/util/logging/Handler;
    .restart local v4    # "l":Ljava/util/logging/Level;
    .restart local v5    # "levs":Ljava/lang/String;
    :cond_1
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "Can\'t set level for "

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    goto :goto_1

    #@60
    .line 789
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v2    # "hdl":Ljava/util/logging/Handler;
    .end local v4    # "l":Ljava/util/logging/Level;
    .end local v5    # "levs":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@61
    .line 790
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@63
    new-instance v9, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v10, "Can\'t load log handler \""

    #@6b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    const-string/jumbo v10, "\""

    #@76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@81
    .line 791
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@83
    new-instance v9, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v10, ""

    #@8b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9a
    .line 792
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@9d
    goto :goto_2

    #@9e
    .line 795
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v7    # "word":Ljava/lang/String;
    :cond_2
    return-object v11
.end method
