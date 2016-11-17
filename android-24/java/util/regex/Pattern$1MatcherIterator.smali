.class Ljava/util/regex/Pattern$1MatcherIterator;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatcherIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field private emptyElementCount:I

.field private final matcher:Ljava/util/regex/Matcher;

.field private nextElement:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/regex/Pattern;

.field final synthetic val$input:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/regex/Pattern;
    .param p2, "val$input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1401
    iput-object p1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->this$0:Ljava/util/regex/Pattern;

    #@2
    iput-object p2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1402
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    #@d
    .line 1401
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1420
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@9
    if-lez v0, :cond_1

    #@b
    .line 1421
    :cond_0
    return v4

    #@c
    .line 1423
    :cond_1
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    #@e
    iget-object v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v1

    #@14
    if-ne v0, v1, :cond_3

    #@16
    .line 1424
    return v3

    #@17
    .line 1433
    :cond_2
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    #@19
    if-lez v0, :cond_3

    #@1b
    .line 1435
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@21
    .line 1428
    :cond_3
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    #@23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_4

    #@29
    .line 1429
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    #@2b
    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    #@2d
    iget-object v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    #@2f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@32
    move-result v2

    #@33
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@36
    move-result-object v0

    #@37
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@3d
    .line 1430
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    #@3f
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@42
    move-result v0

    #@43
    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    #@45
    .line 1431
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@47
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_2

    #@4d
    .line 1432
    return v4

    #@4e
    .line 1440
    :cond_4
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    #@50
    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    #@52
    iget-object v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    #@54
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@57
    move-result v2

    #@58
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@5b
    move-result-object v0

    #@5c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@62
    .line 1441
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    #@64
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@67
    move-result v0

    #@68
    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    #@6a
    .line 1442
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@6c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@6f
    move-result v0

    #@70
    if-nez v0, :cond_5

    #@72
    .line 1443
    return v4

    #@73
    .line 1446
    :cond_5
    iput v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@75
    .line 1447
    iput-object v5, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@77
    .line 1448
    return v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1405
    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1406
    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1407
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 1409
    :cond_0
    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@e
    if-nez v1, :cond_1

    #@10
    .line 1410
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@12
    .line 1411
    .local v0, "n":Ljava/lang/String;
    const/4 v1, 0x0

    #@13
    iput-object v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    #@15
    .line 1412
    return-object v0

    #@16
    .line 1414
    .end local v0    # "n":Ljava/lang/String;
    :cond_1
    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    iput v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    #@1c
    .line 1415
    const-string/jumbo v1, ""

    #@1f
    return-object v1
.end method
