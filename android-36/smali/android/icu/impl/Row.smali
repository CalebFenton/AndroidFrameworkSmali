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
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/Row<",
        "TC0;TC1;TC2;TC3;TC4;>;>;"
    }
.end annotation


# instance fields
.field protected volatile blacklist frozen:Z

.field protected blacklist items:[Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;)",
            "Landroid/icu/impl/Row$R2<",
            "TC0;TC1;>;"
        }
    .end annotation

    .line 32
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    new-instance v0, Landroid/icu/impl/Row$R2;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Row$R2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;)",
            "Landroid/icu/impl/Row$R3<",
            "TC0;TC1;TC2;>;"
        }
    .end annotation

    .line 35
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    .local p2, "p2":Ljava/lang/Object;, "TC2;"
    new-instance v0, Landroid/icu/impl/Row$R3;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Row$R3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R4;
    .registers 5
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
            "Landroid/icu/impl/Row$R4<",
            "TC0;TC1;TC2;TC3;>;"
        }
    .end annotation

    .line 38
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    .local p2, "p2":Ljava/lang/Object;, "TC2;"
    .local p3, "p3":Ljava/lang/Object;, "TC3;"
    new-instance v0, Landroid/icu/impl/Row$R4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/icu/impl/Row$R4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R5;
    .registers 11
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
            "Landroid/icu/impl/Row$R5<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 41
    .local p0, "p0":Ljava/lang/Object;, "TC0;"
    .local p1, "p1":Ljava/lang/Object;, "TC1;"
    .local p2, "p2":Ljava/lang/Object;, "TC2;"
    .local p3, "p3":Ljava/lang/Object;, "TC3;"
    .local p4, "p4":Ljava/lang/Object;, "TC4;"
    new-instance v0, Landroid/icu/impl/Row$R5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "p0":Ljava/lang/Object;, "TC0;"
    .end local p1    # "p1":Ljava/lang/Object;, "TC1;"
    .end local p2    # "p2":Ljava/lang/Object;, "TC2;"
    .end local p3    # "p3":Ljava/lang/Object;, "TC3;"
    .end local p4    # "p4":Ljava/lang/Object;, "TC4;"
    .local v1, "p0":Ljava/lang/Object;, "TC0;"
    .local v2, "p1":Ljava/lang/Object;, "TC1;"
    .local v3, "p2":Ljava/lang/Object;, "TC2;"
    .local v4, "p3":Ljava/lang/Object;, "TC3;"
    .local v5, "p4":Ljava/lang/Object;, "TC4;"
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/Row$R5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 196
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 198
    :cond_5
    :try_start_5
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Row;

    .line 199
    .local v0, "result":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v1, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_15} :catch_16

    .line 200
    return-object v0

    .line 201
    .end local v0    # "result":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :catch_16
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist cloneAsThawed()Landroid/icu/impl/Row;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 209
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Row;

    .line 210
    .local v0, "result":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v1, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/Row;->frozen:Z
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 212
    return-object v0

    .line 213
    .end local v0    # "result":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    :catch_14
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 22
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Row;->cloneAsThawed()Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 13
    .param p1, "other"    # Ljava/lang/Object;

    .line 153
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/Row;

    .line 154
    .local v0, "that":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v1, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget-object v2, v0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 155
    .local v1, "result":I
    if-eqz v1, :cond_d

    .line 156
    return v1

    .line 158
    :cond_d
    const/4 v2, 0x0

    .line 159
    .local v2, "i":I
    iget-object v3, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_13
    if-ge v6, v4, :cond_2d

    aget-object v7, v3, v6

    .line 160
    .local v7, "item":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Comparable;

    iget-object v9, v0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "i":I
    .local v10, "i":I
    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v8, v2}, Landroid/icu/impl/Utility;->checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    .line 161
    if-eqz v1, :cond_29

    .line 162
    return v1

    .line 159
    .end local v7    # "item":Ljava/lang/Object;
    :cond_29
    add-int/lit8 v6, v6, 0x1

    move v2, v10

    goto :goto_13

    .line 165
    .end local v10    # "i":I
    .restart local v2    # "i":I
    :cond_2d
    return v5
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "other"    # Ljava/lang/Object;

    .line 127
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 131
    return v1

    .line 134
    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/Row;

    .line 135
    .local v2, "that":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v3, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v3, v3

    iget-object v4, v2, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v4, v4

    if-eq v3, v4, :cond_14

    .line 136
    return v0

    .line 138
    :cond_14
    const/4 v3, 0x0

    .line 139
    .local v3, "i":I
    iget-object v4, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v5, v4

    move v6, v0

    :goto_19
    if-ge v6, v5, :cond_2e

    aget-object v7, v4, v6

    .line 140
    .local v7, "item":Ljava/lang/Object;
    iget-object v8, v2, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .local v9, "i":I
    aget-object v3, v8, v3

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_2f

    if-nez v3, :cond_2a

    .line 141
    return v0

    .line 139
    .end local v7    # "item":Ljava/lang/Object;
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    move v3, v9

    goto :goto_19

    .line 144
    .end local v9    # "i":I
    .restart local v3    # "i":I
    :cond_2e
    return v1

    .line 145
    .end local v2    # "that":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .end local v3    # "i":I
    :catch_2f
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public blacklist freeze()Landroid/icu/impl/Row;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    .line 191
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 22
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Row;->freeze()Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get0()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC0;"
        }
    .end annotation

    .line 81
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist get1()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC1;"
        }
    .end annotation

    .line 87
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist get2()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC2;"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist get3()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC3;"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist get4()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC4;"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 118
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v0, v0

    .line 119
    .local v0, "sum":I
    iget-object v1, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 120
    .local v4, "item":Ljava/lang/Object;
    mul-int/lit8 v5, v0, 0x25

    invoke-static {v4}, Landroid/icu/impl/Utility;->checkHash(Ljava/lang/Object;)I

    move-result v6

    add-int v0, v5, v6

    .line 119
    .end local v4    # "item":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 122
    :cond_16
    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 185
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    return v0
.end method

.method protected blacklist set(ILjava/lang/Object;)Landroid/icu/impl/Row;
    .registers 5
    .param p1, "i"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    if-nez v0, :cond_9

    .line 112
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 113
    return-object p0

    .line 110
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set0(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;)",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC0;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set1(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC1;)",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC1;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set2(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC2;)",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC2;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set3(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC3;)",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC3;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set4(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC4;)",
            "Landroid/icu/impl/Row<",
            "TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "item":Ljava/lang/Object;, "TC4;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 170
    .local p0, "this":Landroid/icu/impl/Row;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 172
    .local v1, "first":Z
    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 173
    .local v5, "item":Ljava/lang/Object;
    if-eqz v1, :cond_14

    .line 174
    const/4 v1, 0x0

    goto :goto_19

    .line 176
    :cond_14
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .end local v5    # "item":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 180
    :cond_1f
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
