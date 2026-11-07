.class public Lsun/security/util/ByteArrayLexOrder;
.super Ljava/lang/Object;
.source "ByteArrayLexOrder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lsun/security/util/ByteArrayLexOrder;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public final blacklist compare([B[B)I
    .registers 6
    .param p1, "bytes1"    # [B
    .param p2, "bytes2"    # [B

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    array-length v1, p2

    if-ge v0, v1, :cond_16

    .line 57
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v1, v2

    .line 58
    .local v1, "diff":I
    if-eqz v1, :cond_13

    .line 59
    return v1

    .line 56
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "i":I
    .end local v1    # "diff":I
    :cond_16
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    return v0
.end method
