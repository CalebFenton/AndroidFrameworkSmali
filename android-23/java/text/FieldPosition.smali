.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# instance fields
.field private attribute:Ljava/text/Format$Field;

.field private beginIndex:I

.field private endIndex:I

.field private field:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput p1, p0, Ljava/text/FieldPosition;->field:I

    #@5
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@5
    .line 51
    const/4 v0, -0x1

    #@6
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    #@8
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 0
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@5
    .line 59
    iput p2, p0, Ljava/text/FieldPosition;->field:I

    #@7
    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    instance-of v2, p1, Ljava/text/FieldPosition;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 69
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 71
    check-cast v0, Ljava/text/FieldPosition;

    #@9
    .line 72
    .local v0, "pos":Ljava/text/FieldPosition;
    iget v2, p0, Ljava/text/FieldPosition;->field:I

    #@b
    iget v3, v0, Ljava/text/FieldPosition;->field:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@11
    iget-object v3, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 73
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@17
    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    #@1d
    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    const/4 v1, 0x1

    #@22
    .line 72
    :cond_1
    return v1
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    #@2
    return v0
.end method

.method public getField()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    #@2
    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 105
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 106
    .local v0, "attributeHash":I
    :goto_0
    iget v1, p0, Ljava/text/FieldPosition;->field:I

    #@7
    mul-int/lit8 v1, v1, 0xa

    #@9
    add-int/2addr v1, v0

    #@a
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@c
    mul-int/lit8 v2, v2, 0x64

    #@e
    add-int/2addr v1, v2

    #@f
    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    #@11
    add-int/2addr v1, v2

    #@12
    return v1

    #@13
    .line 105
    .end local v0    # "attributeHash":I
    :cond_0
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@15
    invoke-virtual {v1}, Ljava/text/Format$Field;->hashCode()I

    #@18
    move-result v0

    #@19
    .restart local v0    # "attributeHash":I
    goto :goto_0
.end method

.method public setBeginIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 113
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@2
    .line 112
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 120
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    #@2
    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "["

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 128
    const-string/jumbo v1, "attribute="

    #@1b
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 128
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@21
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 129
    const-string/jumbo v1, ",field="

    #@28
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 129
    iget v1, p0, Ljava/text/FieldPosition;->field:I

    #@2e
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 130
    const-string/jumbo v1, ",beginIndex="

    #@35
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 130
    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@3b
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 131
    const-string/jumbo v1, ",endIndex="

    #@42
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 131
    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    #@48
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 132
    const-string/jumbo v1, "]"

    #@4f
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    return-object v0
.end method
