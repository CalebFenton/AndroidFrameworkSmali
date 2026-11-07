.class public final Lcom/android/org/conscrypt/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist hashCode:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    .line 33
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    if-ne p1, p0, :cond_4

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_4
    instance-of v0, p1, Lcom/android/org/conscrypt/ByteArray;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 47
    return v1

    .line 49
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ByteArray;

    .line 50
    .local v0, "lhs":Lcom/android/org/conscrypt/ByteArray;
    iget v2, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    iget v3, v0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    if-eq v2, v3, :cond_14

    .line 51
    return v1

    .line 53
    :cond_14
    iget-object v1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    return v0
.end method
