.class final Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyCompleter"
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


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 87
    .local p1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 1

    .line 88
    return-void
.end method
