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
.field private final b:[B

.field private volatile hash:I


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 169
    .local p0, "this":Lsun/security/util/Cache$EqualByteArray;, "Lsun/security/util/Cache<TK;TV;>.EqualByteArray;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    #@5
    .line 169
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 186
    .local p0, "this":Lsun/security/util/Cache$EqualByteArray;, "Lsun/security/util/Cache<TK;TV;>.EqualByteArray;"
    if-ne p0, p1, :cond_0

    #@2
    .line 187
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 189
    :cond_0
    instance-of v1, p1, Lsun/security/util/Cache$EqualByteArray;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 190
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 192
    check-cast v0, Lsun/security/util/Cache$EqualByteArray;

    #@d
    .line 193
    .local v0, "other":Lsun/security/util/Cache$EqualByteArray;
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    #@f
    iget-object v2, v0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    #@11
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 174
    .local p0, "this":Lsun/security/util/Cache$EqualByteArray;, "Lsun/security/util/Cache<TK;TV;>.EqualByteArray;"
    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    #@2
    .line 175
    .local v0, "h":I
    if-nez v0, :cond_1

    #@4
    .line 176
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    #@6
    array-length v2, v2

    #@7
    add-int/lit8 v0, v2, 0x1

    #@9
    .line 177
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    #@c
    array-length v2, v2

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 178
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    #@11
    aget-byte v2, v2, v1

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    mul-int/lit8 v2, v2, 0x25

    #@17
    add-int/2addr v0, v2

    #@18
    .line 177
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 180
    :cond_0
    iput v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    #@1d
    .line 182
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
