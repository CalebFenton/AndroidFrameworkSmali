.class Lcom/android/okhttp/internal/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$daemon:Z

.field final synthetic blacklist val$name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/android/okhttp/internal/Util$1;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/okhttp/internal/Util$1;->val$daemon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 231
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/okhttp/internal/Util$1;->val$name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 232
    iget-boolean p0, p0, Lcom/android/okhttp/internal/Util$1;->val$daemon:Z

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
