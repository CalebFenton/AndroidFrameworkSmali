.class public Lorg/apache/http/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final allHeaders:Ljava/util/List;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "headers"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 92
    if-nez p1, :cond_0

    #@6
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 94
    const-string/jumbo v1, "Header list must not be null."

    #@b
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    #@11
    .line 98
    iput-object p2, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    #@13
    .line 99
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    #@19
    .line 100
    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    #@1b
    .line 91
    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 137
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 140
    :cond_0
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    #@8
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lorg/apache/http/Header;

    #@e
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 142
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method protected findNext(I)I
    .locals 4
    .param p1, "from"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 114
    if-ge p1, v2, :cond_0

    #@3
    .line 115
    return v2

    #@4
    .line 117
    :cond_0
    iget-object v3, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    #@6
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v1, v3, -0x1

    #@c
    .line 118
    .local v1, "to":I
    const/4 v0, 0x0

    #@d
    .line 119
    :goto_0
    if-nez v0, :cond_1

    #@f
    if-ge p1, v1, :cond_1

    #@11
    .line 120
    add-int/lit8 p1, p1, 0x1

    #@13
    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicListHeaderIterator;->filterHeader(I)Z

    #@16
    move-result v0

    #@17
    .local v0, "found":Z
    goto :goto_0

    #@18
    .line 123
    .end local v0    # "found":Z
    :cond_1
    if-eqz v0, :cond_2

    #@1a
    .end local p1    # "from":I
    :goto_1
    return p1

    #@1b
    .restart local p1    # "from":I
    :cond_2
    move p1, v2

    #@1c
    goto :goto_1
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 148
    iget v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/http/message/BasicListHeaderIterator;->nextHeader()Lorg/apache/http/Header;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextHeader()Lorg/apache/http/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    #@2
    .line 163
    .local v0, "current":I
    if-gez v0, :cond_0

    #@4
    .line 164
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v2, "Iteration already finished."

    #@9
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 167
    :cond_0
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    #@f
    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    #@12
    move-result v1

    #@13
    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    #@15
    .line 170
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    #@17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lorg/apache/http/Header;

    #@1d
    return-object v1
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "No header to remove."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 197
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    #@f
    iget v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@14
    .line 198
    const/4 v0, -0x1

    #@15
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    #@17
    .line 199
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    #@1d
    .line 192
    return-void
.end method
