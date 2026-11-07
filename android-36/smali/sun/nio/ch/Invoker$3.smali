.class Lsun/nio/ch/Invoker$3;
.super Ljava/lang/Object;
.source "Invoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$attachment:Ljava/lang/Object;

.field final synthetic blacklist val$exc:Ljava/lang/Throwable;

.field final synthetic blacklist val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic blacklist val$value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lsun/nio/ch/Invoker$3;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p2, p0, Lsun/nio/ch/Invoker$3;->val$attachment:Ljava/lang/Object;

    iput-object p3, p0, Lsun/nio/ch/Invoker$3;->val$value:Ljava/lang/Object;

    iput-object p4, p0, Lsun/nio/ch/Invoker$3;->val$exc:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 241
    iget-object v0, p0, Lsun/nio/ch/Invoker$3;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v1, p0, Lsun/nio/ch/Invoker$3;->val$attachment:Ljava/lang/Object;

    iget-object v2, p0, Lsun/nio/ch/Invoker$3;->val$value:Ljava/lang/Object;

    iget-object v3, p0, Lsun/nio/ch/Invoker$3;->val$exc:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 242
    return-void
.end method
