.class public final Lcom/android/dex/EncodedValue;
.super Ljava/lang/Object;
.source "EncodedValue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@5
    .line 28
    return-void
.end method


# virtual methods
.method public asByteInput()Lcom/android/dex/util/ByteInput;
    .locals 2

    #@0
    .prologue
    .line 33
    new-instance v0, Lcom/android/dex/util/ByteArrayByteInput;

    #@2
    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@4
    invoke-direct {v0, v1}, Lcom/android/dex/util/ByteArrayByteInput;-><init>([B)V

    #@7
    return-object v0
.end method

.method public compareTo(Lcom/android/dex/EncodedValue;)I
    .locals 4
    .param p1, "other"    # Lcom/android/dex/EncodedValue;

    #@0
    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@2
    array-length v2, v2

    #@3
    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    #@5
    array-length v3, v3

    #@6
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v1

    #@a
    .line 46
    .local v1, "size":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@d
    .line 47
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@f
    aget-byte v2, v2, v0

    #@11
    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    #@13
    aget-byte v3, v3, v0

    #@15
    if-eq v2, v3, :cond_0

    #@17
    .line 48
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@19
    aget-byte v2, v2, v0

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    #@1f
    aget-byte v3, v3, v0

    #@21
    and-int/lit16 v3, v3, 0xff

    #@23
    sub-int/2addr v2, v3

    #@24
    return v2

    #@25
    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@2a
    array-length v2, v2

    #@2b
    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    #@2d
    array-length v3, v3

    #@2e
    sub-int/2addr v2, v3

    #@2f
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    check-cast p1, Lcom/android/dex/EncodedValue;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dex/EncodedValue;->compareTo(Lcom/android/dex/EncodedValue;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@7
    const/4 v2, 0x0

    #@8
    aget-byte v1, v1, v2

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "...("

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@1d
    array-length v1, v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v1, ")"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1
    .param p1, "out"    # Lcom/android/dex/Dex$Section;

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    #@2
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    #@5
    .line 40
    return-void
.end method
