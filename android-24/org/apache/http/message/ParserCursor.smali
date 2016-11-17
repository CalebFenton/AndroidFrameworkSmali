.class public Lorg/apache/http/message/ParserCursor;
.super Ljava/lang/Object;
.source "ParserCursor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lowerBound:I

.field private pos:I

.field private final upperBound:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    if-gez p1, :cond_0

    #@5
    .line 59
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@7
    const-string/jumbo v1, "Lower bound cannot be negative"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 61
    :cond_0
    if-le p1, p2, :cond_1

    #@10
    .line 62
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@12
    const-string/jumbo v1, "Lower bound cannot be greater then upper bound"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 64
    :cond_1
    iput p1, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    #@1b
    .line 65
    iput p2, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    #@1d
    .line 66
    iput p1, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    #@1f
    .line 56
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 2

    #@0
    .prologue
    .line 92
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    #@2
    iget v1, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public getLowerBound()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    #@2
    return v0
.end method

.method public getPos()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    #@2
    return v0
.end method

.method public getUpperBound()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x3e

    #@2
    .line 96
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@4
    const/16 v1, 0x10

    #@6
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@9
    .line 97
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v1, 0x5b

    #@b
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@e
    .line 98
    iget v1, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@17
    .line 99
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@1a
    .line 100
    iget v1, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@23
    .line 101
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@26
    .line 102
    iget v1, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2f
    .line 103
    const/16 v1, 0x5d

    #@31
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@34
    .line 104
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method

.method public updatePos(I)V
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 82
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->lowerBound:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 83
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 85
    :cond_0
    iget v0, p0, Lorg/apache/http/message/ParserCursor;->upperBound:I

    #@c
    if-le p1, v0, :cond_1

    #@e
    .line 86
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v0

    #@14
    .line 88
    :cond_1
    iput p1, p0, Lorg/apache/http/message/ParserCursor;->pos:I

    #@16
    .line 81
    return-void
.end method
