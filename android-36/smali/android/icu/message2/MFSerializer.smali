.class public Landroid/icu/message2/MFSerializer;
.super Ljava/lang/Object;
.source "MFSerializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist RE_NUMBER_LITERAL:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist needSpace:Z

.field private final blacklist result:Ljava/lang/StringBuilder;

.field private blacklist shouldDoubleQuotePattern:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 219
    nop

    .line 220
    const-string v0, "^-?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+\\-]?[0-9]+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/message2/MFSerializer;->RE_NUMBER_LITERAL:Ljava/util/regex/Pattern;

    .line 219
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    .line 46
    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    return-void
.end method

.method private blacklist addSpaceIfNeeded()V
    .registers 3

    .line 323
    iget-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    if-eqz v0, :cond_e

    .line 324
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 327
    :cond_e
    return-void
.end method

.method private blacklist annotationToString(Landroid/icu/message2/MFDataModel$Annotation;)V
    .registers 4
    .param p1, "annotation"    # Landroid/icu/message2/MFDataModel$Annotation;

    .line 178
    if-nez p1, :cond_3

    .line 179
    return-void

    .line 181
    :cond_3
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v0, :cond_24

    .line 182
    invoke-direct {p0}, Landroid/icu/message2/MFSerializer;->addSpaceIfNeeded()V

    .line 183
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    iget-object v1, v1, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    iget-object v0, v0, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->options:Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->optionsToString(Ljava/util/Map;)V

    goto :goto_29

    .line 187
    :cond_24
    const-string v0, "Annotation"

    invoke-direct {p0, v0, p1}, Landroid/icu/message2/MFSerializer;->errorType(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    :goto_29
    return-void
.end method

.method private blacklist attributesToString(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    if-nez p1, :cond_3

    .line 164
    return-void

    .line 166
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$Attribute;

    .line 167
    .local v1, "attribute":Landroid/icu/message2/MFDataModel$Attribute;
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/icu/message2/MFDataModel$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, v1, Landroid/icu/message2/MFDataModel$Attribute;->value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    if-eqz v2, :cond_31

    .line 171
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget-object v2, v1, Landroid/icu/message2/MFDataModel$Attribute;->value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->literalOrVariableRefToString(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V

    .line 174
    .end local v1    # "attribute":Landroid/icu/message2/MFDataModel$Attribute;
    :cond_31
    goto :goto_7

    .line 175
    :cond_32
    return-void
.end method

.method public static blacklist dataModelToString(Landroid/icu/message2/MFDataModel$Message;)Ljava/lang/String;
    .registers 2
    .param p0, "message"    # Landroid/icu/message2/MFDataModel$Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    new-instance v0, Landroid/icu/message2/MFSerializer;

    invoke-direct {v0}, Landroid/icu/message2/MFSerializer;-><init>()V

    invoke-direct {v0, p0}, Landroid/icu/message2/MFSerializer;->messageToString(Landroid/icu/message2/MFDataModel$Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist declarationsToString(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    .line 281
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$Declaration;

    .line 283
    .local v1, "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    if-eqz v2, :cond_27

    .line 284
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->localDeclarationToString(Landroid/icu/message2/MFDataModel$LocalDeclaration;)V

    goto :goto_37

    .line 285
    :cond_27
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$InputDeclaration;

    if-eqz v2, :cond_32

    .line 286
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$InputDeclaration;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->inputDeclarationToString(Landroid/icu/message2/MFDataModel$InputDeclaration;)V

    goto :goto_37

    .line 288
    :cond_32
    const-string v2, "Declaration"

    invoke-direct {p0, v2, v1}, Landroid/icu/message2/MFSerializer;->errorType(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    .end local v1    # "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    :goto_37
    goto :goto_10

    .line 291
    :cond_38
    return-void

    .line 279
    :cond_39
    :goto_39
    return-void
.end method

.method private blacklist error(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist error(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->error(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private blacklist errorType(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "expectedType"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/message2/MFSerializer;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method private blacklist expressionToString(Landroid/icu/message2/MFDataModel$Expression;)V
    .registers 3
    .param p1, "expression"    # Landroid/icu/message2/MFDataModel$Expression;

    .line 114
    if-nez p1, :cond_3

    .line 115
    return-void

    .line 117
    :cond_3
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$LiteralExpression;

    if-eqz v0, :cond_e

    .line 118
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$LiteralExpression;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->literalExpressionToString(Landroid/icu/message2/MFDataModel$LiteralExpression;)V

    goto :goto_34

    .line 119
    :cond_e
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$VariableExpression;

    if-eqz v0, :cond_19

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$VariableExpression;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->variableExpressionToString(Landroid/icu/message2/MFDataModel$VariableExpression;)V

    goto :goto_34

    .line 121
    :cond_19
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$FunctionExpression;

    if-eqz v0, :cond_24

    .line 122
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$FunctionExpression;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->functionExpressionToString(Landroid/icu/message2/MFDataModel$FunctionExpression;)V

    goto :goto_34

    .line 123
    :cond_24
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$Markup;

    if-eqz v0, :cond_2f

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$Markup;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->markupToString(Landroid/icu/message2/MFDataModel$Markup;)V

    goto :goto_34

    .line 126
    :cond_2f
    const-string v0, "Expression"

    invoke-direct {p0, v0, p1}, Landroid/icu/message2/MFSerializer;->errorType(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    :goto_34
    return-void
.end method

.method private blacklist functionExpressionToString(Landroid/icu/message2/MFDataModel$FunctionExpression;)V
    .registers 4
    .param p1, "fe"    # Landroid/icu/message2/MFDataModel$FunctionExpression;

    .line 156
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$FunctionExpression;->annotation:Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->annotationToString(Landroid/icu/message2/MFDataModel$Annotation;)V

    .line 158
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$FunctionExpression;->attributes:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->attributesToString(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    return-void
.end method

.method private blacklist inputDeclarationToString(Landroid/icu/message2/MFDataModel$InputDeclaration;)V
    .registers 4
    .param p1, "declaration"    # Landroid/icu/message2/MFDataModel$InputDeclaration;

    .line 294
    invoke-direct {p0}, Landroid/icu/message2/MFSerializer;->addSpaceIfNeeded()V

    .line 295
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, ".input "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$InputDeclaration;->value:Landroid/icu/message2/MFDataModel$VariableExpression;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->variableExpressionToString(Landroid/icu/message2/MFDataModel$VariableExpression;)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 298
    return-void
.end method

.method private blacklist literalExpressionToString(Landroid/icu/message2/MFDataModel$LiteralExpression;)V
    .registers 4
    .param p1, "le"    # Landroid/icu/message2/MFDataModel$LiteralExpression;

    .line 253
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$LiteralExpression;->arg:Landroid/icu/message2/MFDataModel$Literal;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->literalOrVariableRefToString(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 256
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$LiteralExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->annotationToString(Landroid/icu/message2/MFDataModel$Annotation;)V

    .line 257
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$LiteralExpression;->attributes:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->attributesToString(Ljava/util/List;)V

    .line 258
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    return-void
.end method

.method private blacklist literalOrVariableRefToString(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V
    .registers 5
    .param p1, "literalOrVarRef"    # Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    .line 205
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$Literal;

    if-eqz v0, :cond_b

    .line 206
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$Literal;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->literalToString(Landroid/icu/message2/MFDataModel$Literal;)V

    goto :goto_32

    .line 207
    :cond_b
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$VariableRef;

    if-eqz v0, :cond_2d

    .line 208
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v2, v2, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 210
    :cond_2d
    const-string v0, "LiteralOrVariableRef"

    invoke-direct {p0, v0, p1}, Landroid/icu/message2/MFSerializer;->errorType(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    :goto_32
    return-void
.end method

.method private blacklist literalToString(Landroid/icu/message2/MFDataModel$Literal;)V
    .registers 10
    .param p1, "literal"    # Landroid/icu/message2/MFDataModel$Literal;

    .line 223
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 224
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Landroid/icu/message2/MFSerializer;->RE_NUMBER_LITERAL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 225
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 226
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 228
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v2, "literalBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 230
    .local v3, "wasName":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7c

    if-ge v4, v5, :cond_47

    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 232
    .local v5, "c":C
    const/16 v7, 0x5c

    if-eq v5, v7, :cond_2d

    if-ne v5, v6, :cond_30

    .line 233
    :cond_2d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    if-nez v4, :cond_3d

    invoke-static {v5}, Landroid/icu/message2/StringUtils;->isNameStart(I)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 237
    const/4 v3, 0x0

    goto :goto_44

    .line 238
    :cond_3d
    invoke-static {v5}, Landroid/icu/message2/StringUtils;->isNameChar(I)Z

    move-result v6

    if-nez v6, :cond_44

    .line 239
    const/4 v3, 0x0

    .line 230
    .end local v5    # "c":C
    :cond_44
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 242
    .end local v4    # "i":I
    :cond_47
    if-eqz v3, :cond_55

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_55

    .line 243
    iget-object v4, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 245
    :cond_55
    iget-object v4, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    iget-object v4, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v4, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .end local v2    # "literalBuffer":Ljava/lang/StringBuilder;
    .end local v3    # "wasName":Z
    :goto_64
    return-void
.end method

.method private blacklist localDeclarationToString(Landroid/icu/message2/MFDataModel$LocalDeclaration;)V
    .registers 4
    .param p1, "declaration"    # Landroid/icu/message2/MFDataModel$LocalDeclaration;

    .line 301
    invoke-direct {p0}, Landroid/icu/message2/MFSerializer;->addSpaceIfNeeded()V

    .line 302
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, ".local $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/icu/message2/MFDataModel$LocalDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$LocalDeclaration;->value:Landroid/icu/message2/MFDataModel$Expression;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->expressionToString(Landroid/icu/message2/MFDataModel$Expression;)V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 307
    return-void
.end method

.method private blacklist markupToString(Landroid/icu/message2/MFDataModel$Markup;)V
    .registers 5
    .param p1, "markup"    # Landroid/icu/message2/MFDataModel$Markup;

    .line 131
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Markup;->kind:Landroid/icu/message2/MFDataModel$Markup$Kind;

    sget-object v1, Landroid/icu/message2/MFDataModel$Markup$Kind;->CLOSE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    const/16 v2, 0x2f

    if-ne v0, v1, :cond_15

    .line 133
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 135
    :cond_15
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :goto_1c
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/icu/message2/MFDataModel$Markup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Markup;->options:Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->optionsToString(Ljava/util/Map;)V

    .line 139
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Markup;->attributes:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->attributesToString(Ljava/util/List;)V

    .line 140
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Markup;->kind:Landroid/icu/message2/MFDataModel$Markup$Kind;

    sget-object v1, Landroid/icu/message2/MFDataModel$Markup$Kind;->STANDALONE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    if-ne v0, v1, :cond_38

    .line 141
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_38
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    return-void
.end method

.method private blacklist messageToString(Landroid/icu/message2/MFDataModel$Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/icu/message2/MFDataModel$Message;

    .line 67
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$PatternMessage;

    if-eqz v0, :cond_b

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$PatternMessage;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->patternMessageToString(Landroid/icu/message2/MFDataModel$PatternMessage;)V

    goto :goto_1b

    .line 69
    :cond_b
    instance-of v0, p1, Landroid/icu/message2/MFDataModel$SelectMessage;

    if-eqz v0, :cond_16

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/icu/message2/MFDataModel$SelectMessage;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->selectMessageToString(Landroid/icu/message2/MFDataModel$SelectMessage;)V

    goto :goto_1b

    .line 72
    :cond_16
    const-string v0, "Message"

    invoke-direct {p0, v0, p1}, Landroid/icu/message2/MFSerializer;->errorType(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :goto_1b
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist optionsToString(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/MFDataModel$Option;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$Option;

    .line 148
    .local v1, "option":Landroid/icu/message2/MFDataModel$Option;
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/icu/message2/MFDataModel$Option;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, v1, Landroid/icu/message2/MFDataModel$Option;->value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->literalOrVariableRefToString(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V

    .line 152
    .end local v1    # "option":Landroid/icu/message2/MFDataModel$Option;
    goto :goto_8

    .line 153
    :cond_2f
    return-void
.end method

.method private blacklist patternMessageToString(Landroid/icu/message2/MFDataModel$PatternMessage;)V
    .registers 3
    .param p1, "message"    # Landroid/icu/message2/MFDataModel$PatternMessage;

    .line 92
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$PatternMessage;->declarations:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->declarationsToString(Ljava/util/List;)V

    .line 93
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$PatternMessage;->pattern:Landroid/icu/message2/MFDataModel$Pattern;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->patternToString(Landroid/icu/message2/MFDataModel$Pattern;)V

    .line 94
    return-void
.end method

.method private blacklist patternToString(Landroid/icu/message2/MFDataModel$Pattern;)V
    .registers 5
    .param p1, "pattern"    # Landroid/icu/message2/MFDataModel$Pattern;

    .line 97
    invoke-direct {p0}, Landroid/icu/message2/MFSerializer;->addSpaceIfNeeded()V

    .line 98
    iget-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    if-eqz v0, :cond_e

    .line 99
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_e
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Pattern;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$PatternPart;

    .line 102
    .local v1, "part":Landroid/icu/message2/MFDataModel$PatternPart;
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$StringPart;

    if-eqz v2, :cond_2b

    .line 103
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$StringPart;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->stringPartToString(Landroid/icu/message2/MFDataModel$StringPart;)V

    goto :goto_31

    .line 105
    :cond_2b
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$Expression;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->expressionToString(Landroid/icu/message2/MFDataModel$Expression;)V

    .line 107
    .end local v1    # "part":Landroid/icu/message2/MFDataModel$PatternPart;
    :goto_31
    goto :goto_14

    .line 108
    :cond_32
    iget-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    if-eqz v0, :cond_3d

    .line 109
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_3d
    return-void
.end method

.method private blacklist selectMessageToString(Landroid/icu/message2/MFDataModel$SelectMessage;)V
    .registers 6
    .param p1, "message"    # Landroid/icu/message2/MFDataModel$SelectMessage;

    .line 78
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$SelectMessage;->declarations:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->declarationsToString(Ljava/util/List;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    .line 80
    invoke-direct {p0}, Landroid/icu/message2/MFSerializer;->addSpaceIfNeeded()V

    .line 81
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, ".match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$SelectMessage;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$Expression;

    .line 83
    .local v1, "selector":Landroid/icu/message2/MFDataModel$Expression;
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0, v1}, Landroid/icu/message2/MFSerializer;->expressionToString(Landroid/icu/message2/MFDataModel$Expression;)V

    .line 85
    .end local v1    # "selector":Landroid/icu/message2/MFDataModel$Expression;
    goto :goto_18

    .line 86
    :cond_2f
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$SelectMessage;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$Variant;

    .line 87
    .local v1, "variant":Landroid/icu/message2/MFDataModel$Variant;
    invoke-direct {p0, v1}, Landroid/icu/message2/MFSerializer;->variantToString(Landroid/icu/message2/MFDataModel$Variant;)V

    .line 88
    .end local v1    # "variant":Landroid/icu/message2/MFDataModel$Variant;
    goto :goto_35

    .line 89
    :cond_45
    return-void
.end method

.method private blacklist stringPartToString(Landroid/icu/message2/MFDataModel$StringPart;)V
    .registers 6
    .param p1, "part"    # Landroid/icu/message2/MFDataModel$StringPart;

    .line 262
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$StringPart;->value:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 263
    iget-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    if-nez v0, :cond_18

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->shouldDoubleQuotePattern:Z

    .line 265
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v1, p1, Landroid/icu/message2/MFDataModel$StringPart;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 269
    iget-object v1, p1, Landroid/icu/message2/MFDataModel$StringPart;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 270
    .local v1, "c":C
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_33

    const/16 v3, 0x7b

    if-eq v1, v3, :cond_33

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_38

    .line 271
    :cond_33
    iget-object v3, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_38
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 275
    .end local v0    # "i":I
    :cond_40
    return-void
.end method

.method private blacklist variableExpressionToString(Landroid/icu/message2/MFDataModel$VariableExpression;)V
    .registers 4
    .param p1, "ve"    # Landroid/icu/message2/MFDataModel$VariableExpression;

    .line 192
    if-nez p1, :cond_3

    .line 193
    return-void

    .line 195
    :cond_3
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->literalOrVariableRefToString(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 198
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$VariableExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->annotationToString(Landroid/icu/message2/MFDataModel$Annotation;)V

    .line 199
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$VariableExpression;->attributes:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->attributesToString(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/message2/MFSerializer;->needSpace:Z

    .line 202
    return-void
.end method

.method private blacklist variantToString(Landroid/icu/message2/MFDataModel$Variant;)V
    .registers 6
    .param p1, "variant"    # Landroid/icu/message2/MFDataModel$Variant;

    .line 310
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 311
    .local v1, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    iget-object v3, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$CatchallKey;

    if-eqz v2, :cond_25

    .line 313
    iget-object v2, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 315
    :cond_25
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$Literal;

    invoke-direct {p0, v2}, Landroid/icu/message2/MFSerializer;->literalToString(Landroid/icu/message2/MFDataModel$Literal;)V

    .line 317
    .end local v1    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    :goto_2b
    goto :goto_6

    .line 318
    :cond_2c
    iget-object v0, p0, Landroid/icu/message2/MFSerializer;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    iget-object v0, p1, Landroid/icu/message2/MFDataModel$Variant;->value:Landroid/icu/message2/MFDataModel$Pattern;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFSerializer;->patternToString(Landroid/icu/message2/MFDataModel$Pattern;)V

    .line 320
    return-void
.end method
