.class public Landroid/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/PathParser$ExtractFloatResult;,
        Landroid/util/PathParser$PathDataNode;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    const-class v0, Landroid/util/PathParser;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    #@8
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 2
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/util/PathParser$PathDataNode;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, p2, v1}, Landroid/util/PathParser$PathDataNode;-><init>(C[FLandroid/util/PathParser$PathDataNode;)V

    #@6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 148
    return-void
.end method

.method public static canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z
    .locals 4
    .param p0, "nodesFrom"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 97
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 98
    :cond_0
    return v3

    #@6
    .line 101
    :cond_1
    array-length v1, p0

    #@7
    array-length v2, p1

    #@8
    if-eq v1, v2, :cond_2

    #@a
    .line 102
    return v3

    #@b
    .line 105
    :cond_2
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@d
    if-ge v0, v1, :cond_5

    #@f
    .line 106
    aget-object v1, p0, v0

    #@11
    invoke-static {v1}, Landroid/util/PathParser$PathDataNode;->-get1(Landroid/util/PathParser$PathDataNode;)C

    #@14
    move-result v1

    #@15
    aget-object v2, p1, v0

    #@17
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->-get1(Landroid/util/PathParser$PathDataNode;)C

    #@1a
    move-result v2

    #@1b
    if-ne v1, v2, :cond_3

    #@1d
    .line 107
    aget-object v1, p0, v0

    #@1f
    invoke-static {v1}, Landroid/util/PathParser$PathDataNode;->-get0(Landroid/util/PathParser$PathDataNode;)[F

    #@22
    move-result-object v1

    #@23
    array-length v1, v1

    #@24
    aget-object v2, p1, v0

    #@26
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->-get0(Landroid/util/PathParser$PathDataNode;)[F

    #@29
    move-result-object v2

    #@2a
    array-length v2, v2

    #@2b
    if-eq v1, v2, :cond_4

    #@2d
    .line 108
    :cond_3
    return v3

    #@2e
    .line 105
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 111
    :cond_5
    const/4 v1, 0x1

    #@32
    return v1
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;
    .locals 8
    .param p0, "pathData"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 52
    if-nez p0, :cond_0

    #@4
    .line 53
    return-object v5

    #@5
    .line 55
    :cond_0
    const/4 v3, 0x0

    #@6
    .line 56
    .local v3, "start":I
    const/4 v0, 0x1

    #@7
    .line 58
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 59
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/PathParser$PathDataNode;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v5

    #@10
    if-ge v0, v5, :cond_2

    #@12
    .line 60
    invoke-static {p0, v0}, Landroid/util/PathParser;->nextStart(Ljava/lang/String;I)I

    #@15
    move-result v0

    #@16
    .line 61
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 62
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v5

    #@22
    if-lez v5, :cond_1

    #@24
    .line 63
    invoke-static {v2}, Landroid/util/PathParser;->getFloats(Ljava/lang/String;)[F

    #@27
    move-result-object v4

    #@28
    .line 64
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v5

    #@2c
    invoke-static {v1, v5, v4}, Landroid/util/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    #@2f
    .line 67
    .end local v4    # "val":[F
    :cond_1
    move v3, v0

    #@30
    .line 68
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 70
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    sub-int v5, v0, v3

    #@35
    const/4 v6, 0x1

    #@36
    if-ne v5, v6, :cond_3

    #@38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3b
    move-result v5

    #@3c
    if-ge v3, v5, :cond_3

    #@3e
    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v5

    #@42
    new-array v6, v7, [F

    #@44
    invoke-static {v1, v5, v6}, Landroid/util/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    #@47
    .line 73
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@4a
    move-result v5

    #@4b
    new-array v5, v5, [Landroid/util/PathParser$PathDataNode;

    #@4d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@50
    move-result-object v5

    #@51
    check-cast v5, [Landroid/util/PathParser$PathDataNode;

    #@53
    return-object v5
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 6
    .param p0, "pathData"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 34
    new-instance v2, Landroid/graphics/Path;

    #@3
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    #@6
    .line 35
    .local v2, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@9
    move-result-object v1

    #@a
    .line 36
    .local v1, "nodes":[Landroid/util/PathParser$PathDataNode;
    if-eqz v1, :cond_0

    #@c
    .line 38
    :try_start_0
    invoke-static {v1, v2}, Landroid/util/PathParser$PathDataNode;->nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 42
    return-object v2

    #@10
    .line 39
    :catch_0
    move-exception v0

    #@11
    .line 40
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Error in parsing "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    throw v3

    #@2b
    .line 44
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-object v3
.end method

.method public static deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;
    .locals 5
    .param p0, "source"    # [Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 81
    if-nez p0, :cond_0

    #@3
    .line 82
    return-object v4

    #@4
    .line 84
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [Landroid/util/PathParser$PathDataNode;

    #@7
    .line 85
    .local v0, "copy":[Landroid/util/PathParser$PathDataNode;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 86
    new-instance v2, Landroid/util/PathParser$PathDataNode;

    #@d
    aget-object v3, p0, v1

    #@f
    invoke-direct {v2, v3, v4}, Landroid/util/PathParser$PathDataNode;-><init>(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$PathDataNode;)V

    #@12
    aput-object v2, v0, v1

    #@14
    .line 85
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 88
    :cond_1
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroid/util/PathParser$ExtractFloatResult;)V
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/util/PathParser$ExtractFloatResult;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 213
    move v1, p1

    #@2
    .line 214
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    #@3
    .line 215
    .local v2, "foundSeparator":Z
    const/4 v6, 0x0

    #@4
    iput-boolean v6, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@6
    .line 216
    const/4 v5, 0x0

    #@7
    .line 217
    .local v5, "secondDot":Z
    const/4 v3, 0x0

    #@8
    .line 218
    .local v3, "isExponential":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v6

    #@c
    if-ge v1, v6, :cond_1

    #@e
    .line 219
    move v4, v3

    #@f
    .line 220
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    #@10
    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 222
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_0

    #@17
    .line 248
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    #@19
    .line 254
    .end local v0    # "currentChar":C
    .end local v4    # "isPrevExponential":Z
    :cond_1
    iput v1, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndPosition:I

    #@1b
    .line 211
    return-void

    #@1c
    .line 225
    .restart local v0    # "currentChar":C
    .restart local v4    # "isPrevExponential":Z
    :sswitch_0
    const/4 v2, 0x1

    #@1d
    .line 226
    goto :goto_1

    #@1e
    .line 229
    :sswitch_1
    if-eq v1, p1, :cond_0

    #@20
    if-nez v4, :cond_0

    #@22
    .line 230
    const/4 v2, 0x1

    #@23
    .line 231
    iput-boolean v7, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@25
    goto :goto_1

    #@26
    .line 235
    :sswitch_2
    if-nez v5, :cond_2

    #@28
    .line 236
    const/4 v5, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 239
    :cond_2
    const/4 v2, 0x1

    #@2b
    .line 240
    iput-boolean v7, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@2d
    goto :goto_1

    #@2e
    .line 245
    :sswitch_3
    const/4 v3, 0x1

    #@2f
    .line 246
    goto :goto_1

    #@30
    .line 218
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 222
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 167
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v8

    #@5
    const/16 v9, 0x7a

    #@7
    if-eq v8, v9, :cond_0

    #@9
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v8

    #@d
    const/16 v9, 0x5a

    #@f
    if-ne v8, v9, :cond_1

    #@11
    .line 168
    :cond_0
    new-array v8, v10, [F

    #@13
    return-object v8

    #@14
    .line 171
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v8

    #@18
    new-array v5, v8, [F

    #@1a
    .line 172
    .local v5, "results":[F
    const/4 v0, 0x0

    #@1b
    .line 173
    .local v0, "count":I
    const/4 v6, 0x1

    #@1c
    .line 174
    .local v6, "startPosition":I
    const/4 v3, 0x0

    #@1d
    .line 176
    .local v3, "endPosition":I
    new-instance v4, Landroid/util/PathParser$ExtractFloatResult;

    #@1f
    const/4 v8, 0x0

    #@20
    invoke-direct {v4, v8}, Landroid/util/PathParser$ExtractFloatResult;-><init>(Landroid/util/PathParser$ExtractFloatResult;)V

    #@23
    .line 177
    .local v4, "result":Landroid/util/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@26
    move-result v7

    #@27
    .local v7, "totalLength":I
    move v1, v0

    #@28
    .line 182
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v6, v7, :cond_3

    #@2a
    .line 183
    invoke-static {p0, v6, v4}, Landroid/util/PathParser;->extract(Ljava/lang/String;ILandroid/util/PathParser$ExtractFloatResult;)V

    #@2d
    .line 184
    iget v3, v4, Landroid/util/PathParser$ExtractFloatResult;->mEndPosition:I

    #@2f
    .line 186
    if-ge v6, v3, :cond_4

    #@31
    .line 187
    add-int/lit8 v0, v1, 0x1

    #@33
    .line 188
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    .line 187
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@3a
    move-result v8

    #@3b
    aput v8, v5, v1

    #@3d
    .line 191
    :goto_1
    iget-boolean v8, v4, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    #@3f
    if-eqz v8, :cond_2

    #@41
    .line 193
    move v6, v3

    #@42
    :goto_2
    move v1, v0

    #@43
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    #@44
    .line 195
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    add-int/lit8 v6, v3, 0x1

    #@46
    goto :goto_2

    #@47
    .line 198
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_3
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    move-result-object v8

    #@4b
    return-object v8

    #@4c
    .line 199
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Landroid/util/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_0
    move-exception v2

    #@4d
    .line 200
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@4f
    new-instance v9, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v10, "error in parsing \""

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    const-string/jumbo v10, "\""

    #@62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v8

    #@6e
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Landroid/util/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_4
    move v0, v1

    #@6f
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    #@0
    .prologue
    .line 133
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_2

    #@6
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 139
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    #@c
    add-int/lit8 v2, v0, -0x5a

    #@e
    mul-int/2addr v1, v2

    #@f
    if-lez v1, :cond_0

    #@11
    add-int/lit8 v1, v0, -0x61

    #@13
    add-int/lit8 v2, v0, -0x7a

    #@15
    mul-int/2addr v1, v2

    #@16
    if-gtz v1, :cond_1

    #@18
    .line 140
    :cond_0
    const/16 v1, 0x65

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    const/16 v1, 0x45

    #@1e
    if-eq v0, v1, :cond_1

    #@20
    .line 141
    return p1

    #@21
    .line 143
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 145
    .end local v0    # "c":C
    :cond_2
    return p1
.end method

.method public static updateNodes([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)V
    .locals 4
    .param p0, "target"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v0, v2, :cond_1

    #@4
    .line 123
    aget-object v2, p0, v0

    #@6
    aget-object v3, p1, v0

    #@8
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->-get1(Landroid/util/PathParser$PathDataNode;)C

    #@b
    move-result v3

    #@c
    invoke-static {v2, v3}, Landroid/util/PathParser$PathDataNode;->-set0(Landroid/util/PathParser$PathDataNode;C)C

    #@f
    .line 124
    const/4 v1, 0x0

    #@10
    .local v1, "j":I
    :goto_1
    aget-object v2, p1, v0

    #@12
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->-get0(Landroid/util/PathParser$PathDataNode;)[F

    #@15
    move-result-object v2

    #@16
    array-length v2, v2

    #@17
    if-ge v1, v2, :cond_0

    #@19
    .line 125
    aget-object v2, p0, v0

    #@1b
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->-get0(Landroid/util/PathParser$PathDataNode;)[F

    #@1e
    move-result-object v2

    #@1f
    aget-object v3, p1, v0

    #@21
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->-get0(Landroid/util/PathParser$PathDataNode;)[F

    #@24
    move-result-object v3

    #@25
    aget v3, v3, v1

    #@27
    aput v3, v2, v1

    #@29
    .line 124
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 121
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
