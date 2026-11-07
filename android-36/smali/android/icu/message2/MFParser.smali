.class public Landroid/icu/message2/MFParser;
.super Ljava/lang/Object;
.source "MFParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/MFParser$MatchDeclaration;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist EOF:I = -0x1

.field private static final blacklist RE_NUMBER_LITERAL:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist input:Landroid/icu/message2/InputSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 500
    nop

    .line 501
    const-string v0, "^-?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+\\-]?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/message2/MFParser;->RE_NUMBER_LITERAL:Ljava/util/regex/Pattern;

    .line 500
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/icu/message2/InputSource;

    invoke-direct {v0, p1}, Landroid/icu/message2/InputSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    .line 30
    return-void
.end method

.method private blacklist checkCondition(ZLjava/lang/String;)V
    .registers 3
    .param p1, "condition"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 744
    if-nez p1, :cond_5

    .line 745
    invoke-direct {p0, p2}, Landroid/icu/message2/MFParser;->error(Ljava/lang/String;)V

    .line 747
    :cond_5
    return-void
.end method

.method private blacklist error(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .local v0, "finalMsg":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    if-eqz v1, :cond_64

    .line 755
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v1

    .line 756
    .local v1, "position":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const/4 v2, -0x1

    const-string v3, "^^^"

    if-eq v1, v2, :cond_59

    .line 760
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    iget-object v2, v2, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    iget-object v2, v2, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 764
    :cond_59
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    iget-object v2, v2, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 752
    .end local v1    # "position":I
    :cond_64
    const-string v1, "Parse error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :goto_6c
    new-instance v1, Landroid/icu/message2/MFParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/icu/message2/MFParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private blacklist getAnnotation(Z)Landroid/icu/message2/MFDataModel$Annotation;
    .registers 8
    .param p1, "whitespaceRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v0

    .line 190
    .local v0, "position":I
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v1

    .line 191
    .local v1, "cp":I
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v1, v2, :cond_12

    .line 192
    return-object v3

    .line 195
    :cond_12
    const/4 v2, 0x0

    .line 196
    .local v2, "whitespaceCount":I
    if-eqz p1, :cond_1a

    .line 197
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipMandatoryWhitespaces()I

    move-result v2

    goto :goto_1e

    .line 199
    :cond_1a
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    move-result v2

    .line 202
    :goto_1e
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v1

    .line 203
    sparse-switch v1, :sswitch_data_50

    .line 220
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 221
    return-object v3

    .line 207
    :sswitch_2d
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4, v2}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 208
    return-object v3

    .line 212
    :sswitch_33
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 213
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "identifier":Ljava/lang/String;
    if-eqz v3, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    :goto_41
    const-string v5, "Annotation / function name missing"

    invoke-direct {p0, v4, v5}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 215
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getOptions()Ljava/util/Map;

    move-result-object v4

    .line 216
    .local v4, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    new-instance v5, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    invoke-direct {v5, v3, v4}, Landroid/icu/message2/MFDataModel$FunctionAnnotation;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v5

    :sswitch_data_50
    .sparse-switch
        0x3a -> :sswitch_33
        0x7d -> :sswitch_2d
    .end sparse-switch
.end method

