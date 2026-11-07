.class final Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$AbstractSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o value:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1408
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1413
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    .line 1414
    return-void
.end method
