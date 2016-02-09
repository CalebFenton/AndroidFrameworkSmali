.class public Landroid/icu/impl/Row;
.super Ljava/lang/Object;
.source "Row.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Row$R2;,
        Landroid/icu/impl/Row$R3;,
        Landroid/icu/impl/Row$R4;,
        Landroid/icu/impl/Row$R5;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        "C2:",
        "Ljava/lang/Object;",
        "C3:",
        "Ljava/lang/Object;",
        "C4:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/Row",
        "<TC0;TC1;TC2;TC3;TC4;>;>;"
    }
.end annotation


# instance fields
.field protected volatile frozen:Z

.field protected items:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;)",
            "Landroid/icu/impl/Row$R2",
            "<TC0;TC1;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 24
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    new-instance v0, Landroid/icu/impl/Row$R2;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Row$R2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;)",
            "Landroid/icu/impl/Row$R3",
            "<TC0;TC1;TC2;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 27
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    .local p2, "p2":Ljava/lang/Object;, "TC2;"
    new-instance v0, Landroid/icu/impl/Row$R3;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Row$R3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            "C3:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;TC3;)",
            "Landroid/icu/impl/Row$R4",
            "<TC0;TC1;TC2;TC3;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 30
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    .local p2, "p2":Ljava/lang/Object;, "TC2;"
    .local p3, "p3":Ljava/lang/Object;, "TC3;"
    new-instance v0, Landroid/icu/impl/Row$R4;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/icu/impl/Row$R4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R5;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            "C3:",
            "Ljava/lang/Object;",
            "C4:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;TC3;TC4;)",
            "Landroid/icu/impl/Row$R5",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    .local p2, "p2":Ljava/lang/Object;, "TC2;"
    .local p3, "p3":Ljava/lang/Object;, "TC3;"
    .local p4, "p4":Ljava/lang/Object;, "TC4;"
    new-instance v0, Landroid/icu/impl/Row$R5;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/Row$R5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 169
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-boolean v2, p0, Landroid/icu/impl/Row;->frozen:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    return-object p0

    #@5
    .line 171
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/icu/impl/Row;

    #@b
    .line 172
    .local v1, "result":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@d
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, [Ljava/lang/Object;

    #@13
    iput-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 173
    return-object v1

    #@16
    .line 174
    .end local v1    # "result":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :catch_0
    move-exception v0

    #@17
    .line 175
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method public cloneAsThawed()Landroid/icu/impl/Row;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/Row;

    #@6
    .line 182
    .local v1, "result":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [Ljava/lang/Object;

    #@e
    iput-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@10
    .line 183
    const/4 v2, 0x0

    #@11
    iput-boolean v2, v1, Landroid/icu/impl/Row;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 184
    return-object v1

    #@14
    .line 185
    .end local v1    # "result":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :catch_0
    move-exception v0

    #@15
    .line 186
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@16
    return-object v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 179
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Row;->cloneAsThawed()Landroid/icu/impl/Row;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    const/4 v7, 0x0

    #@1
    move-object v4, p1

    #@2
    .line 130
    check-cast v4, Landroid/icu/impl/Row;

    #@4
    .line 131
    .local v4, "that":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v5, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@6
    array-length v5, v5

    #@7
    iget-object v6, v4, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@9
    array-length v6, v6

    #@a
    sub-int v3, v5, v6

    #@c
    .line 132
    .local v3, "result":I
    if-eqz v3, :cond_0

    #@e
    .line 133
    return v3

    #@f
    .line 135
    :cond_0
    const/4 v0, 0x0

    #@10
    .line 136
    .local v0, "i":I
    iget-object v8, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@12
    array-length v9, v8

    #@13
    move v6, v7

    #@14
    move v1, v0

    #@15
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v6, v9, :cond_2

    #@17
    aget-object v2, v8, v6

    #@19
    .line 137
    .local v2, "item":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Comparable;

    #@1b
    .end local v2    # "item":Ljava/lang/Object;
    iget-object v5, v4, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@1d
    add-int/lit8 v0, v1, 0x1

    #@1f
    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v5, v5, v1

    #@21
    check-cast v5, Ljava/lang/Comparable;

    #@23
    invoke-static {v2, v5}, Landroid/icu/impl/Utility;->checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    #@26
    move-result v3

    #@27
    .line 138
    if-eqz v3, :cond_1

    #@29
    .line 139
    return v3

    #@2a
    .line 136
    :cond_1
    add-int/lit8 v5, v6, 0x1

    #@2c
    move v6, v5

    #@2d
    move v1, v0

    #@2e
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@2f
    .line 142
    :cond_2
    return v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    const/4 v11, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 105
    if-nez p1, :cond_0

    #@4
    .line 106
    return v7

    #@5
    .line 108
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 109
    return v11

    #@8
    .line 112
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/impl/Row;

    #@b
    move-object v5, v0

    #@c
    .line 113
    .local v5, "that":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v6, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@e
    array-length v6, v6

    #@f
    iget-object v8, v5, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@11
    array-length v8, v8

    #@12
    if-eq v6, v8, :cond_2

    #@14
    .line 114
    return v7

    #@15
    .line 116
    :cond_2
    const/4 v2, 0x0

    #@16
    .line 117
    .local v2, "i":I
    iget-object v8, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@18
    array-length v9, v8

    #@19
    move v6, v7

    #@1a
    move v3, v2

    #@1b
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v6, v9, :cond_4

    #@1d
    aget-object v4, v8, v6

    #@1f
    .line 118
    .local v4, "item":Ljava/lang/Object;
    iget-object v10, v5, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@21
    add-int/lit8 v2, v3, 0x1

    #@23
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v10, v10, v3

    #@25
    invoke-static {v4, v10}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v10

    #@29
    if-nez v10, :cond_3

    #@2b
    .line 119
    return v7

    #@2c
    .line 117
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@2e
    move v3, v2

    #@2f
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@30
    .line 122
    .end local v4    # "item":Ljava/lang/Object;
    :cond_4
    return v11

    #@31
    .line 123
    .end local v3    # "i":I
    .end local v5    # "that":Landroid/icu/impl/Row;, "Lcom/ibm/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :catch_0
    move-exception v1

    #@32
    .line 124
    .local v1, "e":Ljava/lang/Exception;
    return v7
.end method

.method public freeze()Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    #@3
    .line 165
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 163
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Row;->freeze()Landroid/icu/impl/Row;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC0;"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public get1()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC1;"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x1

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public get2()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC2;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x2

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public get3()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC3;"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x3

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public get4()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC4;"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x4

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .line 97
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@2
    array-length v1, v2

    #@3
    .line 98
    .local v1, "sum":I
    iget-object v3, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    array-length v4, v3

    #@7
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    aget-object v0, v3, v2

    #@b
    .line 99
    .local v0, "item":Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x25

    #@d
    invoke-static {v0}, Landroid/icu/impl/Utility;->checkHash(Ljava/lang/Object;)I

    #@10
    move-result v6

    #@11
    add-int v1, v5, v6

    #@13
    .line 98
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 101
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 160
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    #@2
    return v0
.end method

.method protected set(ILjava/lang/Object;)Landroid/icu/impl/Row;
    .locals 2
    .param p1, "i"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 92
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@f
    aput-object p2, v0, p1

    #@11
    .line 93
    return-object p0
.end method

.method public set0(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC0;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public set1(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC1;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC1;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public set2(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC2;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC2;"
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public set3(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC3;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC3;"
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public set4(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC4;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC4;"
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 146
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "["

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 147
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@9
    .line 148
    .local v0, "first":Z
    iget-object v4, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    #@b
    const/4 v3, 0x0

    #@c
    array-length v5, v4

    #@d
    :goto_0
    if-ge v3, v5, :cond_1

    #@f
    aget-object v1, v4, v3

    #@11
    .line 149
    .local v1, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@13
    .line 150
    const/4 v0, 0x0

    #@14
    .line 154
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 148
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 152
    :cond_0
    const-string/jumbo v6, ", "

    #@1d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_1

    #@21
    .line 156
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "]"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method
