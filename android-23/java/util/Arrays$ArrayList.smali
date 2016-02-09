.class Ljava/util/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 36
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "storage":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 37
    if-nez p1, :cond_0

    #@5
    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "storage == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 40
    :cond_0
    iput-object p1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@10
    .line 36
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 45
    if-eqz p1, :cond_1

    #@4
    .line 46
    iget-object v3, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@6
    array-length v4, v3

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v4, :cond_3

    #@a
    aget-object v0, v3, v1

    #@c
    .line 47
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 48
    return v6

    #@13
    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 52
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v3, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@18
    array-length v4, v3

    #@19
    move v1, v2

    #@1a
    :goto_1
    if-ge v1, v4, :cond_3

    #@1c
    aget-object v0, v3, v1

    #@1e
    .line 53
    .restart local v0    # "element":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_2

    #@20
    .line 54
    return v6

    #@21
    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_1

    #@24
    .line 58
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    return v2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    :try_start_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@2
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    return-object v1

    #@5
    .line 65
    :catch_0
    move-exception v0

    #@6
    .line 66
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@8
    array-length v1, v1

    #@9
    invoke-static {p1, v1}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 73
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@5
    array-length v1, v1

    #@6
    if-ge v0, v1, :cond_3

    #@8
    .line 74
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v0

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 75
    return v0

    #@13
    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 79
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@17
    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@19
    array-length v1, v1

    #@1a
    if-ge v0, v1, :cond_3

    #@1c
    .line 80
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@1e
    aget-object v1, v1, v0

    #@20
    if-nez v1, :cond_2

    #@22
    .line 81
    return v0

    #@23
    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 85
    :cond_3
    const/4 v1, -0x1

    #@27
    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 91
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v0, v1, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@9
    .line 92
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@b
    aget-object v1, v1, v0

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 93
    return v0

    #@14
    .line 91
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_0

    #@17
    .line 97
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@19
    array-length v1, v1

    #@1a
    add-int/lit8 v0, v1, -0x1

    #@1c
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@1e
    .line 98
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@20
    aget-object v1, v1, v0

    #@22
    if-nez v1, :cond_2

    #@24
    .line 99
    return v0

    #@25
    .line 97
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_1

    #@28
    .line 103
    :cond_3
    const/4 v1, -0x1

    #@29
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@2
    aget-object v0, v1, p1

    #@4
    .line 109
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@6
    aput-object p2, v1, p1

    #@8
    .line 110
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 115
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 120
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/Object;

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@1
    .line 126
    invoke-virtual {p0}, Ljava/util/Arrays$ArrayList;->size()I

    #@4
    move-result v1

    #@5
    .line 127
    .local v1, "size":I
    array-length v2, p1

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@f
    move-result-object v0

    #@10
    .line 129
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    .end local p1    # "contents":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@16
    .line 131
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "contents":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v2, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    #@18
    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 132
    array-length v2, p1

    #@1c
    if-ge v1, v2, :cond_1

    #@1e
    .line 133
    const/4 v2, 0x0

    #@1f
    aput-object v2, p1, v1

    #@21
    .line 135
    :cond_1
    return-object p1
.end method
