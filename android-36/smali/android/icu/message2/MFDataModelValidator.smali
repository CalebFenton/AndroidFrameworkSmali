.class Landroid/icu/message2/MFDataModelValidator;
.super Ljava/lang/Object;
.source "MFDataModelValidator.java"


# instance fields
.field private final blacklist declaredVars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist message:Landroid/icu/message2/MFDataModel$Message;


# direct methods
.method constructor blacklist <init>(Landroid/icu/message2/MFDataModel$Message;)V
    .registers 3
    .param p1, "message"    # Landroid/icu/message2/MFDataModel$Message;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->declaredVars:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Landroid/icu/message2/MFDataModelValidator;->message:Landroid/icu/message2/MFDataModel$Message;

    .line 38
    return-void
.end method

.method private blacklist addVariableDeclaration(Ljava/lang/String;)Z
    .registers 4
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->declaredVars:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' already declared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_26
    iget-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->declaredVars:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist error(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 203
    new-instance v0, Landroid/icu/message2/MFParseException;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/icu/message2/MFParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private blacklist validateDeclarations(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 109
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3d

    .line 112
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/message2/MFDataModel$Declaration;

    .line 113
    .local v2, "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    instance-of v3, v2, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    if-eqz v3, :cond_2d

    .line 114
    move-object v3, v2

    check-cast v3, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    .line 115
    .local v3, "ld":Landroid/icu/message2/MFDataModel$LocalDeclaration;
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$LocalDeclaration;->value:Landroid/icu/message2/MFDataModel$Expression;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/icu/message2/MFDataModelValidator;->validateExpression(Landroid/icu/message2/MFDataModel$Expression;Z)V

    .line 116
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$LocalDeclaration;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/icu/message2/MFDataModelValidator;->addVariableDeclaration(Ljava/lang/String;)Z

    .end local v3    # "ld":Landroid/icu/message2/MFDataModel$LocalDeclaration;
    goto :goto_3a

    .line 117
    :cond_2d
    instance-of v3, v2, Landroid/icu/message2/MFDataModel$InputDeclaration;

    if-eqz v3, :cond_3a

    .line 118
    move-object v3, v2

    check-cast v3, Landroid/icu/message2/MFDataModel$InputDeclaration;

    .line 119
    .local v3, "id":Landroid/icu/message2/MFDataModel$InputDeclaration;
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$InputDeclaration;->value:Landroid/icu/message2/MFDataModel$VariableExpression;

    invoke-direct {p0, v4, v0}, Landroid/icu/message2/MFDataModelValidator;->validateExpression(Landroid/icu/message2/MFDataModel$Expression;Z)V

    goto :goto_3b

    .line 117
    .end local v3    # "id":Landroid/icu/message2/MFDataModel$InputDeclaration;
    :cond_3a
    :goto_3a
    nop

    .line 121
    .end local v2    # "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    :goto_3b
    goto :goto_e

    .line 122
    :cond_3c
    return v0

    .line 110
    :cond_3d
    :goto_3d
    return v0
.end method

.method private blacklist validateExpression(Landroid/icu/message2/MFDataModel$Expression;Z)V
    .registers 10
    .param p1, "expression"    # Landroid/icu/message2/MFDataModel$Expression;
    .param p2, "fromInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "argName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, "annotation":Landroid/icu/message2/MFDataModel$Annotation;
    instance-of v2, p1, Landroid/icu/message2/MFDataModel$Literal;

    if-eqz v2, :cond_7

    goto :goto_2c

    .line 148
    :cond_7
    instance-of v2, p1, Landroid/icu/message2/MFDataModel$LiteralExpression;

    if-eqz v2, :cond_15

    .line 149
    move-object v2, p1

    check-cast v2, Landroid/icu/message2/MFDataModel$LiteralExpression;

    .line 150
    .local v2, "le":Landroid/icu/message2/MFDataModel$LiteralExpression;
    iget-object v3, v2, Landroid/icu/message2/MFDataModel$LiteralExpression;->arg:Landroid/icu/message2/MFDataModel$Literal;

    iget-object v0, v3, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 151
    iget-object v1, v2, Landroid/icu/message2/MFDataModel$LiteralExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    .line 152
    .end local v2    # "le":Landroid/icu/message2/MFDataModel$LiteralExpression;
    goto :goto_2c

    :cond_15
    instance-of v2, p1, Landroid/icu/message2/MFDataModel$VariableExpression;

    if-eqz v2, :cond_23

    .line 153
    move-object v2, p1

    check-cast v2, Landroid/icu/message2/MFDataModel$VariableExpression;

    .line 157
    .local v2, "ve":Landroid/icu/message2/MFDataModel$VariableExpression;
    iget-object v3, v2, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v0, v3, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    .line 158
    iget-object v1, v2, Landroid/icu/message2/MFDataModel$VariableExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    .line 159
    .end local v2    # "ve":Landroid/icu/message2/MFDataModel$VariableExpression;
    :cond_22
    goto :goto_2c

    :cond_23
    instance-of v2, p1, Landroid/icu/message2/MFDataModel$FunctionExpression;

    if-eqz v2, :cond_22

    .line 161
    move-object v2, p1

    check-cast v2, Landroid/icu/message2/MFDataModel$FunctionExpression;

    .line 162
    .local v2, "fe":Landroid/icu/message2/MFDataModel$FunctionExpression;
    iget-object v1, v2, Landroid/icu/message2/MFDataModel$FunctionExpression;->annotation:Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    .line 165
    .end local v2    # "fe":Landroid/icu/message2/MFDataModel$FunctionExpression;
    :goto_2c
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v2, :cond_5c

    .line 166
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    .line 167
    .local v2, "fa":Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    iget-object v3, v2, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->options:Ljava/util/Map;

    if-eqz v3, :cond_5c

    .line 168
    iget-object v3, v2, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->options:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/message2/MFDataModel$Option;

    .line 169
    .local v4, "opt":Landroid/icu/message2/MFDataModel$Option;
    iget-object v5, v4, Landroid/icu/message2/MFDataModel$Option;->value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    .line 170
    .local v5, "val":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    instance-of v6, v5, Landroid/icu/message2/MFDataModel$VariableRef;

    if-eqz v6, :cond_5b

    .line 173
    move-object v6, v5

    check-cast v6, Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v6, v6, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/icu/message2/MFDataModelValidator;->addVariableDeclaration(Ljava/lang/String;)Z

    .line 175
    .end local v4    # "opt":Landroid/icu/message2/MFDataModel$Option;
    .end local v5    # "val":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    :cond_5b
    goto :goto_41

    .line 181
    .end local v2    # "fa":Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    :cond_5c
    if-eqz v0, :cond_69

    .line 184
    if-eqz p2, :cond_64

    .line 185
    invoke-direct {p0, v0}, Landroid/icu/message2/MFDataModelValidator;->addVariableDeclaration(Ljava/lang/String;)Z

    goto :goto_69

    .line 188
    :cond_64
    iget-object v2, p0, Landroid/icu/message2/MFDataModelValidator;->declaredVars:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_69
    :goto_69
    return-void
.end method

.method private blacklist validateSelectors(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Expression;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 95
    .local p1, "selectors":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Expression;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    :cond_8
    const-string v0, "Selection messages must have selectors"

    invoke-direct {p0, v0}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    .line 98
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist validateVariants(Ljava/util/List;I)Z
    .registers 12
    .param p2, "selectorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Variant;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 55
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Variant;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    :cond_8
    const-string v0, "Selection messages must have at least one variant"

    invoke-direct {p0, v0}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    .line 60
    :cond_d
    const/4 v0, 0x0

    .line 61
    .local v0, "hasUltimateFallback":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v1, "fakeKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/message2/MFDataModel$Variant;

    .line 63
    .local v3, "variant":Landroid/icu/message2/MFDataModel$Variant;
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    if-eqz v4, :cond_2f

    iget-object v4, v3, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 64
    :cond_2f
    const-string v4, "Selection variants must have at least one key"

    invoke-direct {p0, v4}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    .line 66
    :cond_34
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, p2, :cond_41

    .line 67
    const-string v4, "Selection variants must have the same number of variants as the selectors."

    invoke-direct {p0, v4}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    .line 69
    :cond_41
    const/4 v4, 0x0

    .line 70
    .local v4, "catchAllCount":I
    new-instance v5, Ljava/util/StringJoiner;

    const-string v6, "<<::>>"

    invoke-direct {v5, v6}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    .local v5, "fakeKey":Ljava/util/StringJoiner;
    iget-object v6, v3, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 72
    .local v7, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    instance-of v8, v7, Landroid/icu/message2/MFDataModel$CatchallKey;

    if-eqz v8, :cond_67

    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    const-string v8, "*"

    invoke-virtual {v5, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_73

    .line 75
    :cond_67
    instance-of v8, v7, Landroid/icu/message2/MFDataModel$Literal;

    if-eqz v8, :cond_73

    .line 76
    move-object v8, v7

    check-cast v8, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v8, v8, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    .end local v7    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    :cond_73
    :goto_73
    goto :goto_4f

    .line 79
    :cond_74
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 80
    const-string v6, "Dumplicate combination of keys"

    invoke-direct {p0, v6}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    goto :goto_8b

    .line 82
    :cond_84
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_8b
    if-ne v4, p2, :cond_8e

    .line 85
    const/4 v0, 0x1

    .line 87
    .end local v3    # "variant":Landroid/icu/message2/MFDataModel$Variant;
    .end local v4    # "catchAllCount":I
    .end local v5    # "fakeKey":Ljava/util/StringJoiner;
    :cond_8e
    goto :goto_17

    .line 88
    :cond_8f
    if-nez v0, :cond_96

    .line 89
    const-string v2, "There must be one variant with all the keys being \'*\'"

    invoke-direct {p0, v2}, Landroid/icu/message2/MFDataModelValidator;->error(Ljava/lang/String;)V

    .line 91
    :cond_96
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method blacklist validate()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->message:Landroid/icu/message2/MFDataModel$Message;

    instance-of v0, v0, Landroid/icu/message2/MFDataModel$PatternMessage;

    if-eqz v0, :cond_10

    .line 42
    iget-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->message:Landroid/icu/message2/MFDataModel$Message;

    check-cast v0, Landroid/icu/message2/MFDataModel$PatternMessage;

    iget-object v0, v0, Landroid/icu/message2/MFDataModel$PatternMessage;->declarations:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFDataModelValidator;->validateDeclarations(Ljava/util/List;)Z

    goto :goto_2f

    .line 43
    :cond_10
    iget-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->message:Landroid/icu/message2/MFDataModel$Message;

    instance-of v0, v0, Landroid/icu/message2/MFDataModel$SelectMessage;

    if-eqz v0, :cond_2f

    .line 44
    iget-object v0, p0, Landroid/icu/message2/MFDataModelValidator;->message:Landroid/icu/message2/MFDataModel$Message;

    check-cast v0, Landroid/icu/message2/MFDataModel$SelectMessage;

    .line 45
    .local v0, "sm":Landroid/icu/message2/MFDataModel$SelectMessage;
    iget-object v1, v0, Landroid/icu/message2/MFDataModel$SelectMessage;->declarations:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/icu/message2/MFDataModelValidator;->validateDeclarations(Ljava/util/List;)Z

    .line 46
    iget-object v1, v0, Landroid/icu/message2/MFDataModel$SelectMessage;->selectors:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/icu/message2/MFDataModelValidator;->validateSelectors(Ljava/util/List;)Z

    .line 47
    iget-object v1, v0, Landroid/icu/message2/MFDataModel$SelectMessage;->selectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 48
    .local v1, "selectorCount":I
    iget-object v2, v0, Landroid/icu/message2/MFDataModel$SelectMessage;->variants:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Landroid/icu/message2/MFDataModelValidator;->validateVariants(Ljava/util/List;I)Z

    .line 50
    .end local v0    # "sm":Landroid/icu/message2/MFDataModel$SelectMessage;
    .end local v1    # "selectorCount":I
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    return v0
.end method
