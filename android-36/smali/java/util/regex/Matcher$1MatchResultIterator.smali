.class Ljava/util/regex/Matcher$1MatchResultIterator;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/regex/Matcher;->results()Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchResultIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/regex/MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist expectedCount:I

.field blacklist state:I

.field blacklist textAsString:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/regex/Matcher;


# direct methods
.method constructor blacklist <init>(Ljava/util/regex/Matcher;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/regex/Matcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1354
    iput-object p1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    .line 1359
    iput v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/regex/MatchResult;",
            ">;)V"
        }
    .end annotation

    .line 1398
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/regex/MatchResult;>;"
    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-ltz v0, :cond_13

    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget v1, v1, Ljava/util/regex/Matcher;->modCount:I

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 1399
    :cond_d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1401
    :cond_13
    :goto_13
    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    .line 1402
    .local v0, "s":I
    if-nez v0, :cond_18

    .line 1403
    return-void

    .line 1406
    :cond_18
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    .line 1407
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    .line 1410
    if-gez v0, :cond_29

    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1411
    return-void

    .line 1414
    :cond_29
    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget-object v1, v1, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    .line 1417
    :cond_33
    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget v1, v1, Ljava/util/regex/Matcher;->modCount:I

    .line 1418
    .local v1, "ec":I
    iget-object v2, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/regex/Matcher;->-$$Nest$mtoMatchResult(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1419
    iget-object v2, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget v2, v2, Ljava/util/regex/Matcher;->modCount:I

    if-ne v1, v2, :cond_51

    .line 1421
    .end local v1    # "ec":I
    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1422
    return-void

    .line 1420
    .restart local v1    # "ec":I
    :cond_51
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public whitelist test-api hasNext()Z
    .registers 4

    .line 1378
    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    const/4 v1, 0x1

    if-ltz v0, :cond_c

    .line 1379
    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 1384
    :cond_c
    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-ltz v0, :cond_19

    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    iget-object v2, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget v2, v2, Ljava/util/regex/Matcher;->modCount:I

    if-eq v0, v2, :cond_19

    .line 1385
    return v1

    .line 1387
    :cond_19
    iget-object v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1389
    .local v0, "found":Z
    if-eqz v0, :cond_2f

    iget v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    if-gez v1, :cond_2f

    .line 1390
    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget-object v1, v1, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    .line 1391
    :cond_2f
    iput v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    .line 1392
    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget v1, v1, Ljava/util/regex/Matcher;->modCount:I

    iput v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    .line 1393
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1354
    invoke-virtual {p0}, Ljava/util/regex/Matcher$1MatchResultIterator;->next()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/regex/MatchResult;
    .registers 3

    .line 1366
    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    if-ltz v0, :cond_13

    iget v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->expectedCount:I

    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget v1, v1, Ljava/util/regex/Matcher;->modCount:I

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 1367
    :cond_d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1369
    :cond_13
    :goto_13
    invoke-virtual {p0}, Ljava/util/regex/Matcher$1MatchResultIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1372
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->state:I

    .line 1373
    iget-object v0, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->this$0:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/regex/Matcher$1MatchResultIterator;->textAsString:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->-$$Nest$mtoMatchResult(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0

    .line 1370
    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
