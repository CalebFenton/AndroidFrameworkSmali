.class Lsun/nio/ch/Invoker$2;
.super Ljava/lang/Object;
.source "Invoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$attachment:Ljava/lang/Object;

.field final synthetic blacklist val$exc:Ljava/lang/Throwable;

.field final synthetic blacklist val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic blacklist val$result:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lsun/nio/ch/Invoker$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p2, p0, Lsun/nio/ch/Invoker$2;->val$attachment:Ljava/lang/Object;

    iput-object p3, p0, Lsun/nio/ch/Invoker$2;->val$result:Ljava/lang/Object;

    iput-object p4, p0, Lsun/nio/ch/Invoker$2;->val$exc:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 217
    invoke-static {}, Lsun/nio/ch/Invoker;->-$$Nest$sfgetmyGroupAndInvokeCount()Ljava/lang/ThreadLocal;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    .line 219
    .local v0, "thisGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    if-eqz v0, :cond_10

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->setInvokeCount(I)V

    .line 221
    :cond_10
    iget-object v1, p0, Lsun/nio/ch/Invoker$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v2, p0, Lsun/nio/ch/Invoker$2;->val$attachment:Ljava/lang/Object;

    iget-object v3, p0, Lsun/nio/ch/Invoker$2;->val$result:Ljava/lang/Object;

    iget-object v4, p0, Lsun/nio/ch/Invoker$2;->val$exc:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3, v4}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 222
    return-void
.end method
