.class Lsun/net/www/HeaderParser$ParserIterator;
.super Ljava/lang/Object;
.source "HeaderParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/HeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserIterator"
.end annotation


# instance fields
.field index:I

.field returnsValue:Z

.field final synthetic this$0:Lsun/net/www/HeaderParser;


# direct methods
.method constructor <init>(Lsun/net/www/HeaderParser;Z)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/HeaderParser;
    .param p2, "returnValue"    # Z

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Lsun/net/www/HeaderParser$ParserIterator;->this$0:Lsun/net/www/HeaderParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 200
    iput-boolean p2, p0, Lsun/net/www/HeaderParser$ParserIterator;->returnsValue:Z

    #@7
    .line 199
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 203
    iget v0, p0, Lsun/net/www/HeaderParser$ParserIterator;->index:I

    #@2
    iget-object v1, p0, Lsun/net/www/HeaderParser$ParserIterator;->this$0:Lsun/net/www/HeaderParser;

    #@4
    iget v1, v1, Lsun/net/www/HeaderParser;->nkeys:I

    #@6
    if-ge v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lsun/net/www/HeaderParser$ParserIterator;->this$0:Lsun/net/www/HeaderParser;

    #@2
    iget-object v0, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    #@4
    iget v1, p0, Lsun/net/www/HeaderParser$ParserIterator;->index:I

    #@6
    add-int/lit8 v2, v1, 0x1

    #@8
    iput v2, p0, Lsun/net/www/HeaderParser$ParserIterator;->index:I

    #@a
    aget-object v1, v0, v1

    #@c
    iget-boolean v0, p0, Lsun/net/www/HeaderParser$ParserIterator;->returnsValue:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    aget-object v0, v1, v0

    #@13
    return-object v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "remove not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
