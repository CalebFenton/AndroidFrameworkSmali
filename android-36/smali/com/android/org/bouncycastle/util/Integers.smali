.class public Lcom/android/org/bouncycastle/util/Integers;
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
    .registers 1

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static blacklist highestOneBit(I)I
    .registers 1

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static blacklist lowestOneBit(I)I
    .registers 1

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static blacklist numberOfLeadingZeros(I)I
    .registers 1

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method

.method public static blacklist numberOfTrailingZeros(I)I
    .registers 1

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static blacklist reverse(I)I
    .registers 1

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->reverse(I)I

    move-result p0

    return p0
.end method

.method public static blacklist reverseBytes(I)I
    .registers 1

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static blacklist rotateLeft(II)I
    .registers 2

    .line 50
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    return p0
.end method

.method public static blacklist rotateRight(II)I
    .registers 2

    .line 55
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method public static blacklist valueOf(I)Ljava/lang/Integer;
    .registers 1

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
