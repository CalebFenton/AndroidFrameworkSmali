.class public Ljunit/runner/Sorter;
.super Ljava/lang/Object;
.source "Sorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/runner/Sorter$Swapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V
    .locals 4
    .param p0, "values"    # Ljava/util/Vector;
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "swapper"    # Ljunit/runner/Sorter$Swapper;

    #@0
    .prologue
    .line 17
    move v1, p1

    #@1
    .line 18
    .local v1, "oleft":I
    move v2, p2

    #@2
    .line 19
    .local v2, "oright":I
    add-int v3, p1, p2

    #@4
    div-int/lit8 v3, v3, 0x2

    #@6
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 21
    .local v0, "mid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@15
    move-result v3

    #@16
    if-gez v3, :cond_1

    #@18
    .line 22
    add-int/lit8 p1, p1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 23
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@24
    move-result v3

    #@25
    if-gez v3, :cond_2

    #@27
    .line 24
    add-int/lit8 p2, p2, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 25
    :cond_2
    if-gt p1, p2, :cond_3

    #@2c
    .line 26
    invoke-interface {p3, p0, p1, p2}, Ljunit/runner/Sorter$Swapper;->swap(Ljava/util/Vector;II)V

    #@2f
    .line 27
    add-int/lit8 p1, p1, 0x1

    #@31
    .line 28
    add-int/lit8 p2, p2, -0x1

    #@33
    .line 30
    :cond_3
    if-le p1, p2, :cond_0

    #@35
    .line 32
    if-ge v1, p2, :cond_4

    #@37
    .line 33
    invoke-static {p0, v1, p2, p3}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    #@3a
    .line 34
    :cond_4
    if-ge p1, v2, :cond_5

    #@3c
    .line 35
    invoke-static {p0, p1, v2, p3}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    #@3f
    .line 16
    :cond_5
    return-void
.end method