.method private blacklist getAnnotationExpression()Landroid/icu/message2/MFDataModel$Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/message2/MFParser;->getAnnotation(Z)Landroid/icu/message2/MFDataModel$Annotation;

    move-result-object v0

    .line 280
    .local v0, "annotation":Landroid/icu/message2/MFDataModel$Annotation;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    instance-of v2, v0, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v2, :cond_16

    .line 283
    new-instance v2, Landroid/icu/message2/MFDataModel$FunctionExpression;

    move-object v3, v0

    check-cast v3, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    invoke-direct {v2, v3, v1}, Landroid/icu/message2/MFDataModel$FunctionExpression;-><init>(Landroid/icu/message2/MFDataModel$FunctionAnnotation;Ljava/util/List;)V

    return-object v2

    .line 286
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected annotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/icu/message2/MFParser;->error(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getAttribute()Landroid/icu/message2/MFDataModel$Attribute;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v0

    .line 335
    .local v0, "position":I
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipWhitespaces()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 336
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 337
    return-object v2

    .line 339
    :cond_13
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v1

    .line 340
    .local v1, "cp":I
    const/16 v3, 0x40

    if-ne v1, v3, :cond_57

    .line 341
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 342
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "id":Ljava/lang/String;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipWhitespaces()I

    move-result v3

    .line 344
    .local v3, "wsCount":I
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v1

    .line 345
    const/4 v4, 0x0

    .line 346
    .local v4, "literalOrVariable":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    const/16 v5, 0x3d

    if-ne v1, v5, :cond_4c

    .line 347
    iget-object v5, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v5}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 348
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 349
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getLiteralOrVariableRef()Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    move-result-object v4

    .line 350
    if-eqz v4, :cond_45

    const/4 v5, 0x1

    goto :goto_46

    :cond_45
    const/4 v5, 0x0

    :goto_46
    const-string v6, "Attributes must have a value after `=`"

    invoke-direct {p0, v5, v6}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    goto :goto_51

    .line 353
    :cond_4c
    iget-object v5, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v5, v3}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 355
    :goto_51
    new-instance v5, Landroid/icu/message2/MFDataModel$Attribute;

    invoke-direct {v5, v2, v4}, Landroid/icu/message2/MFDataModel$Attribute;-><init>(Ljava/lang/String;Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V

    return-object v5

    .line 357
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "wsCount":I
    .end local v4    # "literalOrVariable":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    :cond_57
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 359
    return-object v2
.end method

.method private blacklist getAttributes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    :goto_5
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getAttribute()Landroid/icu/message2/MFDataModel$Attribute;

    move-result-object v1

    .line 324
    .local v1, "attribute":Landroid/icu/message2/MFDataModel$Attribute;
    if-nez v1, :cond_d

    .line 325
    nop

    .line 329
    .end local v1    # "attribute":Landroid/icu/message2/MFDataModel$Attribute;
    return-object v0

    .line 327
    .restart local v1    # "attribute":Landroid/icu/message2/MFDataModel$Attribute;
    :cond_d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v1    # "attribute":Landroid/icu/message2/MFDataModel$Attribute;
    goto :goto_5
.end method

.method private blacklist getComplexMessage()Landroid/icu/message2/MFDataModel$Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    const/4 v1, 0x0

    .line 540
    .local v1, "foundMatch":Z
    :goto_6
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getDeclaration()Landroid/icu/message2/MFDataModel$Declaration;

    move-result-object v2

    .line 541
    .local v2, "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    if-nez v2, :cond_d

    .line 542
    goto :goto_13

    .line 544
    :cond_d
    instance-of v3, v2, Landroid/icu/message2/MFParser$MatchDeclaration;

    if-eqz v3, :cond_46

    .line 545
    const/4 v1, 0x1

    .line 546
    nop

    .line 550
    .end local v2    # "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    :goto_13
    if-eqz v1, :cond_1a

    .line 551
    invoke-direct {p0, v0}, Landroid/icu/message2/MFParser;->getMatch(Ljava/util/List;)Landroid/icu/message2/MFDataModel$SelectMessage;

    move-result-object v2

    return-object v2

    .line 553
    :cond_1a
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 554
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v2

    .line 556
    .local v2, "cp":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    const-string v4, "Expected a quoted pattern or .match; got end-of-input"

    invoke-direct {p0, v3, v4}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 557
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getQuotedPattern()Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v3

    .line 558
    .local v3, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 559
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v4

    const-string v5, "Content detected after the end of the message."

    invoke-direct {p0, v4, v5}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 560
    new-instance v4, Landroid/icu/message2/MFDataModel$PatternMessage;

    invoke-direct {v4, v0, v3}, Landroid/icu/message2/MFDataModel$PatternMessage;-><init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V

    return-object v4

    .line 548
    .end local v3    # "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    .local v2, "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    :cond_46
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v2    # "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    goto :goto_6
.end method

.method private blacklist getDeclaration()Landroid/icu/message2/MFDataModel$Declaration;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 663
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v0

    .line 664
    .local v0, "position":I
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 665
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 666
    .local v1, "cp":I
    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1a

    .line 667
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 668
    return-object v3

    .line 670
    :cond_1a
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "declName":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_24

    move v6, v4

    goto :goto_25

    :cond_24
    move v6, v5

    :goto_25
    const-string v7, "Expected a declaration after the \'.\'"

    invoke-direct {p0, v6, v7}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 674
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_aa

    :cond_31
    goto :goto_50

    :sswitch_32
    const-string v6, "match"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v6, 0x2

    goto :goto_51

    :sswitch_3c
    const-string v6, "local"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v4

    goto :goto_51

    :sswitch_46
    const-string v6, "input"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v5

    goto :goto_51

    :goto_50
    const/4 v6, -0x1

    :goto_51
    packed-switch v6, :pswitch_data_b8

    goto :goto_a9

    .line 699
    :pswitch_55
    new-instance v4, Landroid/icu/message2/MFParser$MatchDeclaration;

    invoke-direct {v4, v3}, Landroid/icu/message2/MFParser$MatchDeclaration;-><init>(Landroid/icu/message2/MFParser-IA;)V

    return-object v4

    .line 686
    :pswitch_5b
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipMandatoryWhitespaces()I

    .line 687
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getVariableRef()Landroid/icu/message2/MFDataModel$VariableRef;

    move-result-object v6

    .line 688
    .local v6, "varName":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 689
    iget-object v7, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v7}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 690
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_70

    goto :goto_71

    :cond_70
    move v4, v5

    :goto_71
    invoke-direct {p0, v4, v2}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 691
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 692
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPlaceholder()Landroid/icu/message2/MFDataModel$Expression;

    move-result-object v4

    .line 693
    .local v4, "expression":Landroid/icu/message2/MFDataModel$Expression;
    instance-of v5, v6, Landroid/icu/message2/MFDataModel$VariableRef;

    if-eqz v5, :cond_a9

    .line 694
    new-instance v3, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    move-object v5, v6

    check-cast v5, Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v5, v5, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Landroid/icu/message2/MFDataModel$LocalDeclaration;-><init>(Ljava/lang/String;Landroid/icu/message2/MFDataModel$Expression;)V

    return-object v3

    .line 676
    .end local v4    # "expression":Landroid/icu/message2/MFDataModel$Expression;
    .end local v6    # "varName":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    :pswitch_8a
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 677
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPlaceholder()Landroid/icu/message2/MFDataModel$Expression;

    move-result-object v3

    .line 678
    .local v3, "expression":Landroid/icu/message2/MFDataModel$Expression;
    const/4 v4, 0x0

    .line 679
    .local v4, "inputVarName":Ljava/lang/String;
    instance-of v5, v3, Landroid/icu/message2/MFDataModel$VariableExpression;

    const-string v6, "Variable expression required in .input declaration"

    invoke-direct {p0, v5, v6}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 681
    move-object v5, v3

    check-cast v5, Landroid/icu/message2/MFDataModel$VariableExpression;

    iget-object v5, v5, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v4, v5, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    .line 682
    new-instance v5, Landroid/icu/message2/MFDataModel$InputDeclaration;

    move-object v6, v3

    check-cast v6, Landroid/icu/message2/MFDataModel$VariableExpression;

    invoke-direct {v5, v4, v6}, Landroid/icu/message2/MFDataModel$InputDeclaration;-><init>(Ljava/lang/String;Landroid/icu/message2/MFDataModel$VariableExpression;)V

    return-object v5

    .line 703
    .end local v3    # "expression":Landroid/icu/message2/MFDataModel$Expression;
    .end local v4    # "inputVarName":Ljava/lang/String;
    :cond_a9
    :goto_a9
    return-object v3

    :sswitch_data_aa
    .sparse-switch
        0x5fb57ca -> :sswitch_46
        0x625df6b -> :sswitch_3c
        0x62dd9c5 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_5b
        :pswitch_55
    .end packed-switch
