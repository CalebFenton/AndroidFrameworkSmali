.class Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->getRootThreadGroup()Ljava/lang/ThreadGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ThreadGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;->run()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/ThreadGroup;
    .registers 3

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 99
    .local v0, "root":Ljava/lang/ThreadGroup;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 100
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_8

    .line 101
    :cond_13
    return-object v0
.end method
