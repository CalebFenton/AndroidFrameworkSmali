.class public final Ljava/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 100
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@9
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "suffix"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    const-string/jumbo v0, "The prefix must not be null"

    #@6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@9
    .line 122
    const-string/jumbo v0, "The delimiter must not be null"

    #@c
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@f
    .line 123
    const-string/jumbo v0, "The suffix must not be null"

    #@12
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    #@1b
    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Ljava/util/StringJoiner;->delimiter:Ljava/lang/String;

    #@21
    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    #@27
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    iget-object v1, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    #@3e
    .line 120
    return-void
.end method

.method private prepareBuilder()Ljava/lang/StringBuilder;
    .locals 2

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 223
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@6
    iget-object v1, p0, Ljava/util/StringJoiner;->delimiter:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 227
    :goto_0
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@d
    return-object v0

    #@e
    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    iget-object v1, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1
    .param p1, "newElement"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7
    .line 186
    return-object p0
.end method

.method public length()I
    .locals 2

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    #@c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    :goto_0
    return v0

    #@12
    .line 245
    :cond_0
    iget-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v0

    #@18
    goto :goto_0
.end method

.method public merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .locals 4
    .param p1, "other"    # Ljava/util/StringJoiner;

    #@0
    .prologue
    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 210
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 211
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@c
    move-result v1

    #@d
    .line 215
    .local v1, "length":I
    invoke-direct {p0}, Ljava/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@13
    iget-object v3, p1, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    #@15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1c
    .line 218
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "length":I
    :cond_0
    return-object p0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1
    .param p1, "emptyValue"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 147
    const-string/jumbo v0, "The empty value must not be null"

    #@3
    .line 146
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/CharSequence;

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    #@f
    .line 148
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 161
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 162
    iget-object v2, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    #@6
    return-object v2

    #@7
    .line 164
    :cond_0
    iget-object v2, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    #@9
    const-string/jumbo v3, ""

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 165
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 167
    :cond_1
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v0

    #@1f
    .line 168
    .local v0, "initialLength":I
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@21
    iget-object v3, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 170
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@30
    .line 171
    return-object v1
.end method
