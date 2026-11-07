.class Ljdk/internal/misc/InnocuousThread$2;
.super Ljava/lang/Object;
.source "InnocuousThread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljdk/internal/misc/InnocuousThread;->newSystemThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$target:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Ljdk/internal/misc/InnocuousThread$2;->val$target:Ljava/lang/Runnable;

    iput-object p2, p0, Ljdk/internal/misc/InnocuousThread$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0}, Ljdk/internal/misc/InnocuousThread$2;->run()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Thread;
    .registers 7

    .line 93
    new-instance v0, Ljdk/internal/misc/InnocuousThread;

    invoke-static {}, Ljdk/internal/misc/InnocuousThread;->-$$Nest$sfgetINNOCUOUSTHREADGROUP()Ljava/lang/ThreadGroup;

    move-result-object v1

    iget-object v2, p0, Ljdk/internal/misc/InnocuousThread$2;->val$target:Ljava/lang/Runnable;

    iget-object v3, p0, Ljdk/internal/misc/InnocuousThread$2;->val$name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljdk/internal/misc/InnocuousThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/ClassLoader;Ljdk/internal/misc/InnocuousThread-IA;)V

    return-object v0
.end method
