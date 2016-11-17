.class public abstract Lorg/apache/xml/dtm/DTMAxisTraverser;
.super Ljava/lang/Object;
.source "DTMAxisTraverser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1
    .param p1, "context"    # I

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1, p1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public first(II)I
    .locals 1
    .param p1, "context"    # I
    .param p2, "extendedTypeID"    # I

    #@0
    .prologue
    .line 80
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract next(II)I
.end method

.method public abstract next(III)I
.end method
