.class final Ljava/util/logging/LogManager$LoggerWeakRef;
.super Ljava/lang/ref/WeakReference;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoggerWeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o disposed:Z

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o node:Ljava/util/logging/LogManager$LogNode;

.field private greylist-max-o parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1007
    invoke-static {p1}, Ljava/util/logging/LogManager;->-$$Nest$fgetloggerRefQueue(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z

    .line 1009
    invoke-virtual {p2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    .line 1010
    return-void
.end method


# virtual methods
.method greylist-max-o dispose()V
    .registers 6

    .line 1023
    monitor-enter p0

    .line 1030
    :try_start_1
    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1031
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z

    .line 1032
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3d

    .line 1034
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 1035
    .local v0, "n":Ljava/util/logging/LogManager$LogNode;
    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 1040
    iget-object v2, v0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    monitor-enter v2

    .line 1043
    :try_start_13
    iget-object v3, v0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    iget-object v4, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Ljava/util/logging/LogManager$LoggerContext;->removeLoggerRef(Ljava/lang/String;Ljava/util/logging/LogManager$LoggerWeakRef;)V

    .line 1044
    iput-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    .line 1048
    iget-object v3, v0, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    if-ne v3, p0, :cond_22

    .line 1049
    iput-object v1, v0, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1051
    :cond_22
    iput-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 1052
    monitor-exit v2

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v1

    .line 1055
    :cond_29
    :goto_29
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3c

    .line 1057
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Logger;

    .line 1058
    .local v2, "parent":Ljava/util/logging/Logger;
    if-eqz v2, :cond_3a

    .line 1061
    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V

    .line 1063
    :cond_3a
    iput-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    .line 1065
    .end local v2    # "parent":Ljava/util/logging/Logger;
    :cond_3c
    return-void

    .line 1032
    .end local v0    # "n":Ljava/util/logging/LogManager$LogNode;
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method greylist-max-o setNode(Ljava/util/logging/LogManager$LogNode;)V
    .registers 2
    .param p1, "node"    # Ljava/util/logging/LogManager$LogNode;

    .line 1069
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 1070
    return-void
.end method

.method greylist-max-o setParentRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/logging/Logger;",
            ">;)V"
        }
    .end annotation

    .line 1074
    .local p1, "parentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/logging/Logger;>;"
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    .line 1075
    return-void
.end method
