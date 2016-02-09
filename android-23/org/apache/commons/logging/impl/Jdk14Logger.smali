.class public Lorg/apache/commons/logging/impl/Jdk14Logger;
.super Ljava/lang/Object;
.source "Jdk14Logger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final dummyLevel:Ljava/util/logging/Level;


# instance fields
.field protected transient logger:Ljava/util/logging/Logger;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@2
    sput-object v0, Lorg/apache/commons/logging/impl/Jdk14Logger;->dummyLevel:Ljava/util/logging/Level;

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    #@6
    .line 82
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->name:Ljava/lang/String;

    #@8
    .line 64
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->name:Ljava/lang/String;

    #@a
    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    #@10
    .line 62
    return-void
.end method

.method private log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@4
    move-result-object v0

    #@5
    .line 90
    .local v0, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 92
    new-instance v7, Ljava/lang/Throwable;

    #@d
    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    #@10
    .line 93
    .local v7, "dummyException":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@13
    move-result-object v8

    #@14
    .line 95
    .local v8, "locations":[Ljava/lang/StackTraceElement;
    const-string/jumbo v2, "unknown"

    #@17
    .line 96
    .local v2, "cname":Ljava/lang/String;
    const-string/jumbo v3, "unknown"

    #@1a
    .line 97
    .local v3, "method":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@1c
    array-length v1, v8

    #@1d
    if-le v1, v4, :cond_0

    #@1f
    .line 98
    aget-object v6, v8, v4

    #@21
    .line 99
    .local v6, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 100
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 102
    .end local v6    # "caller":Ljava/lang/StackTraceElement;
    :cond_0
    if-nez p3, :cond_2

    #@2b
    .line 103
    invoke-virtual {v0, p1, v2, v3, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 87
    .end local v2    # "cname":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    .end local v7    # "dummyException":Ljava/lang/Throwable;
    .end local v8    # "locations":[Ljava/lang/StackTraceElement;
    :cond_1
    :goto_0
    return-void

    #@2f
    .restart local v2    # "cname":Ljava/lang/String;
    .restart local v3    # "method":Ljava/lang/String;
    .restart local v7    # "dummyException":Ljava/lang/Throwable;
    .restart local v8    # "locations":[Ljava/lang/StackTraceElement;
    :cond_2
    move-object v1, p1

    #@30
    move-object v4, p2

    #@31
    move-object v5, p3

    #@32
    .line 105
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 118
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a
    .line 117
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 130
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 129
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 141
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a
    .line 140
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 153
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 152
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 164
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a
    .line 163
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 176
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 175
    return-void
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 185
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->name:Ljava/lang/String;

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    #@c
    .line 187
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk14Logger;->logger:Ljava/util/logging/Logger;

    #@e
    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 198
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a
    .line 197
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 210
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 209
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;->getLogger()Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a
    .line 268
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 281
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 280
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 292
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a
    .line 291
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 304
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk14Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    .line 303
    return-void
.end method