.end method

.method private blacklist getIdentifier()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "namespace":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 368
    const/4 v1, 0x0

    return-object v1

    .line 370
    :cond_8
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 371
    .local v1, "cp":I
    const/16 v2, 0x3a

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4f

    .line 372
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected name after namespace \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 376
    .end local v2    # "name":Ljava/lang/String;
    :cond_4f
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v3}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 378
    return-object v0
.end method

.method private blacklist getKey(Z)Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    .registers 6
    .param p1, "requireSpaces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 633
    .local v0, "cp":I
    const/16 v1, 0x7b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 634
    return-object v2

    .line 636
    :cond_c
    const/4 v1, 0x0

    .line 637
    .local v1, "skipCount":I
    if-eqz p1, :cond_14

    .line 638
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipMandatoryWhitespaces()I

    move-result v1

    goto :goto_18

    .line 640
    :cond_14
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    move-result v1

    .line 642
    :goto_18
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 643
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2d

    .line 644
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 645
    new-instance v2, Landroid/icu/message2/MFDataModel$CatchallKey;

    invoke-direct {v2}, Landroid/icu/message2/MFDataModel$CatchallKey;-><init>()V

    return-object v2

    .line 647
    :cond_2d
    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    .line 649
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3, v1}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 650
    return-object v2

    .line 652
    :cond_36
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getLiteral()Landroid/icu/message2/MFDataModel$Literal;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getLiteral()Landroid/icu/message2/MFDataModel$Literal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 440
    .local v0, "cp":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 447
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v1}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 448
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getUnQuotedLiteral()Landroid/icu/message2/MFDataModel$Literal;

    move-result-object v1

    .line 449
    .local v1, "unql":Landroid/icu/message2/MFDataModel$Literal;
    return-object v1

    .line 443
    .end local v1    # "unql":Landroid/icu/message2/MFDataModel$Literal;
    :pswitch_14
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v1}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 444
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getQuotedLiteral()Landroid/icu/message2/MFDataModel$Literal;

    move-result-object v1

    .line 445
    .local v1, "ql":Landroid/icu/message2/MFDataModel$Literal;
    return-object v1

    :pswitch_data_1e
    .packed-switch 0x7c
        :pswitch_14
    .end packed-switch
.end method

