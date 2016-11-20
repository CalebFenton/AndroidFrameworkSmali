.class public final Lorg/apache/http/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 73
    if-nez p0, :cond_1

    #@4
    .line 74
    if-nez p1, :cond_0

    #@6
    .line 75
    return v4

    #@7
    .line 77
    :cond_0
    return v3

    #@8
    .line 80
    :cond_1
    if-eqz p1, :cond_4

    #@a
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-ne v1, v2, :cond_4

    #@e
    .line 81
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_3

    #@12
    .line 82
    aget-object v1, p0, v0

    #@14
    aget-object v2, p1, v0

    #@16
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 83
    return v3

    #@1d
    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 86
    :cond_3
    return v4

    #@21
    .line 88
    .end local v0    # "i":I
    :cond_4
    return v3
.end method

.method public static hashCode(II)I
    .locals 1
    .param p0, "seed"    # I
    .param p1, "hashcode"    # I

    #@0
    .prologue
    .line 57
    mul-int/lit8 v0, p0, 0x25

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .locals 1
    .param p0, "seed"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 65
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static hashCode(IZ)I
    .locals 1
    .param p0, "seed"    # I
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 61
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    #@6
    move-result v0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
