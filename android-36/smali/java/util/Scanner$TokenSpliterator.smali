.class Ljava/util/Scanner$TokenSpliterator;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist expectedCount:I

.field final synthetic blacklist this$0:Ljava/util/Scanner;


# direct methods
.method constructor blacklist <init>(Ljava/util/Scanner;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/Scanner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2858
    iput-object p1, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    .line 2859
    const-wide v0, 0x7fffffffffffffffL

    const/16 v2, 0x510

    invoke-direct {p0, v0, v1, v2}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 2856
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner$TokenSpliterator;->expectedCount:I

    .line 2861
    return-void
.end method


# virtual methods
.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2865
    .local p1, "cons":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    iget v0, p0, Ljava/util/Scanner$TokenSpliterator;->expectedCount:I

    if-ltz v0, :cond_13

    iget v0, p0, Ljava/util/Scanner$TokenSpliterator;->expectedCount:I

    iget-object v1, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    iget v1, v1, Ljava/util/Scanner;->modCount:I

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 2866
    :cond_d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2869
    :cond_13
    :goto_13
    iget-object v0, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2870
    iget-object v0, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 2871
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    iget v1, v1, Ljava/util/Scanner;->modCount:I

    iput v1, p0, Ljava/util/Scanner$TokenSpliterator;->expectedCount:I

    .line 2872
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2873
    iget v1, p0, Ljava/util/Scanner$TokenSpliterator;->expectedCount:I

    iget-object v2, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    iget v2, v2, Ljava/util/Scanner;->modCount:I

    if-ne v1, v2, :cond_34

    .line 2876
    const/4 v1, 0x1

    return v1

    .line 2874
    :cond_34
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2878
    .end local v0    # "token":Ljava/lang/String;
    :cond_3a
    iget-object v0, p0, Ljava/util/Scanner$TokenSpliterator;->this$0:Ljava/util/Scanner;

    iget v0, v0, Ljava/util/Scanner;->modCount:I

    iput v0, p0, Ljava/util/Scanner$TokenSpliterator;->expectedCount:I

    .line 2879
    const/4 v0, 0x0

    return v0
.end method