.method private blacklist getLiteralExpression()Landroid/icu/message2/MFDataModel$Expression;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getLiteral()Landroid/icu/message2/MFDataModel$Literal;

    move-result-object v0

    .line 249
    .local v0, "literal":Landroid/icu/message2/MFDataModel$Literal;
    const/4 v1, 0x1

    if-eqz v0, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Literal expression expected."

    invoke-direct {p0, v2, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "annotation":Landroid/icu/message2/MFDataModel$Annotation;
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v3

    invoke-static {v3}, Landroid/icu/message2/StringUtils;->isWhitespace(I)Z

    move-result v3

    .line 253
    .local v3, "hasWhitespace":Z
    if-eqz v3, :cond_21

    .line 254
    invoke-direct {p0, v1}, Landroid/icu/message2/MFParser;->getAnnotation(Z)Landroid/icu/message2/MFDataModel$Annotation;

    move-result-object v2

    .line 255
    nop

    .line 262
    :cond_21
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    new-instance v4, Landroid/icu/message2/MFDataModel$LiteralExpression;

    invoke-direct {v4, v0, v2, v1}, Landroid/icu/message2/MFDataModel$LiteralExpression;-><init>(Landroid/icu/message2/MFDataModel$Literal;Landroid/icu/message2/MFDataModel$Annotation;Ljava/util/List;)V

    return-object v4
.end method

.method private blacklist getLiteralOrVariableRef()Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 431
    .local v0, "cp":I
    const/16 v1, 0x24

    if-ne v0, v1, :cond_f

    .line 432
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getVariableRef()Landroid/icu/message2/MFDataModel$VariableRef;

    move-result-object v1

    return-object v1

    .line 434
    :cond_f
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getLiteral()Landroid/icu/message2/MFDataModel$Literal;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getMarkup()Landroid/icu/message2/MFDataModel$Markup;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 295
    .local v0, "cp":I
    const/16 v1, 0x23

    const/16 v2, 0x2f

    if-eq v0, v1, :cond_11

    if-ne v0, v2, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    const-string v3, "Should not happen. Expecting a markup."

    invoke-direct {p0, v1, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 298
    if-ne v0, v2, :cond_1c

    sget-object v1, Landroid/icu/message2/MFDataModel$Markup$Kind;->CLOSE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    goto :goto_1e

    :cond_1c
    sget-object v1, Landroid/icu/message2/MFDataModel$Markup$Kind;->OPEN:Landroid/icu/message2/MFDataModel$Markup$Kind;

    .line 300
    .local v1, "kind":Landroid/icu/message2/MFDataModel$Markup$Kind;
    :goto_1e
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getMarkupAnnotation()Landroid/icu/message2/MFDataModel$Annotation;

    move-result-object v3

    .line 301
    .local v3, "annotation":Landroid/icu/message2/MFDataModel$Annotation;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getAttributes()Ljava/util/List;

    move-result-object v4

    .line 304
    .local v4, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 306
    iget-object v5, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v5}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 307
    if-ne v0, v2, :cond_38

    .line 308
    sget-object v1, Landroid/icu/message2/MFDataModel$Markup$Kind;->STANDALONE:Landroid/icu/message2/MFDataModel$Markup$Kind;

    .line 309
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 312
    :cond_38
    instance-of v2, v3, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v2, :cond_49

    .line 313
    move-object v2, v3

    check-cast v2, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    .line 314
    .local v2, "fa":Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    new-instance v5, Landroid/icu/message2/MFDataModel$Markup;

    iget-object v6, v2, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    iget-object v7, v2, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->options:Ljava/util/Map;

    invoke-direct {v5, v1, v6, v7, v4}, Landroid/icu/message2/MFDataModel$Markup;-><init>(Landroid/icu/message2/MFDataModel$Markup$Kind;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-object v5

    .line 317
    .end local v2    # "fa":Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    :cond_49
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getMarkupAnnotation()Landroid/icu/message2/MFDataModel$Annotation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 227
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 228
    .local v0, "cp":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_2c

    .line 242
    return-object v1

    .line 230
    :sswitch_e
    return-object v1

    .line 235
    :sswitch_f
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 236
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "identifier":Ljava/lang/String;
    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const-string v3, "Annotation / function name missing"

    invoke-direct {p0, v2, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 238
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getOptions()Ljava/util/Map;

    move-result-object v2

    .line 239
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    new-instance v3, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    invoke-direct {v3, v1, v2}, Landroid/icu/message2/MFDataModel$FunctionAnnotation;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v3

    :sswitch_data_2c
    .sparse-switch
        0x23 -> :sswitch_f
        0x2f -> :sswitch_f
        0x7d -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist getMatch(Ljava/util/List;)Landroid/icu/message2/MFDataModel$SelectMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;)",
            "Landroid/icu/message2/MFDataModel$SelectMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 574
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Expression;>;"
    :goto_5
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 581
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPlaceholder()Landroid/icu/message2/MFDataModel$Expression;

    move-result-object v1

    .line 582
    .local v1, "expression":Landroid/icu/message2/MFDataModel$Expression;
    if-nez v1, :cond_3c

    .line 583
    nop

    .line 590
    .end local v1    # "expression":Landroid/icu/message2/MFDataModel$Expression;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "There should be at least one selector expression."

    invoke-direct {p0, v1, v2}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 595
    .local v2, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Variant;>;"
    :goto_20
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getVariant()Landroid/icu/message2/MFDataModel$Variant;

    move-result-object v1

    .line 596
    .local v1, "variant":Landroid/icu/message2/MFDataModel$Variant;
    if-nez v1, :cond_38

    .line 597
    nop

    .line 601
    .end local v1    # "variant":Landroid/icu/message2/MFDataModel$Variant;
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v1

    const-string v3, "Content detected after the end of the message."

    invoke-direct {p0, v1, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 602
    new-instance v1, Landroid/icu/message2/MFDataModel$SelectMessage;

    invoke-direct {v1, p1, v0, v2}, Landroid/icu/message2/MFDataModel$SelectMessage;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 599
    .restart local v1    # "variant":Landroid/icu/message2/MFDataModel$Variant;
    :cond_38
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    .end local v1    # "variant":Landroid/icu/message2/MFDataModel$Variant;
    goto :goto_20

    .line 585
    .end local v2    # "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Variant;>;"
    .local v1, "expression":Landroid/icu/message2/MFDataModel$Expression;
    :cond_3c
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$Markup;

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Cannot do selection on markup"

    invoke-direct {p0, v2, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v1    # "expression":Landroid/icu/message2/MFDataModel$Expression;
    goto :goto_5
.end method

.method private blacklist getName()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 723
    .local v1, "cp":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    const-string v5, "Expected name or namespace."

    invoke-direct {p0, v4, v5}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 724
    invoke-static {v1}, Landroid/icu/message2/StringUtils;->isNameStart(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 725
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3, v2}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 726
    const/4 v2, 0x0

    return-object v2

    .line 728
    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 730
    :goto_27
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 731
    invoke-static {v1}, Landroid/icu/message2/StringUtils;->isNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 732
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 733
    :cond_37
    if-ne v1, v3, :cond_3a

    .line 734
    goto :goto_40

    .line 736
    :cond_3a
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3, v2}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 737
    nop

    .line 740
    :goto_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getNumberLiteral()Landroid/icu/message2/MFDataModel$Literal;
    .registers 3

    .line 504
    sget-object v0, Landroid/icu/message2/MFParser;->RE_NUMBER_LITERAL:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Landroid/icu/message2/MFParser;->peekWithRegExp(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "numberString":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 506
    new-instance v1, Landroid/icu/message2/MFDataModel$Literal;

    invoke-direct {v1, v0}, Landroid/icu/message2/MFDataModel$Literal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 508
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getOption()Landroid/icu/message2/MFDataModel$Option;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v0

    .line 412
    .local v0, "position":I
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 413
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "identifier":Ljava/lang/String;
    if-nez v1, :cond_16

    .line 415
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 416
    const/4 v2, 0x0

    return-object v2

    .line 418
    :cond_16
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 419
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v2

    .line 420
    .local v2, "cp":I
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    const-string v4, "Expected \'=\'"

    invoke-direct {p0, v3, v4}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 421
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 422
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getLiteralOrVariableRef()Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    move-result-object v3

    .line 423
    .local v3, "litOrVar":Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    if-nez v3, :cond_39

    .line 424
    const-string v4, "Options must have a value. An empty string should be quoted."

    invoke-direct {p0, v4}, Landroid/icu/message2/MFParser;->error(Ljava/lang/String;)V

    .line 426
    :cond_39
    new-instance v4, Landroid/icu/message2/MFDataModel$Option;

    invoke-direct {v4, v1, v3}, Landroid/icu/message2/MFDataModel$Option;-><init>(Ljava/lang/String;Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V

    return-object v4
.end method

.method private blacklist getOptions()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/MFDataModel$Option;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 384
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    const/4 v1, 0x1

    .line 385
    .local v1, "first":Z
    const/4 v2, 0x0

    .line 387
    .local v2, "skipCount":I
    :goto_7
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getOption()Landroid/icu/message2/MFDataModel$Option;

    move-result-object v3

    .line 388
    .local v3, "option":Landroid/icu/message2/MFDataModel$Option;
    if-nez v3, :cond_14

    .line 389
    nop

    .line 405
    .end local v3    # "option":Landroid/icu/message2/MFDataModel$Option;
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3, v2}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 406
    return-object v0

    .line 392
    .restart local v3    # "option":Landroid/icu/message2/MFDataModel$Option;
    :cond_14
    if-nez v1, :cond_1b

    if-eqz v2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v4, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v4, 0x1

    :goto_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected whitespace before option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/icu/message2/MFDataModel$Option;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 394
    const/4 v1, 0x0

    .line 395
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$Option;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicated option \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/icu/message2/MFDataModel$Option;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/icu/message2/MFParser;->error(Ljava/lang/String;)V

    .line 398
    :cond_5b
    iget-object v4, v3, Landroid/icu/message2/MFDataModel$Option;->name:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    move-result v2

    .line 403
    .end local v3    # "option":Landroid/icu/message2/MFDataModel$Option;
    goto :goto_7
.end method

.method private blacklist getPattern()Landroid/icu/message2/MFDataModel$Pattern;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/icu/message2/MFDataModel$Pattern;

    invoke-direct {v0}, Landroid/icu/message2/MFDataModel$Pattern;-><init>()V

    .line 91
    .local v0, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    :goto_5
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPatternPart()Landroid/icu/message2/MFDataModel$PatternPart;

    move-result-object v1

    .line 92
    .local v1, "part":Landroid/icu/message2/MFDataModel$PatternPart;
    if-nez v1, :cond_d

    .line 93
    nop

    .line 98
    .end local v1    # "part":Landroid/icu/message2/MFDataModel$PatternPart;
    return-object v0

    .line 95
    .restart local v1    # "part":Landroid/icu/message2/MFDataModel$PatternPart;
    :cond_d
    iget-object v2, v0, Landroid/icu/message2/MFDataModel$Pattern;->parts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v1    # "part":Landroid/icu/message2/MFDataModel$PatternPart;
    goto :goto_5
.end method

.method private blacklist getPatternPart()Landroid/icu/message2/MFDataModel$PatternPart;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 103
    .local v0, "cp":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_1c

    .line 112
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "plainText":Ljava/lang/String;
    new-instance v2, Landroid/icu/message2/MFDataModel$StringPart;

    invoke-direct {v2, v1}, Landroid/icu/message2/MFDataModel$StringPart;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "sp":Landroid/icu/message2/MFDataModel$StringPart;
    return-object v2

    .line 107
    .end local v1    # "plainText":Ljava/lang/String;
    .end local v2    # "sp":Landroid/icu/message2/MFDataModel$StringPart;
    :sswitch_14
    return-object v1

    .line 109
    :sswitch_15
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPlaceholder()Landroid/icu/message2/MFDataModel$Expression;

    move-result-object v1

    .line 110
    .local v1, "ph":Landroid/icu/message2/MFDataModel$Expression;
    return-object v1

    .line 105
    .end local v1    # "ph":Landroid/icu/message2/MFDataModel$Expression;
    :sswitch_1a
    return-object v1

    nop

    :sswitch_data_1c
    .sparse-switch
        -0x1 -> :sswitch_1a
        0x7b -> :sswitch_15
        0x7d -> :sswitch_14
    .end sparse-switch
.end method

.method private blacklist getPlaceholder()Landroid/icu/message2/MFDataModel$Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 161
    .local v0, "cp":I
    const/16 v1, 0x7b

    if-eq v0, v1, :cond_c

    .line 162
    const/4 v1, 0x0

    return-object v1

    .line 164
    :cond_c
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    .line 165
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 166
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v0

    .line 169
    const/16 v1, 0x23

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_23

    goto :goto_3c

    .line 171
    :cond_23
    const/16 v1, 0x24

    if-ne v0, v1, :cond_2c

    .line 172
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getVariableExpression()Landroid/icu/message2/MFDataModel$VariableExpression;

    move-result-object v1

    .local v1, "result":Landroid/icu/message2/MFDataModel$Expression;
    goto :goto_40

    .line 173
    .end local v1    # "result":Landroid/icu/message2/MFDataModel$Expression;
    :cond_2c
    invoke-static {v0}, Landroid/icu/message2/StringUtils;->isFunctionSigil(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 174
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getAnnotationExpression()Landroid/icu/message2/MFDataModel$Expression;

    move-result-object v1

    .restart local v1    # "result":Landroid/icu/message2/MFDataModel$Expression;
    goto :goto_40

    .line 176
    .end local v1    # "result":Landroid/icu/message2/MFDataModel$Expression;
    :cond_37
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getLiteralExpression()Landroid/icu/message2/MFDataModel$Expression;

    move-result-object v1

    .restart local v1    # "result":Landroid/icu/message2/MFDataModel$Expression;
    goto :goto_40

    .line 170
    .end local v1    # "result":Landroid/icu/message2/MFDataModel$Expression;
    :cond_3c
    :goto_3c
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getMarkup()Landroid/icu/message2/MFDataModel$Markup;

    move-result-object v1

    .line 179
    .restart local v1    # "result":Landroid/icu/message2/MFDataModel$Expression;
    :goto_40
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 180
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 181
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    const-string v3, "Unclosed placeholder"

    invoke-direct {p0, v2, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 183
    return-object v1
.end method

.method private blacklist getQuotedLiteral()Landroid/icu/message2/MFDataModel$Literal;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 468
    .local v1, "cp":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x7c

    if-ne v1, v4, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v3

    :goto_14
    const-string v6, "expected starting \'|\'"

    invoke-direct {p0, v5, v6}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 470
    :goto_19
    iget-object v5, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v5}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 471
    const/4 v5, -0x1

    if-ne v1, v5, :cond_23

    .line 472
    goto :goto_50

    .line 473
    :cond_23
    invoke-static {v1}, Landroid/icu/message2/StringUtils;->isQuotedChar(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 475
    :cond_2d
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_50

    .line 476
    iget-object v6, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v6}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 477
    if-eq v1, v4, :cond_46

    if-eq v1, v5, :cond_46

    const/16 v5, 0x7b

    if-eq v1, v5, :cond_46

    const/16 v5, 0x7d

    if-ne v1, v5, :cond_44

    goto :goto_46

    :cond_44
    move v5, v3

    goto :goto_47

    :cond_46
    :goto_46
    move v5, v2

    .line 478
    .local v5, "isValidEscape":Z
    :goto_47
    const-string v6, "Invalid escape sequence inside quoted literal"

    invoke-direct {p0, v5, v6}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 480
    .end local v5    # "isValidEscape":Z
    goto :goto_19

    .line 485
    :cond_50
    :goto_50
    if-ne v1, v4, :cond_53

    goto :goto_54

    :cond_53
    move v2, v3

    :goto_54
    const-string v3, "expected ending \'|\'"

    invoke-direct {p0, v2, v3}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 487
    new-instance v2, Landroid/icu/message2/MFDataModel$Literal;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/message2/MFDataModel$Literal;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private blacklist getQuotedPattern()Landroid/icu/message2/MFDataModel$Pattern;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 709
    .local v0, "cp":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_e

    move v4, v1

    goto :goto_f

    :cond_e
    move v4, v2

    :goto_f
    const-string v5, "Expected { for a complex body"

    invoke-direct {p0, v4, v5}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 710
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 711
    if-ne v0, v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    const-string v4, "Expected second { for a complex body"

    invoke-direct {p0, v3, v4}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 712
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPattern()Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v3

    .line 713
    .local v3, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    iget-object v4, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v4}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 714
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_34

    move v5, v1

    goto :goto_35

    :cond_34
    move v5, v2

    :goto_35
    const-string v6, "Expected } to end a complex body"

    invoke-direct {p0, v5, v6}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 715
    iget-object v5, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v5}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 716
    if-ne v0, v4, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    const-string v2, "Expected second } to end a complex body"

    invoke-direct {p0, v1, v2}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 717
    return-object v3
.end method

.method private blacklist getText()Ljava/lang/String;
    .registers 8

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_5
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 122
    .local v1, "cp":I
    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_5e

    .line 140
    invoke-static {v1}, Landroid/icu/message2/StringUtils;->isContentChar(I)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-static {v1}, Landroid/icu/message2/StringUtils;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_5a

    .line 126
    :sswitch_1c
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 127
    const/16 v3, 0x5c

    if-eq v1, v3, :cond_43

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_43

    const/16 v4, 0x7c

    const/4 v5, 0x0

    if-ne v1, v4, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v5

    :goto_32
    const/16 v6, 0x7d

    if-ne v1, v6, :cond_37

    goto :goto_38

    :cond_37
    move v2, v5

    :goto_38
    or-int/2addr v2, v4

    if-eqz v2, :cond_3c

    goto :goto_43

    .line 130
    :cond_3c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 133
    goto :goto_5d

    .line 128
    :cond_43
    :goto_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 137
    :sswitch_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 138
    goto :goto_5d

    .line 124
    :sswitch_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 143
    :cond_50
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3, v2}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 141
    :cond_5a
    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 147
    .end local v1    # "cp":I
    :goto_5d
    goto :goto_5

    :sswitch_data_5e
    .sparse-switch
        -0x1 -> :sswitch_4b
        0x2e -> :sswitch_47
        0x40 -> :sswitch_47
        0x5c -> :sswitch_1c
        0x7c -> :sswitch_47
    .end sparse-switch
.end method

.method private blacklist getUnQuotedLiteral()Landroid/icu/message2/MFDataModel$Literal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 493
    new-instance v1, Landroid/icu/message2/MFDataModel$Literal;

    invoke-direct {v1, v0}, Landroid/icu/message2/MFDataModel$Literal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 495
    :cond_c
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getNumberLiteral()Landroid/icu/message2/MFDataModel$Literal;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getVariableExpression()Landroid/icu/message2/MFDataModel$VariableExpression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getVariableRef()Landroid/icu/message2/MFDataModel$VariableRef;

    move-result-object v0

    .line 271
    .local v0, "variableRef":Landroid/icu/message2/MFDataModel$VariableRef;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/icu/message2/MFParser;->getAnnotation(Z)Landroid/icu/message2/MFDataModel$Annotation;

    move-result-object v1

    .line 272
    .local v1, "annotation":Landroid/icu/message2/MFDataModel$Annotation;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getAttributes()Ljava/util/List;

    move-result-object v2

    .line 274
    .local v2, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    new-instance v3, Landroid/icu/message2/MFDataModel$VariableExpression;

    invoke-direct {v3, v0, v1, v2}, Landroid/icu/message2/MFDataModel$VariableExpression;-><init>(Landroid/icu/message2/MFDataModel$VariableRef;Landroid/icu/message2/MFDataModel$Annotation;Ljava/util/List;)V

    return-object v3
.end method

.method private blacklist getVariableRef()Landroid/icu/message2/MFDataModel$VariableRef;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v0

    .line 455
    .local v0, "cp":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x24

    if-eq v0, v3, :cond_16

    .line 456
    if-ne v0, v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    const-string v4, "We can\'t get here"

    invoke-direct {p0, v3, v4}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 460
    :cond_16
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    const-string v2, "Invalid variable reference following $"

    invoke-direct {p0, v1, v2}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 462
    new-instance v1, Landroid/icu/message2/MFDataModel$VariableRef;

    invoke-direct {v1, v3}, Landroid/icu/message2/MFDataModel$VariableRef;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist getVariant()Landroid/icu/message2/MFDataModel$Variant;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/icu/message2/MFParser;->getKey(Z)Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    move-result-object v1

    .line 613
    .local v1, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    if-nez v1, :cond_33

    .line 614
    nop

    .line 619
    .end local v1    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 620
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 621
    nop

    .line 622
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 621
    const-string v2, "After selector keys it is mandatory to have a pattern."

    invoke-direct {p0, v1, v2}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 623
    const/4 v1, 0x0

    return-object v1

    .line 625
    :cond_29
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getQuotedPattern()Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v1

    .line 626
    .local v1, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    new-instance v2, Landroid/icu/message2/MFDataModel$Variant;

    invoke-direct {v2, v0, v1}, Landroid/icu/message2/MFDataModel$Variant;-><init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V

    return-object v2

    .line 616
    .local v1, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    :cond_33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v1    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    goto :goto_5
.end method

.method public static blacklist parse(Ljava/lang/String;)Landroid/icu/message2/MFDataModel$Message;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    new-instance v0, Landroid/icu/message2/MFParser;

    invoke-direct {v0, p0}, Landroid/icu/message2/MFParser;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Landroid/icu/message2/MFParser;->parseImpl()Landroid/icu/message2/MFDataModel$Message;

    move-result-object v0

    return-object v0
.end method

.method private blacklist parseImpl()Landroid/icu/message2/MFDataModel$Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v0}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v0

    .line 54
    .local v0, "savedPosition":I
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 55
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v1

    .line 56
    .local v1, "cp":I
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_18

    .line 58
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getComplexMessage()Landroid/icu/message2/MFDataModel$Message;

    move-result-object v2

    .local v2, "result":Landroid/icu/message2/MFDataModel$Message;
    goto :goto_6c

    .line 59
    .end local v2    # "result":Landroid/icu/message2/MFDataModel$Message;
    :cond_18
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_58

    .line 60
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 61
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->peekChar()I

    move-result v1

    .line 62
    if-ne v1, v2, :cond_43

    .line 63
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 65
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getQuotedPattern()Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v2

    .line 66
    .local v2, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipOptionalWhitespaces()I

    .line 67
    new-instance v3, Landroid/icu/message2/MFDataModel$PatternMessage;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v2}, Landroid/icu/message2/MFDataModel$PatternMessage;-><init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V

    move-object v2, v3

    .line 68
    .local v2, "result":Landroid/icu/message2/MFDataModel$Message;
    goto :goto_6c

    .line 70
    .end local v2    # "result":Landroid/icu/message2/MFDataModel$Message;
    :cond_43
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 71
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPattern()Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v2

    .line 72
    .local v2, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    new-instance v3, Landroid/icu/message2/MFDataModel$PatternMessage;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v2}, Landroid/icu/message2/MFDataModel$PatternMessage;-><init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V

    move-object v2, v3

    .line 73
    .local v2, "result":Landroid/icu/message2/MFDataModel$Message;
    goto :goto_6c

    .line 76
    .end local v2    # "result":Landroid/icu/message2/MFDataModel$Message;
    :cond_58
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2, v0}, Landroid/icu/message2/InputSource;->gotoPosition(I)V

    .line 77
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->getPattern()Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v2

    .line 78
    .local v2, "pattern":Landroid/icu/message2/MFDataModel$Pattern;
    new-instance v3, Landroid/icu/message2/MFDataModel$PatternMessage;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v2}, Landroid/icu/message2/MFDataModel$PatternMessage;-><init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V

    move-object v2, v3

    .line 80
    .local v2, "result":Landroid/icu/message2/MFDataModel$Message;
    :goto_6c
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v3}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v3

    const-string v4, "Content detected after the end of the message."

    invoke-direct {p0, v3, v4}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 81
    new-instance v3, Landroid/icu/message2/MFDataModelValidator;

    invoke-direct {v3, v2}, Landroid/icu/message2/MFDataModelValidator;-><init>(Landroid/icu/message2/MFDataModel$Message;)V

    invoke-virtual {v3}, Landroid/icu/message2/MFDataModelValidator;->validate()Z

    .line 82
    return-object v2
