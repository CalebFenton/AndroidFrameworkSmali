.class public Ljava/util/logging/ErrorManager;
.super Ljava/lang/Object;
.source "ErrorManager.java"


# static fields
.field public static final whitelist test-api CLOSE_FAILURE:I = 0x3

.field public static final whitelist test-api FLUSH_FAILURE:I = 0x2

.field public static final whitelist test-api FORMAT_FAILURE:I = 0x5

.field public static final whitelist test-api GENERIC_FAILURE:I = 0x0

.field public static final whitelist test-api OPEN_FAILURE:I = 0x4

.field public static final whitelist test-api WRITE_FAILURE:I = 0x1


# instance fields
.field private greylist-max-o reported:Z


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/ErrorManager;->reported:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v0, p0, Ljava/util/logging/ErrorManager;->reported:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_43

    if-eqz v0, :cond_7

    .line 87
    monitor-exit p0

    return-void

    .line 89
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Ljava/util/logging/ErrorManager;->reported:Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.util.logging.ErrorManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "text":Ljava/lang/String;
    if-eqz p1, :cond_37

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 94
    .end local p0    # "this":Ljava/util/logging/ErrorManager;
    :cond_37
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    if-eqz p2, :cond_41

    .line 96
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_43

    .line 98
    :cond_41
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "text":Ljava/lang/String;
    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "ex":Ljava/lang/Exception;
    .end local p3    # "code":I
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method
