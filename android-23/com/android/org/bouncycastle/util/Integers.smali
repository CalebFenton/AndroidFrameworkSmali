.class public Lcom/android/org/bouncycastle/util/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static rotateLeft(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "distance"    # I

    #@0
    .prologue
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static rotateRight(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "distance"    # I

    #@0
    .prologue
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