.end method

.method private blacklist peekWithRegExp(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 772
    new-instance v0, Landroid/icu/message2/StringView;

    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    iget-object v1, v1, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v2}, Landroid/icu/message2/InputSource;->getPosition()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/icu/message2/StringView;-><init>(Ljava/lang/String;I)V

    .line 773
    .local v0, "sv":Landroid/icu/message2/StringView;
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 774
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 775
    .local v2, "found":Z
    if-eqz v2, :cond_2b

    .line 776
    iget-object v3, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/message2/InputSource;->skip(I)V

    .line 777
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 779
    :cond_2b
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist skipMandatoryWhitespaces()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/message2/MFParseException;
        }
    .end annotation

    .line 512
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipWhitespaces()I

    move-result v0

    .line 513
    .local v0, "count":I
    if-lez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Space expected"

    invoke-direct {p0, v1, v2}, Landroid/icu/message2/MFParser;->checkCondition(ZLjava/lang/String;)V

    .line 514
    return v0
.end method

.method private blacklist skipOptionalWhitespaces()I
    .registers 2

    .line 518
    invoke-direct {p0}, Landroid/icu/message2/MFParser;->skipWhitespaces()I

    move-result v0

    return v0
.end method

.method private blacklist skipWhitespaces()I
    .registers 5

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "skipCount":I
    :goto_1
    iget-object v1, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    invoke-virtual {v1}, Landroid/icu/message2/InputSource;->readCodePoint()I

    move-result v1

    .line 525
    .local v1, "cp":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 526
    return v0

    .line 528
    :cond_b
    invoke-static {v1}, Landroid/icu/message2/StringUtils;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 529
    iget-object v2, p0, Landroid/icu/message2/MFParser;->input:Landroid/icu/message2/InputSource;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/message2/InputSource;->backup(I)V

    .line 530
    return v0

    .line 532
    :cond_18
    nop

    .end local v1    # "cp":I
    add-int/lit8 v0, v0, 0x1

    .line 533
    goto :goto_1
.end method
