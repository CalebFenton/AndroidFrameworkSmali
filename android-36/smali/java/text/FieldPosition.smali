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
.field private greylist-max-o attribute:Ljava/text/Format$Field;

.field greylist-max-o beginIndex:I

.field greylist-max-o endIndex:I

.field greylist-max-o field:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmatchesField(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z
    .registers 2

    invoke-direct {p0, p1}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmatchesField(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;I)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "field"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 86
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 92
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 111
    iput p1, p0, Ljava/text/FieldPosition;->field:I

    .line 112
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/Format$Field;)V
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .line 124
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 125
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/Format$Field;I)V
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 86
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 92
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 144
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 145
    iput p2, p0, Ljava/text/FieldPosition;->field:I

    .line 146
    return-void
.end method

.method private greylist-max-o matchesField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .line 264
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 267
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o matchesField(Ljava/text/Format$Field;I)Z
    .registers 4
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .line 276
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 279
    :cond_b
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    if-ne p2, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 224
    :cond_4
    instance-of v1, p1, Ljava/text/FieldPosition;

    if-eqz v1, :cond_33

    move-object v1, p1

    check-cast v1, Ljava/text/FieldPosition;

    .line 226
    .local v1, "other":Ljava/text/FieldPosition;
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-nez v2, :cond_14

    .line 227
    iget-object v2, v1, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v2, :cond_1f

    .line 228
    return v0

    .line 231
    :cond_14
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    iget-object v3, v1, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v2, v3}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 232
    return v0

    .line 234
    :cond_1f
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v1, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v1, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Ljava/text/FieldPosition;->field:I

    iget v3, v1, Ljava/text/FieldPosition;->field:I

    if-ne v2, v3, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 225
    .end local v1    # "other":Ljava/text/FieldPosition;
    :cond_33
    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 175
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 185
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public whitelist test-api getField()I
    .registers 2

    .line 166
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    return v0
.end method

.method public whitelist test-api getFieldAttribute()Ljava/text/Format$Field;
    .registers 2

    .line 157
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method greylist-max-o getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .registers 3

    .line 215
    new-instance v0, Ljava/text/FieldPosition$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition-IA;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 244
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setBeginIndex(I)V
    .registers 2
    .param p1, "bi"    # I

    .line 195
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 196
    return-void
.end method

.method public whitelist test-api setEndIndex(I)V
    .registers 2
    .param p1, "ei"    # I

    .line 205
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 206
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
