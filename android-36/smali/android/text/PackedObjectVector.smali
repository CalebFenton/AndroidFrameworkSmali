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
.field private greylist-max-o mColumns:I

.field private greylist-max-o mRowGapLength:I

.field private greylist-max-o mRowGapStart:I

.field private greylist-max-o mRows:I

.field private greylist-max-o mValues:[Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "columns"    # I

    .line 37
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 39
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 42
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 43
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 44
    return-void
.end method

.method private greylist-max-o growBuffer()V
    .registers 8

    .line 115
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    nop

    .line 116
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v0, v1

    .line 115
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "newvalues":[Ljava/lang/Object;
    array-length v1, v0

    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int/2addr v1, v2

    .line 118
    .local v1, "newsize":I
    iget v2, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 120
    .local v2, "after":I
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    mul-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v5

    sub-int v5, v1, v2

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v2

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 124
    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 125
    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 126
    return-void
.end method

.method private greylist-max-o moveRowGapTo(I)V
    .registers 9
    .param p1, "where"    # I

    .line 131
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-ne p1, v0, :cond_5

    .line 132
    return-void

    .line 134
    :cond_5
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-le p1, v0, :cond_45

    .line 136
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 138
    .local v0, "moving":I
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_17
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_44

    .line 140
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v2, v3

    sub-int v2, v1, v2

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v2, v3

    .line 142
    .local v2, "destrow":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2a
    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v3, v4, :cond_41

    .line 144
    iget-object v4, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    .line 146
    .local v4, "val":Ljava/lang/Object;
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v3

    aput-object v4, v5, v6

    .line 142
    .end local v4    # "val":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 138
    .end local v2    # "destrow":I
    .end local v3    # "j":I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 149
    .end local v0    # "moving":I
    .end local v1    # "i":I
    :cond_44
    goto :goto_72

    .line 152
    :cond_45
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr v0, p1

    .line 154
    .restart local v0    # "moving":I
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_4c
    if-lt v1, p1, :cond_72

    .line 156
    sub-int v2, v1, p1

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 158
    .restart local v2    # "destrow":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_58
    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v3, v4, :cond_6f

    .line 160
    iget-object v4, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    .line 162
    .restart local v4    # "val":Ljava/lang/Object;
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v3

    aput-object v4, v5, v6

    .line 158
    .end local v4    # "val":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 154
    .end local v2    # "destrow":I
    .end local v3    # "j":I
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    .line 167
    .end local v0    # "moving":I
    .end local v1    # "i":I
    :cond_72
    :goto_72
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 168
    return-void
.end method


# virtual methods
.method public greylist-max-o deleteAt(II)V
    .registers 4
    .param p1, "row"    # I
    .param p2, "count"    # I

    .line 88
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 90
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 91
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 93
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    .line 98
    return-void
.end method

.method public greylist-max-o dump()V
    .registers 7

    .line 173
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    if-ge v0, v1, :cond_62

    .line 175
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v1, v2, :cond_58

    .line 177
    iget-object v2, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    .line 179
    .local v2, "val":Ljava/lang/Object;
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt v0, v3, :cond_3d

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1e

    goto :goto_3d

    .line 182
    :cond_1e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_55

    .line 180
    :cond_3d
    :goto_3d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 175
    .end local v2    # "val":Ljava/lang/Object;
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 185
    .end local v1    # "j":I
    :cond_58
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " << \n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "i":I
    :cond_62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public greylist-max-o getValue(II)Ljava/lang/Object;
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 50
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 52
    :cond_7
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 54
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method public greylist-max-o insertAt(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 71
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    if-nez v0, :cond_a

    .line 72
    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    .line 74
    :cond_a
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 75
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 77
    if-nez p2, :cond_25

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_24

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0    # "i":I
    :cond_24
    goto :goto_32

    .line 81
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_32

    .line 82
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 83
    .end local v0    # "i":I
    :cond_32
    :goto_32
    return-void
.end method

.method public greylist-max-o setValue(IILjava/lang/Object;)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 61
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 63
    :cond_7
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-object p3, v0, v1

    .line 64
    return-void
.end method

.method public greylist-max-o size()I
    .registers 3

    .line 103
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o width()I
    .registers 2

    .line 109
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    return v0
.end method
