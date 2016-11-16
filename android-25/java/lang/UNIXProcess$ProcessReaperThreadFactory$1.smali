.class final Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->getRootThreadGroup()Ljava/lang/ThreadGroup;
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
        "Ljava/lang/ThreadGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;->run()Ljava/lang/ThreadGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/ThreadGroup;
    .locals 2

    #@0
    .prologue
    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v0

    #@8
    .line 99
    .local v0, "root":Ljava/lang/ThreadGroup;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 100
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 101
    :cond_0
    return-object v0
.end method
