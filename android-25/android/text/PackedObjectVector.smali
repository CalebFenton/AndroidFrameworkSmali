.class Landroid/text/PackedObjectVector;
.super Ljava/lang/Object;
.source "PackedObjectVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "columns"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@6
    .line 38
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@8
    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@a
    .line 39
    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@c
    .line 41
    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@e
    .line 42
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@10
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@12
    .line 35
    return-void
.end method

.method private growBuffer()V
    .locals 7

    #@0
    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 115
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    #@4
    move-result v3

    #@5
    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@8
    move-result v3

    #@9
    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@b
    mul-int/2addr v3, v4

    #@c
    .line 114
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    .line 116
    .local v2, "newvalues":[Ljava/lang/Object;
    array-length v3, v2

    #@11
    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@13
    div-int v1, v3, v4

    #@15
    .line 117
    .local v1, "newsize":I
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@17
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@19
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@1b
    add-int/2addr v4, v5

    #@1c
    sub-int v0, v3, v4

    #@1e
    .line 119
    .local v0, "after":I
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@20
    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@22
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@24
    mul-int/2addr v4, v5

    #@25
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 120
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@2a
    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@2c
    sub-int/2addr v4, v0

    #@2d
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@2f
    mul-int/2addr v4, v5

    #@30
    sub-int v5, v1, v0

    #@32
    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@34
    mul-int/2addr v5, v6

    #@35
    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@37
    mul-int/2addr v6, v0

    #@38
    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 122
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@3d
    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@3f
    sub-int v4, v1, v4

    #@41
    add-int/2addr v3, v4

    #@42
    iput v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@44
    .line 123
    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@46
    .line 124
    iput-object v2, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@48
    .line 112
    return-void
.end method

.method private moveRowGapTo(I)V
    .locals 8
    .param p1, "where"    # I

    #@0
    .prologue
    .line 130
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@2
    if-ne p1, v5, :cond_0

    #@4
    .line 131
    return-void

    #@5
    .line 133
    :cond_0
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@7
    if-le p1, v5, :cond_2

    #@9
    .line 135
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@b
    add-int/2addr v5, p1

    #@c
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@e
    iget v7, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@10
    add-int/2addr v6, v7

    #@11
    sub-int v3, v5, v6

    #@13
    .line 137
    .local v3, "moving":I
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@15
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@17
    add-int v1, v5, v6

    #@19
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@1b
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@1d
    add-int/2addr v5, v6

    #@1e
    add-int/2addr v5, v3

    #@1f
    if-ge v1, v5, :cond_4

    #@21
    .line 139
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@23
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@25
    add-int/2addr v5, v6

    #@26
    sub-int v5, v1, v5

    #@28
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@2a
    add-int v0, v5, v6

    #@2c
    .line 141
    .local v0, "destrow":I
    const/4 v2, 0x0

    #@2d
    .local v2, "j":I
    :goto_1
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@2f
    if-ge v2, v5, :cond_1

    #@31
    .line 143
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@33
    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@35
    mul-int/2addr v6, v1

    #@36
    add-int/2addr v6, v2

    #@37
    aget-object v4, v5, v6

    #@39
    .line 145
    .local v4, "val":Ljava/lang/Object;
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@3b
    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@3d
    mul-int/2addr v6, v0

    #@3e
    add-int/2addr v6, v2

    #@3f
    aput-object v4, v5, v6

    #@41
    .line 141
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 137
    .end local v4    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 151
    .end local v0    # "destrow":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "moving":I
    :cond_2
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@49
    sub-int v3, v5, p1

    #@4b
    .line 153
    .restart local v3    # "moving":I
    add-int v5, p1, v3

    #@4d
    add-int/lit8 v1, v5, -0x1

    #@4f
    .restart local v1    # "i":I
    :goto_2
    if-lt v1, p1, :cond_4

    #@51
    .line 155
    sub-int v5, v1, p1

    #@53
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@55
    add-int/2addr v5, v6

    #@56
    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@58
    add-int/2addr v5, v6

    #@59
    sub-int v0, v5, v3

    #@5b
    .line 157
    .restart local v0    # "destrow":I
    const/4 v2, 0x0

    #@5c
    .restart local v2    # "j":I
    :goto_3
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@5e
    if-ge v2, v5, :cond_3

    #@60
    .line 159
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@62
    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@64
    mul-int/2addr v6, v1

    #@65
    add-int/2addr v6, v2

    #@66
    aget-object v4, v5, v6

    #@68
    .line 161
    .restart local v4    # "val":Ljava/lang/Object;
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@6a
    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@6c
    mul-int/2addr v6, v0

    #@6d
    add-int/2addr v6, v2

    #@6e
    aput-object v4, v5, v6

    #@70
    .line 157
    add-int/lit8 v2, v2, 0x1

    #@72
    goto :goto_3

    #@73
    .line 153
    .end local v4    # "val":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@75
    goto :goto_2

    #@76
    .line 166
    .end local v0    # "destrow":I
    .end local v2    # "j":I
    :cond_4
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@78
    .line 128
    return-void
.end method


# virtual methods
.method public deleteAt(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 87
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    add-int v0, p1, p2

    #@2
    invoke-direct {p0, v0}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    #@5
    .line 89
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@7
    sub-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@a
    .line 90
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@c
    add-int/2addr v0, p2

    #@d
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@f
    .line 92
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@11
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    #@14
    move-result v1

    #@15
    mul-int/lit8 v1, v1, 0x2

    #@17
    if-le v0, v1, :cond_0

    #@19
    .line 85
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 6

    #@0
    .prologue
    .line 172
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@3
    if-ge v0, v3, :cond_3

    #@5
    .line 174
    const/4 v1, 0x0

    #@6
    .local v1, "j":I
    :goto_1
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@8
    if-ge v1, v3, :cond_2

    #@a
    .line 176
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@c
    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@e
    mul-int/2addr v4, v0

    #@f
    add-int/2addr v4, v1

    #@10
    aget-object v2, v3, v4

    #@12
    .line 178
    .local v2, "val":Ljava/lang/Object;
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@14
    if-lt v0, v3, :cond_0

    #@16
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@18
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@1a
    add-int/2addr v3, v4

    #@1b
    if-lt v0, v3, :cond_1

    #@1d
    .line 179
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, " "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@36
    .line 174
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 181
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "("

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    const-string/jumbo v5, ") "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@59
    goto :goto_2

    #@5a
    .line 184
    .end local v2    # "val":Ljava/lang/Object;
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v4, " << \n"

    #@5f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@62
    .line 172
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_0

    #@65
    .line 187
    .end local v1    # "j":I
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    const-string/jumbo v4, "-----\n\n"

    #@6a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6d
    .line 170
    return-void
.end method

.method public getValue(II)Ljava/lang/Object;
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@2
    if-lt p1, v1, :cond_0

    #@4
    .line 49
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@6
    add-int/2addr p1, v1

    #@7
    .line 51
    :cond_0
    iget-object v1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@9
    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@b
    mul-int/2addr v2, p1

    #@c
    add-int/2addr v2, p2

    #@d
    aget-object v0, v1, v2

    #@f
    .line 53
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method public insertAt(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TE;"
    const/4 v2, 0x0

    #@1
    .line 68
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    #@4
    .line 70
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@6
    if-nez v1, :cond_0

    #@8
    .line 71
    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    #@b
    .line 73
    :cond_0
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@11
    .line 74
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@17
    .line 76
    if-nez p2, :cond_1

    #@19
    .line 77
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@1c
    if-ge v0, v1, :cond_2

    #@1e
    .line 78
    invoke-virtual {p0, p1, v0, v2}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    #@21
    .line 77
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 80
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@25
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@27
    if-ge v0, v1, :cond_2

    #@29
    .line 81
    aget-object v1, p2, v0

    #@2b
    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    #@2e
    .line 80
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 66
    :cond_2
    return-void
.end method

.method public setValue(IILjava/lang/Object;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 60
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@6
    add-int/2addr p1, v0

    #@7
    .line 62
    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    #@9
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@b
    mul-int/2addr v1, p1

    #@c
    add-int/2addr v1, p2

    #@d
    aput-object p3, v0, v1

    #@f
    .line 57
    return-void
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 102
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    #@2
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public width()I
    .locals 1

    #@0
    .prologue
    .line 108
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    #@2
    return v0
.end method
