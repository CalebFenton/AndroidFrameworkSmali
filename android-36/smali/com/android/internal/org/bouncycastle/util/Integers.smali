.class public Lcom/android/internal/org/bouncycastle/util/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# static fields
.field public static final blacklist BYTES:I = 0x4

.field public static final blacklist SIZE:I = 0x20


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitCount(I)I
    .registers 2
    .param p0, "i"    # I

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static blacklist highestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static blacklist lowestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static blacklist numberOfLeadingZeros(I)I
    .registers 2
    .param p0, "i"    # I

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    return v0
.end method

.method public static blacklist numberOfTrailingZeros(I)I
    .registers 2
    .param p0, "i"    # I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    return v0
.end method

.method public static blacklist reverse(I)I
    .registers 2
    .param p0, "i"    # I

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    return v0
.end method

.method public static blacklist reverseBytes(I)I
    .registers 2
    .param p0, "i"    # I

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static blacklist rotateLeft(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 50
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    return v0
.end method

.method public static blacklist rotateRight(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 55
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    return v0
.end method

.method public static blacklist valueOf(I)Ljava/lang/Integer;
    .registers 2
    .param p0, "value"    # I

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
