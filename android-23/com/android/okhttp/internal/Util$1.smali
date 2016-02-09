.class final Lcom/android/okhttp/internal/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$daemon:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "val$name"    # Ljava/lang/String;
    .param p2, "val$daemon"    # Z

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/okhttp/internal/Util$1;->val$name:Ljava/lang/String;

    #@2
    iput-boolean p2, p0, Lcom/android/okhttp/internal/Util$1;->val$daemon:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 242
    new-instance v0, Ljava/lang/Thread;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/Util$1;->val$name:Ljava/lang/String;

    #@4
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@7
    .line 243
    .local v0, "result":Ljava/lang/Thread;
    iget-boolean v1, p0, Lcom/android/okhttp/internal/Util$1;->val$daemon:Z

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@c
    .line 244
    return-object v0
.end method
