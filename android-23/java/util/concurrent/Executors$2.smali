.class final Ljava/util/concurrent/Executors$2;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors;->callable(Ljava/security/PrivilegedExceptionAction;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Ljava/security/PrivilegedExceptionAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedExceptionAction;)V
    .locals 0

    #@0
    .prologue
    .line 388
    .local p1, "val$action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<*>;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$2;->val$action:Ljava/security/PrivilegedExceptionAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Ljava/util/concurrent/Executors$2;->val$action:Ljava/security/PrivilegedExceptionAction;

    #@2
    invoke-interface {v0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
