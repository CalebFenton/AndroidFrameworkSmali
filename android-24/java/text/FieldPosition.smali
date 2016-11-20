.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/FieldPosition$Delegate;
    }
.end annotation


# instance fields
.field private attribute:Ljava/text/Format$Field;

.field beginIndex:I

.field endIndex:I

.field field:I


# direct methods
.method static synthetic -wrap0(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    #@6
    .line 85
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    #@8
    .line 91
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@a
    .line 109
    iput p1, p0, Ljava/text/FieldPosition;->field:I

    #@c
    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    #@0
    .prologue
    .line 122
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@4
    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    #@6
    .line 85
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    #@8
    .line 91
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@a
    .line 142
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@c
    .line 143
    iput p2, p0, Ljava/text/FieldPosition;->field:I

    #@e
    .line 141
    return-void
.end method

.method private matchesField(Ljava/text/Format$Field;)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@6
    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 256
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method private matchesField(Ljava/text/Format$Field;I)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@6
    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 268
    :cond_0
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    #@d
    if-ne p2, v0, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 212
    :cond_0
    instance-of v2, p1, Ljava/text/FieldPosition;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 213
    return v1

    #@9
    :cond_1
    move-object v0, p1

    #@a
    .line 214
    check-cast v0, Ljava/text/FieldPosition;

    #@c
    .line 215
    .local v0, "other":Ljava/text/FieldPosition;
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@e
    if-nez v2, :cond_2

    #@10
    .line 216
    iget-object v2, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 217
    return v1

    #@15
    .line 220
    :cond_2
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@17
    iget-object v3, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@19
    invoke-virtual {v2, v3}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 221
    return v1

    #@20
    .line 223
    :cond_3
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@22
    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    #@24
    if-ne v2, v3, :cond_4

    #@26
    .line 224
    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    #@28
    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    #@2a
    if-ne v2, v3, :cond_4

    #@2c
    .line 225
    iget v2, p0, Ljava/text/FieldPosition;->field:I

    #@2e
    iget v3, v0, Ljava/text/FieldPosition;->field:I

    #@30
    if-ne v2, v3, :cond_4

    #@32
    const/4 v1, 0x1

    #@33
    .line 223
    :cond_4
    return v1
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 177
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    #@2
    return v0
.end method

.method public getField()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    #@2
    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@2
    return-object v0
.end method

.method getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .locals 2

    #@0
    .prologue
    .line 203
    new-instance v0, Ljava/text/FieldPosition$Delegate;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$Delegate;)V

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 233
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    #@2
    shl-int/lit8 v0, v0, 0x18

    #@4
    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@6
    shl-int/lit8 v1, v1, 0x10

    #@8
    or-int/2addr v0, v1

    #@9
    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    #@b
    or-int/2addr v0, v1

    #@c
    return v0
.end method

.method public setBeginIndex(I)V
    .locals 0
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 185
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@2
    .line 184
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0
    .param p1, "ei"    # I

    #@0
    .prologue
    .line 193
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    #@2
    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 241
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
    .line 242
    const-string/jumbo v1, "[field="

    #@14
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 242
    iget v1, p0, Ljava/text/FieldPosition;->field:I

    #@1a
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 242
    const-string/jumbo v1, ",attribute="

    #@21
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 242
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    #@27
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 243
    const-string/jumbo v1, ",beginIndex="

    #@2e
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 243
    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    #@34
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 244
    const-string/jumbo v1, ",endIndex="

    #@3b
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 244
    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    #@41
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 244
    const/16 v1, 0x5d

    #@47
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    return-object v0
.end method
