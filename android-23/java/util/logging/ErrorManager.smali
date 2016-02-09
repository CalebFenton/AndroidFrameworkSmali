.class public Ljava/util/logging/ErrorManager;
.super Ljava/lang/Object;
.source "ErrorManager.java"


# static fields
.field public static final CLOSE_FAILURE:I = 0x3

.field private static final FAILURES:[Ljava/lang/String;

.field public static final FLUSH_FAILURE:I = 0x2

.field public static final FORMAT_FAILURE:I = 0x5

.field public static final GENERIC_FAILURE:I = 0x0

.field public static final OPEN_FAILURE:I = 0x4

.field public static final WRITE_FAILURE:I = 0x1


# instance fields
.field private called:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 59
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "GENERIC_FAILURE"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 60
    const-string/jumbo v1, "WRITE_FAILURE"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "FLUSH_FAILURE"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "CLOSE_FAILURE"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "OPEN_FAILURE"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 61
    const-string/jumbo v1, "FORMAT_FAILURE"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 59
    sput-object v0, Ljava/util/logging/ErrorManager;->FAILURES:[Ljava/lang/String;

    #@29
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 91
    monitor-enter p0

    #@1
    .line 92
    :try_start_0
    iget-boolean v0, p0, Ljava/util/logging/ErrorManager;->called:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 93
    return-void

    #@7
    .line 95
    :cond_0
    const/4 v0, 0x1

    #@8
    :try_start_1
    iput-boolean v0, p0, Ljava/util/logging/ErrorManager;->called:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 97
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {p0}, Ljava/util/logging/ErrorManager;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, ": "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    sget-object v2, Ljava/util/logging/ErrorManager;->FAILURES:[Ljava/lang/String;

    #@27
    aget-object v2, v2, p3

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 98
    if-eqz p1, :cond_1

    #@36
    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "Error message - "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 101
    :cond_1
    if-eqz p2, :cond_2

    #@51
    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v2, "Exception - "

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6a
    .line 90
    :cond_2
    return-void

    #@6b
    .line 91
    :catchall_0
    move-exception v0

    #@6c
    monitor-exit p0

    #@6d
    throw v0
.end method
