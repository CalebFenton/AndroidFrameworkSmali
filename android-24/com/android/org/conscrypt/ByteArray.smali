.class final Lcom/android/org/conscrypt/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    #@5
    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    #@b
    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    instance-of v1, p1, Lcom/android/org/conscrypt/ByteArray;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 41
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 43
    check-cast v0, Lcom/android/org/conscrypt/ByteArray;

    #@9
    .line 44
    .local v0, "lhs":Lcom/android/org/conscrypt/ByteArray;
    iget-object v1, p0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    #@b
    iget-object v2, v0, Lcom/android/org/conscrypt/ByteArray;->bytes:[B

    #@d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 35
    iget v0, p0, Lcom/android/org/conscrypt/ByteArray;->hashCode:I

    #@2
    return v0
.end method
