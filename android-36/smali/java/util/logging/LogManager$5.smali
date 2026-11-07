.class Ljava/util/logging/LogManager$5;
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
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;

.field final synthetic blacklist val$handlersPropertyName:Ljava/lang/String;

.field final synthetic blacklist val$logger:Ljava/util/logging/Logger;


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 938
    iput-object p1, p0, Ljava/util/logging/LogManager$5;->this$0:Ljava/util/logging/LogManager;

    iput-object p2, p0, Ljava/util/logging/LogManager$5;->val$handlersPropertyName:Ljava/lang/String;

    iput-object p3, p0, Ljava/util/logging/LogManager$5;->val$logger:Ljava/util/logging/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 11

    .line 941
    iget-object v0, p0, Ljava/util/logging/LogManager$5;->this$0:Ljava/util/logging/LogManager;

    iget-object v1, p0, Ljava/util/logging/LogManager$5;->val$handlersPropertyName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/logging/LogManager;->-$$Nest$mparseClassNames(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_99

    .line 943
    aget-object v2, v0, v1

    .line 947
    .local v2, "word":Ljava/lang/String;
    :try_start_e
    invoke-static {v2}, Ljava/util/logging/LogManager;->-$$Nest$smgetClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 948
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Handler;

    .line 951
    .local v4, "hdl":Ljava/util/logging/Handler;
    iget-object v5, p0, Ljava/util/logging/LogManager$5;->this$0:Ljava/util/logging/LogManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".level"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 952
    .local v5, "levs":Ljava/lang/String;
    if-eqz v5, :cond_55

    .line 953
    invoke-static {v5}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v6

    .line 954
    .local v6, "l":Ljava/util/logging/Level;
    if-eqz v6, :cond_3d

    .line 955
    invoke-virtual {v4, v6}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_55

    .line 958
    :cond_3d
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t set level for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    .end local v6    # "l":Ljava/util/logging/Level;
    :cond_55
    :goto_55
    iget-object v6, p0, Ljava/util/logging/LogManager$5;->val$logger:Ljava/util/logging/Logger;

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5a} :catch_5b

    .line 967
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "hdl":Ljava/util/logging/Handler;
    .end local v5    # "levs":Ljava/lang/String;
    goto :goto_95

    .line 963
    :catch_5b
    move-exception v3

    .line 964
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load log handler \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 965
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 942
    .end local v2    # "word":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 969
    .end local v1    # "i":I
    :cond_99
    const/4 v1, 0x0

    return-object v1
.end method
