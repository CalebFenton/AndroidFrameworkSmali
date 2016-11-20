.class Ljava/text/AttributeEntry;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1088
    iput-object p1, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@5
    .line 1089
    iput-object p2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@7
    .line 1087
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1093
    instance-of v2, p1, Ljava/text/AttributeEntry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1094
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1096
    nop

    #@8
    nop

    #@9
    .line 1097
    .local v0, "other":Ljava/text/AttributeEntry;
    iget-object v2, v0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@b
    iget-object v3, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@d
    invoke-virtual {v2, v3}, Ljava/text/AttributedCharacterIterator$Attribute;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1098
    iget-object v2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@15
    if-nez v2, :cond_2

    #@17
    iget-object v2, v0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@19
    if-nez v2, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 1097
    :cond_1
    :goto_0
    return v1

    #@1d
    .line 1098
    :cond_2
    iget-object v1, v0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@1f
    iget-object v2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1102
    iget-object v0, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1106
    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1114
    iget-object v0, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@2
    invoke-virtual {v0}, Ljava/text/AttributedCharacterIterator$Attribute;->hashCode()I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    xor-int/2addr v0, v1

    #@c
    return v0

    #@d
    :cond_0
    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@12
    move-result v0

    #@13
    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@7
    invoke-virtual {v1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    #@18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method
