.class final Ljava/util/ArraysParallelSortHelpers$Relay;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Relay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final blacklist task:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 99
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;I)V

    .line 100
    iput-object p1, p0, Ljava/util/ArraysParallelSortHelpers$Relay;->task:Ljava/util/concurrent/CountedCompleter;

    .line 101
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 1

    .line 102
    return-void
.end method

.method public final whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 104
    .local p1, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v0, p0, Ljava/util/ArraysParallelSortHelpers$Relay;->task:Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    .line 105
    return-void
.end method
