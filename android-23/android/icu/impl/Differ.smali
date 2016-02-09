.class public final Landroid/icu/impl/Differ;
.super Ljava/lang/Object;
.source "Differ.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private EQUALSIZE:I

.field private STACKSIZE:I

.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private aCount:I

.field private aLine:I

.field private aTop:I

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bCount:I

.field private bLine:I

.field private bTop:I

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private maxSame:I

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "stackSize"    # I
    .param p2, "matchCount"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 164
    iput-object v2, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    #@8
    .line 165
    iput-object v2, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@a
    .line 166
    iput v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@c
    .line 167
    iput v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@e
    .line 168
    iput v1, p0, Landroid/icu/impl/Differ;->aLine:I

    #@10
    .line 169
    iput v1, p0, Landroid/icu/impl/Differ;->bLine:I

    #@12
    .line 170
    iput v0, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@14
    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    #@16
    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    #@18
    .line 26
    iput p1, p0, Landroid/icu/impl/Differ;->STACKSIZE:I

    #@1a
    .line 27
    iput p2, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@1c
    .line 28
    add-int v0, p1, p2

    #@1e
    new-array v0, v0, [Ljava/lang/Object;

    #@20
    iput-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@22
    .line 29
    add-int v0, p1, p2

    #@24
    new-array v0, v0, [Ljava/lang/Object;

    #@26
    iput-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@28
    .line 25
    return-void
.end method

.method private flush()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 142
    iget v1, p0, Landroid/icu/impl/Differ;->aTop:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 143
    iget v1, p0, Landroid/icu/impl/Differ;->aCount:I

    #@7
    iget v2, p0, Landroid/icu/impl/Differ;->aTop:I

    #@9
    sub-int v0, v1, v2

    #@b
    .line 144
    .local v0, "newCount":I
    iget-object v1, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@d
    iget v2, p0, Landroid/icu/impl/Differ;->aTop:I

    #@f
    iget-object v3, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@11
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 145
    iput v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@16
    .line 146
    iget v1, p0, Landroid/icu/impl/Differ;->aLine:I

    #@18
    iget v2, p0, Landroid/icu/impl/Differ;->aTop:I

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, p0, Landroid/icu/impl/Differ;->aLine:I

    #@1d
    .line 147
    iput v4, p0, Landroid/icu/impl/Differ;->aTop:I

    #@1f
    .line 150
    .end local v0    # "newCount":I
    :cond_0
    iget v1, p0, Landroid/icu/impl/Differ;->bTop:I

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 151
    iget v1, p0, Landroid/icu/impl/Differ;->bCount:I

    #@25
    iget v2, p0, Landroid/icu/impl/Differ;->bTop:I

    #@27
    sub-int v0, v1, v2

    #@29
    .line 152
    .restart local v0    # "newCount":I
    iget-object v1, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@2b
    iget v2, p0, Landroid/icu/impl/Differ;->bTop:I

    #@2d
    iget-object v3, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@2f
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    .line 153
    iput v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@34
    .line 154
    iget v1, p0, Landroid/icu/impl/Differ;->bLine:I

    #@36
    iget v2, p0, Landroid/icu/impl/Differ;->bTop:I

    #@38
    add-int/2addr v1, v2

    #@39
    iput v1, p0, Landroid/icu/impl/Differ;->bLine:I

    #@3b
    .line 155
    iput v4, p0, Landroid/icu/impl/Differ;->bTop:I

    #@3d
    .line 141
    .end local v0    # "newCount":I
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    .local p1, "aStr":Ljava/lang/Object;, "TT;"
    .local p2, "bStr":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/Differ;->addA(Ljava/lang/Object;)V

    #@3
    .line 34
    invoke-virtual {p0, p2}, Landroid/icu/impl/Differ;->addB(Ljava/lang/Object;)V

    #@6
    .line 32
    return-void
.end method

.method public addA(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    .local p1, "aStr":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/icu/impl/Differ;->flush()V

    #@3
    .line 39
    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@5
    iget v1, p0, Landroid/icu/impl/Differ;->aCount:I

    #@7
    add-int/lit8 v2, v1, 0x1

    #@9
    iput v2, p0, Landroid/icu/impl/Differ;->aCount:I

    #@b
    aput-object p1, v0, v1

    #@d
    .line 37
    return-void
.end method

.method public addB(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    .local p1, "bStr":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/icu/impl/Differ;->flush()V

    #@3
    .line 44
    iget-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@5
    iget v1, p0, Landroid/icu/impl/Differ;->bCount:I

    #@7
    add-int/lit8 v2, v1, 0x1

    #@9
    iput v2, p0, Landroid/icu/impl/Differ;->bCount:I

    #@b
    aput-object p1, v0, v1

    #@d
    .line 42
    return-void
.end method

.method public checkMatch(Z)V
    .locals 12
    .param p1, "finalPass"    # Z

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 77
    iget v9, p0, Landroid/icu/impl/Differ;->aCount:I

    #@4
    .line 78
    .local v9, "max":I
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@6
    if-le v9, v0, :cond_0

    #@8
    iget v9, p0, Landroid/icu/impl/Differ;->bCount:I

    #@a
    .line 80
    :cond_0
    const/4 v7, 0x0

    #@b
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    #@d
    .line 81
    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@f
    aget-object v0, v0, v7

    #@11
    iget-object v1, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@13
    aget-object v1, v1, v7

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_3

    #@1b
    .line 84
    :cond_1
    iput v7, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@1d
    .line 85
    iget v0, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@1f
    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    #@21
    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    #@23
    .line 86
    iget v0, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@25
    if-lez v0, :cond_2

    #@27
    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@29
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@2b
    add-int/lit8 v1, v1, -0x1

    #@2d
    aget-object v0, v0, v1

    #@2f
    iput-object v0, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    #@31
    .line 87
    :cond_2
    iput-object v10, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@33
    .line 89
    if-eqz p1, :cond_4

    #@35
    .line 90
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@37
    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    #@39
    .line 91
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@3b
    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    #@3d
    .line 92
    iput-object v10, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@3f
    .line 93
    return-void

    #@40
    .line 80
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@42
    goto :goto_0

    #@43
    .line 96
    :cond_4
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@45
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@47
    sub-int/2addr v0, v1

    #@48
    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@4a
    if-lt v0, v1, :cond_5

    #@4c
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@4e
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@50
    sub-int/2addr v0, v1

    #@51
    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@53
    if-ge v0, v1, :cond_6

    #@55
    :cond_5
    return-void

    #@56
    .line 99
    :cond_6
    iget-object v1, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@58
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@5a
    iget v2, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@5c
    sub-int v2, v0, v2

    #@5e
    iget v3, p0, Landroid/icu/impl/Differ;->aCount:I

    #@60
    iget-object v4, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@62
    iget v5, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@64
    iget v6, p0, Landroid/icu/impl/Differ;->bCount:I

    #@66
    move-object v0, p0

    #@67
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Differ;->find([Ljava/lang/Object;II[Ljava/lang/Object;II)I

    #@6a
    move-result v8

    #@6b
    .line 100
    .local v8, "match":I
    if-eq v8, v11, :cond_7

    #@6d
    .line 101
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@6f
    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@71
    sub-int/2addr v0, v1

    #@72
    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    #@74
    .line 102
    iput v8, p0, Landroid/icu/impl/Differ;->bTop:I

    #@76
    .line 103
    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@78
    iget v1, p0, Landroid/icu/impl/Differ;->aTop:I

    #@7a
    aget-object v0, v0, v1

    #@7c
    iput-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@7e
    .line 104
    return-void

    #@7f
    .line 106
    :cond_7
    iget-object v1, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@81
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@83
    iget v2, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@85
    sub-int v2, v0, v2

    #@87
    iget v3, p0, Landroid/icu/impl/Differ;->bCount:I

    #@89
    iget-object v4, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@8b
    iget v5, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@8d
    iget v6, p0, Landroid/icu/impl/Differ;->aCount:I

    #@8f
    move-object v0, p0

    #@90
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Differ;->find([Ljava/lang/Object;II[Ljava/lang/Object;II)I

    #@93
    move-result v8

    #@94
    .line 107
    if-eq v8, v11, :cond_8

    #@96
    .line 108
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@98
    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    #@9a
    sub-int/2addr v0, v1

    #@9b
    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    #@9d
    .line 109
    iput v8, p0, Landroid/icu/impl/Differ;->aTop:I

    #@9f
    .line 110
    iget-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@a1
    iget v1, p0, Landroid/icu/impl/Differ;->bTop:I

    #@a3
    aget-object v0, v0, v1

    #@a5
    iput-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@a7
    .line 111
    return-void

    #@a8
    .line 113
    :cond_8
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@aa
    iget v1, p0, Landroid/icu/impl/Differ;->STACKSIZE:I

    #@ac
    if-ge v0, v1, :cond_9

    #@ae
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@b0
    iget v1, p0, Landroid/icu/impl/Differ;->STACKSIZE:I

    #@b2
    if-lt v0, v1, :cond_a

    #@b4
    .line 115
    :cond_9
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@b6
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@b8
    add-int/2addr v0, v1

    #@b9
    div-int/lit8 v0, v0, 0x2

    #@bb
    iput v0, p0, Landroid/icu/impl/Differ;->aCount:I

    #@bd
    .line 116
    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@bf
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@c1
    add-int/2addr v0, v1

    #@c2
    div-int/lit8 v0, v0, 0x2

    #@c4
    iput v0, p0, Landroid/icu/impl/Differ;->bCount:I

    #@c6
    .line 117
    iput-object v10, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@c8
    .line 75
    :cond_a
    return-void
.end method

.method public find([Ljava/lang/Object;II[Ljava/lang/Object;II)I
    .locals 6
    .param p2, "aStart"    # I
    .param p3, "aEnd"    # I
    .param p5, "bStart"    # I
    .param p6, "bEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II[TT;II)I"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    .local p1, "aArr":[Ljava/lang/Object;, "[TT;"
    .local p4, "bArr":[Ljava/lang/Object;, "[TT;"
    sub-int v3, p3, p2

    #@2
    .line 128
    .local v3, "len":I
    sub-int v0, p6, v3

    #@4
    .line 130
    .local v0, "bEndMinus":I
    move v1, p5

    #@5
    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@7
    .line 131
    const/4 v2, 0x0

    #@8
    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@a
    .line 132
    add-int v4, v1, v2

    #@c
    aget-object v4, p4, v4

    #@e
    add-int v5, p2, v2

    #@10
    aget-object v5, p1, v5

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_0

    #@18
    .line 130
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 131
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 134
    :cond_1
    return v1

    #@1f
    .line 136
    .end local v2    # "j":I
    :cond_2
    const/4 v4, -0x1

    #@20
    return v4
.end method

.method public getA(I)Ljava/lang/Object;
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    if-gez p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    #@4
    return-object v0

    #@5
    .line 53
    :cond_0
    iget v0, p0, Landroid/icu/impl/Differ;->aTop:I

    #@7
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@9
    sub-int/2addr v0, v1

    #@a
    if-le p1, v0, :cond_1

    #@c
    iget-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@e
    return-object v0

    #@f
    .line 54
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    #@11
    aget-object v0, v0, p1

    #@13
    return-object v0
.end method

.method public getACount()I
    .locals 2

    #@0
    .prologue
    .line 58
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    iget v0, p0, Landroid/icu/impl/Differ;->aTop:I

    #@2
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getALine(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 48
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    iget v0, p0, Landroid/icu/impl/Differ;->aLine:I

    #@2
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@4
    add-int/2addr v0, v1

    #@5
    add-int/2addr v0, p1

    #@6
    return v0
.end method

.method public getB(I)Ljava/lang/Object;
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    if-gez p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    #@4
    return-object v0

    #@5
    .line 71
    :cond_0
    iget v0, p0, Landroid/icu/impl/Differ;->bTop:I

    #@7
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@9
    sub-int/2addr v0, v1

    #@a
    if-le p1, v0, :cond_1

    #@c
    iget-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    #@e
    return-object v0

    #@f
    .line 72
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    #@11
    aget-object v0, v0, p1

    #@13
    return-object v0
.end method

.method public getBCount()I
    .locals 2

    #@0
    .prologue
    .line 62
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    iget v0, p0, Landroid/icu/impl/Differ;->bTop:I

    #@2
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getBLine(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 66
    .local p0, "this":Landroid/icu/impl/Differ;, "Landroid/icu/impl/Differ<TT;>;"
    iget v0, p0, Landroid/icu/impl/Differ;->bLine:I

    #@2
    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    #@4
    add-int/2addr v0, v1

    #@5
    add-int/2addr v0, p1

    #@6
    return v0
.end method
