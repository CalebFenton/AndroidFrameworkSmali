.class public Lsun/security/util/ByteArrayLexOrder;
.super Ljava/lang/Object;
.source "ByteArrayLexOrder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "bytes1"    # Ljava/lang/Object;
    .param p2, "bytes2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 53
    check-cast p1, [B

    #@2
    .end local p1    # "bytes1":Ljava/lang/Object;
    check-cast p2, [B

    #@4
    .end local p2    # "bytes2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/util/ByteArrayLexOrder;->compare([B[B)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final compare([B[B)I
    .locals 4
    .param p1, "bytes1"    # [B
    .param p2, "bytes2"    # [B

    #@0
    .prologue
    .line 55
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v1, v2, :cond_1

    #@4
    array-length v2, p2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 56
    aget-byte v2, p1, v1

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    aget-byte v3, p2, v1

    #@d
    and-int/lit16 v3, v3, 0xff

    #@f
    sub-int v0, v2, v3

    #@11
    .line 57
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@13
    .line 58
    return v0

    #@14
    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 63
    .end local v0    # "diff":I
    :cond_1
    array-length v2, p1

    #@18
    array-length v3, p2

    #@19
    sub-int/2addr v2, v3

    #@1a
    return v2
.end method
