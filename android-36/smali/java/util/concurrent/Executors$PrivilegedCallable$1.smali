.class Ljava/util/concurrent/Executors$PrivilegedCallable$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallable;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executors$PrivilegedCallable;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/Executors$PrivilegedCallable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallable$1;, "Ljava/util/concurrent/Executors$PrivilegedCallable$1;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 552
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallable$1;, "Ljava/util/concurrent/Executors$PrivilegedCallable$1;"
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    iget-object v0, v0, Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
