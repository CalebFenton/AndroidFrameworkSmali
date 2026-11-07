.class Ljava/util/Scanner$FindSpliterator;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "Ljava/util/regex/MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist advance:Z

.field blacklist expectedCount:I

.field final blacklist pattern:Ljava/util/regex/Pattern;

.field final synthetic blacklist this$0:Ljava/util/Scanner;


# direct methods
.method constructor blacklist <init>(Ljava/util/Scanner;Ljava/util/regex/Pattern;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/Scanner;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2969
    iput-object p1, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    .line 2970
    const-wide v0, 0x7fffffffffffffffL

    const/16 v2, 0x510

    invoke-direct {p0, v0, v1, v2}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 2966
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner$FindSpliterator;->expectedCount:I

    .line 2967
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner$FindSpliterator;->advance:Z

    .line 2972
    iput-object p2, p0, Ljava/util/Scanner$FindSpliterator;->pattern:Ljava/util/regex/Pattern;

    .line 2973
    return-void
.end method

.method private blacklist nextInBuffer()Z
    .registers 6

    .line 3007
    iget-boolean v0, p0, Ljava/util/Scanner$FindSpliterator;->advance:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    .line 3008
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetposition(Ljava/util/Scanner;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v3}, Ljava/util/Scanner;->-$$Nest$fgetbuf(Ljava/util/Scanner;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    if-le v0, v3, :cond_27

    .line 3009
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetsourceClosed(Ljava/util/Scanner;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3010
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0, v2}, Ljava/util/Scanner;->-$$Nest$fputneedInput(Ljava/util/Scanner;Z)V

    .line 3011
    :cond_26
    return v1

    .line 3013
    :cond_27
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetposition(Ljava/util/Scanner;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/util/Scanner;->-$$Nest$fputposition(Ljava/util/Scanner;I)V

    .line 3014
    iput-boolean v1, p0, Ljava/util/Scanner$FindSpliterator;->advance:Z

    .line 3016
    :cond_33
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v3, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v3}, Ljava/util/Scanner;->-$$Nest$fgetposition(Ljava/util/Scanner;)I

    move-result v3

    iget-object v4, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v4}, Ljava/util/Scanner;->-$$Nest$fgetbuf(Ljava/util/Scanner;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 3017
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetsourceClosed(Ljava/util/Scanner;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 3019
    :cond_6c
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    iget-object v3, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v3}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-static {v0, v3}, Ljava/util/Scanner;->-$$Nest$fputposition(Ljava/util/Scanner;I)V

    .line 3020
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iget-object v3, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v3}, Ljava/util/Scanner;->-$$Nest$fgetposition(Ljava/util/Scanner;)I

    move-result v3

    if-ne v0, v3, :cond_8e

    move v1, v2

    :cond_8e
    iput-boolean v1, p0, Ljava/util/Scanner$FindSpliterator;->advance:Z

    .line 3021
    return v2

    .line 3023
    :cond_91
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetsourceClosed(Ljava/util/Scanner;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 3024
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0, v2}, Ljava/util/Scanner;->-$$Nest$fputneedInput(Ljava/util/Scanner;Z)V

    .line 3025
    :cond_9e
    return v1
.end method


# virtual methods
.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/regex/MatchResult;",
            ">;)Z"
        }
    .end annotation

    .line 2977
    .local p1, "cons":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/regex/MatchResult;>;"
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$mensureOpen(Ljava/util/Scanner;)V

    .line 2978
    iget v0, p0, Ljava/util/Scanner$FindSpliterator;->expectedCount:I

    const/4 v1, 0x0

    if-ltz v0, :cond_19

    .line 2979
    iget v0, p0, Ljava/util/Scanner$FindSpliterator;->expectedCount:I

    iget-object v2, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    iget v2, v2, Ljava/util/Scanner;->modCount:I

    if-ne v0, v2, :cond_13

    goto :goto_2f

    .line 2980
    :cond_13
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2984
    :cond_19
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0, v1}, Ljava/util/Scanner;->-$$Nest$fputmatchValid(Ljava/util/Scanner;Z)V

    .line 2985
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v2, p0, Ljava/util/Scanner$FindSpliterator;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 2986
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    iget v0, v0, Ljava/util/Scanner;->modCount:I

    iput v0, p0, Ljava/util/Scanner$FindSpliterator;->expectedCount:I

    .line 2991
    :goto_2f
    invoke-direct {p0}, Ljava/util/Scanner$FindSpliterator;->nextInBuffer()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2992
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2993
    iget v0, p0, Ljava/util/Scanner$FindSpliterator;->expectedCount:I

    iget-object v1, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    iget v1, v1, Ljava/util/Scanner;->modCount:I

    if-ne v0, v1, :cond_4c

    .line 2996
    const/4 v0, 0x1

    return v0

    .line 2994
    :cond_4c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2998
    :cond_52
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$fgetneedInput(Ljava/util/Scanner;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2999
    iget-object v0, p0, Ljava/util/Scanner$FindSpliterator;->this$0:Ljava/util/Scanner;

    invoke-static {v0}, Ljava/util/Scanner;->-$$Nest$mreadInput(Ljava/util/Scanner;)V

    goto :goto_2f

    .line 3001
    :cond_60
    return v1
.end method
