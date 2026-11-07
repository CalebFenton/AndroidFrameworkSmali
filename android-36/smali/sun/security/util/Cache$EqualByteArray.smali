.class public Lsun/security/util/Cache$EqualByteArray;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EqualByteArray"
.end annotation


# instance fields
.field private final blacklist b:[B

.field private blacklist hash:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "b"    # [B

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 187
    if-ne p0, p1, :cond_4

    .line 188
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_4
    instance-of v0, p1, Lsun/security/util/Cache$EqualByteArray;

    if-nez v0, :cond_a

    .line 191
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/util/Cache$EqualByteArray;

    .line 194
    .local v0, "other":Lsun/security/util/Cache$EqualByteArray;
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    iget-object v2, v0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 179
    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 180
    .local v0, "h":I
    if-nez v0, :cond_12

    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v1, v1

    if-lez v1, :cond_12

    .line 181
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    move v0, v1

    iput v1, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 183
    :cond_12
    return v0
.end method
