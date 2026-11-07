.class Ljava/util/logging/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/logging/LogManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 180
    invoke-virtual {p0}, Ljava/util/logging/LogManager$1;->run()Ljava/util/logging/LogManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/logging/LogManager;
    .registers 7

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "mgr":Ljava/util/logging/LogManager;
    const/4 v1, 0x0

    .line 186
    .local v1, "cname":Ljava/lang/String;
    :try_start_2
    const-string v2, "java.util.logging.manager"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 187
    if-eqz v1, :cond_16

    .line 189
    invoke-static {v1}, Ljava/util/logging/LogManager;->-$$Nest$smgetClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/LogManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 194
    :cond_16
    goto :goto_39

    .line 191
    :catch_17
    move-exception v2

    .line 192
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load Logmanager \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_39
    if-nez v0, :cond_41

    .line 196
    new-instance v2, Ljava/util/logging/LogManager;

    invoke-direct {v2}, Ljava/util/logging/LogManager;-><init>()V

    move-object v0, v2

    .line 198
    :cond_41
    return-object v0
.end method
