.class public Lorg/apache/http/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final allHeaders:[Lorg/apache/http/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    if-nez p1, :cond_0

    #@5
    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 87
    const-string/jumbo v1, "Header array must not be null."

    #@a
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    #@10
    .line 91
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    #@12
    .line 92
    const/4 v0, -0x1

    #@13
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderIterator;->findNext(I)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    #@19
    .line 84
    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    #@6
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    #@8
    aget-object v1, v1, p1

    #@a
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 128
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 4
    .param p1, "from"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 106
    if-ge p1, v2, :cond_0

    #@3
    .line 107
    return v2

    #@4
    .line 109
    :cond_0
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    #@6
    array-length v3, v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .line 110
    .local v1, "to":I
    const/4 v0, 0x0

    #@a
    .line 111
    :goto_0
    if-nez v0, :cond_1

    #@c
    if-ge p1, v1, :cond_1

    #@e
    .line 112
    add-int/lit8 p1, p1, 0x1

    #@10
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicHeaderIterator;->filterHeader(I)Z

    #@13
    move-result v0

    #@14
    .local v0, "found":Z
    goto :goto_0

    #@15
    .line 115
    .end local v0    # "found":Z
    :cond_1
    if-eqz v0, :cond_2

    #@17
    .end local p1    # "from":I
    :goto_1
    return p1

    #@18
    .restart local p1    # "from":I
    :cond_2
    move p1, v2

    #@19
    goto :goto_1
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 135
    iget v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

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
    .line 170
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderIterator;->nextHeader()Lorg/apache/http/Header;

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
    .line 149
    iget v0, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    #@2
    .line 150
    .local v0, "current":I
    if-gez v0, :cond_0

    #@4
    .line 151
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v2, "Iteration already finished."

    #@9
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderIterator;->findNext(I)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->currentIndex:I

    #@13
    .line 156
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/http/Header;

    #@15
    aget-object v1, v1, v0

    #@17
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
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 183
    const-string/jumbo v1, "Removing headers is not supported."

    #@5
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
