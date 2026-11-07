.class public abstract Lorg/apache/xml/dtm/DTMAxisTraverser;
.super Ljava/lang/Object;
.source "DTMAxisTraverser.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist first(I)I
    .registers 2

    .line 61
    invoke-virtual {p0, p1, p1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result p0

    return p0
.end method

.method public greylist first(II)I
    .registers 3

    .line 80
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    move-result p0

    return p0
.end method

.method public abstract greylist next(II)I
.end method

.method public abstract greylist next(III)I
.end method
