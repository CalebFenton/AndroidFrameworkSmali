.class public Lsun/security/util/ByteArrayTagOrder;
.super Ljava/lang/Object;
.source "ByteArrayTagOrder.java"

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

    .line 38
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

    .line 38
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lsun/security/util/ByteArrayTagOrder;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public final blacklist compare([B[B)I
    .registers 5
    .param p1, "bytes1"    # [B
    .param p2, "bytes2"    # [B

    .line 58
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x20

    aget-byte v0, p2, v0

    or-int/lit8 v0, v0, 0x20

    sub-int/2addr v1, v0

    return v1
.end method
