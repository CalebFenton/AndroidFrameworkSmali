.class final Ljava/util/concurrent/CompletableFuture$DelayedCompleter;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayedCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation
.end field

.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;TU;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2684
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$DelayedCompleter;, "Ljava/util/concurrent/CompletableFuture<TT;>.DelayedCompleter<TU;>;"
    .local p1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava/util/concurrent/CompletableFuture;

    #@5
    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 2686
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$DelayedCompleter;, "Ljava/util/concurrent/CompletableFuture<TT;>.DelayedCompleter<TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava/util/concurrent/CompletableFuture;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2687
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava/util/concurrent/CompletableFuture;

    #@6
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    #@8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    #@b
    .line 2685
    :cond_0
    return-void
.end method
