.class public Lorg/apache/xpath/compiler/Compiler;
.super Lorg/apache/xpath/compiler/OpMap;
.source "Compiler.java"


# static fields
.field private static final DEBUG:Z

.field private static s_nextMethodId:J


# instance fields
.field private locPathDepth:I

.field private m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field m_locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1078
    const-wide/16 v0, 0x0

    #@2
    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    #@4
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    #@4
    .line 612
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@7
    .line 1235
    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@9
    .line 102
    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@b
    .line 103
    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@d
    .line 100
    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V
    .locals 1
    .param p1, "errorHandler"    # Ljavax/xml/transform/ErrorListener;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "fTable"    # Lorg/apache/xpath/compiler/FunctionTable;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    #@3
    .line 612
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@6
    .line 1235
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@9
    .line 91
    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@b
    .line 92
    iput-object p2, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@d
    .line 93
    iput-object p3, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@f
    .line 89
    return-void
.end method

.method private compileExtension(I)Lorg/apache/xpath/Expression;
    .locals 10
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1104
    add-int/lit8 v7, p1, 0x1

    #@2
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@5
    move-result v7

    #@6
    add-int/2addr v7, p1

    #@7
    add-int/lit8 v0, v7, -0x1

    #@9
    .line 1106
    .local v0, "endExtFunc":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@c
    move-result p1

    #@d
    .line 1108
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@10
    move-result-object v7

    #@11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@14
    move-result v8

    #@15
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Ljava/lang/String;

    #@1b
    .line 1110
    .local v5, "ns":Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    #@1d
    .line 1113
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@24
    move-result v8

    #@25
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/String;

    #@2b
    .line 1115
    .local v2, "funcName":Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    #@2d
    .line 1121
    new-instance v1, Lorg/apache/xpath/functions/FuncExtFunction;

    #@2f
    invoke-direct {p0}, Lorg/apache/xpath/compiler/Compiler;->getNextMethodId()J

    #@32
    move-result-wide v8

    #@33
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-direct {v1, v5, v2, v7}, Lorg/apache/xpath/functions/FuncExtFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@3a
    .line 1125
    .local v1, "extension":Lorg/apache/xpath/functions/Function;
    const/4 v3, 0x0

    #@3b
    .line 1127
    .local v3, "i":I
    :goto_0
    if-ge p1, v0, :cond_0

    #@3d
    .line 1129
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@40
    move-result v4

    #@41
    .line 1131
    .local v4, "nextOpPos":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v1, v7, v3}, Lorg/apache/xpath/functions/Function;->setArg(Lorg/apache/xpath/Expression;I)V
    :try_end_0
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1133
    move p1, v4

    #@49
    .line 1135
    add-int/lit8 v3, v3, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1139
    .end local v4    # "nextOpPos":I
    :catch_0
    move-exception v6

    #@4d
    .line 1143
    :cond_0
    return-object v1
.end method

.method private compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;
    .locals 4
    .param p1, "operation"    # Lorg/apache/xpath/operations/Operation;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    invoke-static {p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@3
    move-result v0

    #@4
    .line 214
    .local v0, "leftPos":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@7
    move-result v1

    #@8
    .line 216
    .local v1, "rightPos":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/operations/Operation;->setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V

    #@13
    .line 218
    return-object p1
.end method

.method private compilePredicates(I[Lorg/apache/xpath/Expression;)V
    .locals 3
    .param p1, "opPos"    # I
    .param p2, "predicates"    # [Lorg/apache/xpath/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1002
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x1d

    #@7
    if-ne v2, v1, :cond_0

    #@9
    .line 1004
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->predicate(I)Lorg/apache/xpath/Expression;

    #@c
    move-result-object v1

    #@d
    aput-object v1, p2, v0

    #@f
    .line 1005
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@12
    move-result p1

    #@13
    .line 1002
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 999
    :cond_0
    return-void
.end method

.method private compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;
    .locals 2
    .param p1, "unary"    # Lorg/apache/xpath/operations/UnaryOperation;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-static {p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@3
    move-result v0

    #@4
    .line 237
    .local v0, "rightPos":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1, v1}, Lorg/apache/xpath/operations/UnaryOperation;->setRight(Lorg/apache/xpath/Expression;)V

    #@b
    .line 239
    return-object p1
.end method

.method private declared-synchronized getNextMethodId()J
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1085
    :try_start_0
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    #@3
    const-wide v2, 0x7fffffffffffffffL

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1086
    const-wide/16 v0, 0x0

    #@e
    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    #@10
    .line 1088
    :cond_0
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    #@12
    const-wide/16 v2, 0x1

    #@14
    add-long/2addr v2, v0

    #@15
    sput-wide v2, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    return-wide v0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method


# virtual methods
.method protected and(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    new-instance v0, Lorg/apache/xpath/operations/And;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/And;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected arg(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    add-int/lit8 v0, p1, 0x2

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public assertion(ZLjava/lang/String;)V
    .locals 4
    .param p1, "b"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1188
    if-nez p1, :cond_0

    #@2
    .line 1191
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@5
    .line 1192
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p2, v2, v3

    #@b
    .line 1190
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 1194
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 1185
    .end local v0    # "fMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected bool(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 477
    new-instance v0, Lorg/apache/xpath/operations/Bool;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Bool;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public compile(I)Lorg/apache/xpath/Expression;
    .locals 6
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@5
    move-result v1

    #@6
    .line 119
    .local v1, "op":I
    const/4 v0, 0x0

    #@7
    .line 121
    .local v0, "expr":Lorg/apache/xpath/Expression;
    packed-switch v1, :pswitch_data_0

    #@a
    .line 190
    const-string/jumbo v2, "ER_UNKNOWN_OPCODE"

    #@d
    .line 191
    new-array v3, v3, [Ljava/lang/Object;

    #@f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@12
    move-result v4

    #@13
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    aput-object v4, v3, v5

    #@19
    .line 190
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 196
    .end local v0    # "expr":Lorg/apache/xpath/Expression;
    :goto_0
    return-object v0

    #@1d
    .line 124
    .restart local v0    # "expr":Lorg/apache/xpath/Expression;
    :pswitch_0
    add-int/lit8 v2, p1, 0x2

    #@1f
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@22
    move-result-object v0

    #@23
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@24
    .line 126
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->or(I)Lorg/apache/xpath/Expression;

    #@27
    move-result-object v0

    #@28
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@29
    .line 128
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->and(I)Lorg/apache/xpath/Expression;

    #@2c
    move-result-object v0

    #@2d
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@2e
    .line 130
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->notequals(I)Lorg/apache/xpath/Expression;

    #@31
    move-result-object v0

    #@32
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@33
    .line 132
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->equals(I)Lorg/apache/xpath/Expression;

    #@36
    move-result-object v0

    #@37
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@38
    .line 134
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lte(I)Lorg/apache/xpath/Expression;

    #@3b
    move-result-object v0

    #@3c
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@3d
    .line 136
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lt(I)Lorg/apache/xpath/Expression;

    #@40
    move-result-object v0

    #@41
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@42
    .line 138
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gte(I)Lorg/apache/xpath/Expression;

    #@45
    move-result-object v0

    #@46
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@47
    .line 140
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gt(I)Lorg/apache/xpath/Expression;

    #@4a
    move-result-object v0

    #@4b
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@4c
    .line 142
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->plus(I)Lorg/apache/xpath/Expression;

    #@4f
    move-result-object v0

    #@50
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@51
    .line 144
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->minus(I)Lorg/apache/xpath/Expression;

    #@54
    move-result-object v0

    #@55
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@56
    .line 146
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mult(I)Lorg/apache/xpath/Expression;

    #@59
    move-result-object v0

    #@5a
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@5b
    .line 148
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->div(I)Lorg/apache/xpath/Expression;

    #@5e
    move-result-object v0

    #@5f
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@60
    .line 150
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mod(I)Lorg/apache/xpath/Expression;

    #@63
    move-result-object v0

    #@64
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@65
    .line 154
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->neg(I)Lorg/apache/xpath/Expression;

    #@68
    move-result-object v0

    #@69
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@6a
    .line 156
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->string(I)Lorg/apache/xpath/Expression;

    #@6d
    move-result-object v0

    #@6e
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@6f
    .line 158
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->bool(I)Lorg/apache/xpath/Expression;

    #@72
    move-result-object v0

    #@73
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@74
    .line 160
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->number(I)Lorg/apache/xpath/Expression;

    #@77
    move-result-object v0

    #@78
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@79
    .line 162
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->union(I)Lorg/apache/xpath/Expression;

    #@7c
    move-result-object v0

    #@7d
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@7e
    .line 164
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->literal(I)Lorg/apache/xpath/Expression;

    #@81
    move-result-object v0

    #@82
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@83
    .line 166
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->variable(I)Lorg/apache/xpath/Expression;

    #@86
    move-result-object v0

    #@87
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@88
    .line 168
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->group(I)Lorg/apache/xpath/Expression;

    #@8b
    move-result-object v0

    #@8c
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@8d
    .line 170
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_16
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->numberlit(I)Lorg/apache/xpath/Expression;

    #@90
    move-result-object v0

    #@91
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@92
    .line 172
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_17
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->arg(I)Lorg/apache/xpath/Expression;

    #@95
    move-result-object v0

    #@96
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@97
    .line 174
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_18
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileExtension(I)Lorg/apache/xpath/Expression;

    #@9a
    move-result-object v0

    #@9b
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@9c
    .line 176
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_19
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    #@9f
    move-result-object v0

    #@a0
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto/16 :goto_0

    #@a2
    .line 178
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_1a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPath(I)Lorg/apache/xpath/Expression;

    #@a5
    move-result-object v0

    #@a6
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto/16 :goto_0

    #@a8
    .line 180
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_1b
    const/4 v0, 0x0

    #@a9
    goto/16 :goto_0

    #@ab
    .line 182
    :pswitch_1c
    add-int/lit8 v2, p1, 0x2

    #@ad
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->matchPattern(I)Lorg/apache/xpath/Expression;

    #@b0
    move-result-object v0

    #@b1
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto/16 :goto_0

    #@b3
    .line 184
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_1d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPathPattern(I)Lorg/apache/xpath/Expression;

    #@b6
    move-result-object v0

    #@b7
    .local v0, "expr":Lorg/apache/xpath/Expression;
    goto/16 :goto_0

    #@b9
    .line 186
    .local v0, "expr":Lorg/apache/xpath/Expression;
    :pswitch_1e
    const-string/jumbo v2, "ER_UNKNOWN_OPCODE"

    #@bc
    .line 187
    new-array v3, v3, [Ljava/lang/Object;

    #@be
    const-string/jumbo v4, "quo"

    #@c1
    aput-object v4, v3, v5

    #@c3
    .line 186
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method compileFunction(I)Lorg/apache/xpath/Expression;
    .locals 13
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1021
    add-int/lit8 v7, p1, 0x1

    #@3
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@6
    move-result v7

    #@7
    add-int/2addr v7, p1

    #@8
    add-int/lit8 v0, v7, -0x1

    #@a
    .line 1023
    .local v0, "endFunc":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@d
    move-result p1

    #@e
    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@11
    move-result v2

    #@12
    .line 1027
    .local v2, "funcID":I
    add-int/lit8 p1, p1, 0x1

    #@14
    .line 1029
    const/4 v7, -0x1

    #@15
    if-eq v7, v2, :cond_2

    #@17
    .line 1031
    iget-object v7, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@19
    invoke-virtual {v7, v2}, Lorg/apache/xpath/compiler/FunctionTable;->getFunction(I)Lorg/apache/xpath/functions/Function;

    #@1c
    move-result-object v1

    #@1d
    .line 1038
    .local v1, "func":Lorg/apache/xpath/functions/Function;
    instance-of v7, v1, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    #@1f
    if-eqz v7, :cond_0

    #@21
    move-object v7, v1

    #@22
    .line 1039
    check-cast v7, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    #@24
    iget-object v8, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@26
    invoke-virtual {v7, v8}, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V

    #@29
    .line 1041
    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/xpath/functions/Function;->postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V

    #@2c
    .line 1045
    const/4 v3, 0x0

    #@2d
    .line 1047
    .local v3, "i":I
    move v5, p1

    #@2e
    .local v5, "p":I
    :goto_0
    if-ge v5, v0, :cond_1

    #@30
    .line 1052
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v1, v7, v3}, Lorg/apache/xpath/functions/Function;->setArg(Lorg/apache/xpath/Expression;I)V

    #@37
    .line 1047
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@3a
    move-result v5

    #@3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1055
    :cond_1
    invoke-virtual {v1, v3}, Lorg/apache/xpath/functions/Function;->checkNumberArgs(I)V
    :try_end_0
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 1067
    :goto_1
    return-object v1

    #@42
    .line 1058
    :catch_0
    move-exception v6

    #@43
    .line 1059
    .local v6, "wnae":Lorg/apache/xpath/functions/WrongNumberArgsException;
    iget-object v7, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@45
    invoke-virtual {v7, v2}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionName(I)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 1061
    .local v4, "name":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@4b
    new-instance v8, Ljavax/xml/transform/TransformerException;

    #@4d
    .line 1062
    const-string/jumbo v9, "ER_ONLY_ALLOWS"

    #@50
    .line 1063
    const/4 v10, 0x2

    #@51
    new-array v10, v10, [Ljava/lang/Object;

    #@53
    const/4 v11, 0x0

    #@54
    aput-object v4, v10, v11

    #@56
    invoke-virtual {v6}, Lorg/apache/xpath/functions/WrongNumberArgsException;->getMessage()Ljava/lang/String;

    #@59
    move-result-object v11

    #@5a
    const/4 v12, 0x1

    #@5b
    aput-object v11, v10, v12

    #@5d
    .line 1062
    invoke-static {v9, v10}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    .line 1063
    iget-object v10, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@63
    .line 1061
    invoke-direct {v8, v9, v10}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@66
    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@69
    goto :goto_1

    #@6a
    .line 1071
    .end local v1    # "func":Lorg/apache/xpath/functions/Function;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "p":I
    .end local v6    # "wnae":Lorg/apache/xpath/functions/WrongNumberArgsException;
    :cond_2
    const-string/jumbo v7, "ER_FUNCTION_TOKEN_NOT_FOUND"

    #@6d
    invoke-virtual {p0, v7, v8}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@70
    .line 1073
    return-object v8
.end method

.method public countPredicates(I)I
    .locals 3
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 977
    const/4 v0, 0x0

    #@1
    .line 979
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x1d

    #@7
    if-ne v2, v1, :cond_0

    #@9
    .line 981
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 983
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@e
    move-result p1

    #@f
    goto :goto_0

    #@10
    .line 986
    :cond_0
    return v0
.end method

.method protected div(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    new-instance v0, Lorg/apache/xpath/operations/Div;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Div;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected equals(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    new-instance v0, Lorg/apache/xpath/operations/Equals;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Equals;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1217
    .local v0, "fmsg":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1219
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@a
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@c
    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@e
    invoke-direct {v2, v0, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 1211
    return-void

    #@15
    .line 1228
    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@17
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@19
    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    #@1b
    invoke-direct {v2, v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@1e
    throw v2
.end method

.method public getCompiledPredicates(I)[Lorg/apache/xpath/Expression;
    .locals 3
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    #@3
    move-result v0

    #@4
    .line 953
    .local v0, "count":I
    if-lez v0, :cond_0

    #@6
    .line 955
    new-array v1, v0, [Lorg/apache/xpath/Expression;

    #@8
    .line 957
    .local v1, "predicates":[Lorg/apache/xpath/Expression;
    invoke-direct {p0, p1, v1}, Lorg/apache/xpath/compiler/Compiler;->compilePredicates(I[Lorg/apache/xpath/Expression;)V

    #@b
    .line 959
    return-object v1

    #@c
    .line 962
    .end local v1    # "predicates":[Lorg/apache/xpath/Expression;
    :cond_0
    const/4 v2, 0x0

    #@d
    return-object v2
.end method

.method getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;
    .locals 1

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@2
    return-object v0
.end method

.method public getLocationPathDepth()I
    .locals 1

    #@0
    .prologue
    .line 620
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@2
    return v0
.end method

.method public getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@2
    return-object v0
.end method

.method public getWhatToShow(I)I
    .locals 7
    .param p1, "opPos"    # I

    #@0
    .prologue
    const/16 v6, 0x1000

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, -0x1

    #@5
    .line 745
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@8
    move-result v0

    #@9
    .line 746
    .local v0, "axesType":I
    add-int/lit8 v2, p1, 0x3

    #@b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@e
    move-result v1

    #@f
    .line 749
    .local v1, "testType":I
    sparse-switch v1, :sswitch_data_0

    #@12
    .line 803
    return v3

    #@13
    .line 752
    :sswitch_0
    const/16 v2, 0x80

    #@15
    return v2

    #@16
    .line 755
    :sswitch_1
    const/16 v2, 0xc

    #@18
    return v2

    #@19
    .line 757
    :sswitch_2
    const/16 v2, 0x40

    #@1b
    return v2

    #@1c
    .line 760
    :sswitch_3
    packed-switch v0, :pswitch_data_0

    #@1f
    .line 772
    :pswitch_0
    const/4 v2, 0x0

    #@20
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@23
    move-result v2

    #@24
    const/16 v3, 0x1e

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 773
    const/16 v2, -0x503

    #@2a
    return v2

    #@2b
    .line 763
    :pswitch_1
    return v6

    #@2c
    .line 766
    :pswitch_2
    return v5

    #@2d
    .line 770
    :pswitch_3
    return v3

    #@2e
    .line 777
    :cond_0
    const/4 v2, -0x3

    #@2f
    return v2

    #@30
    .line 780
    :sswitch_4
    const/16 v2, 0x500

    #@32
    return v2

    #@33
    .line 782
    :sswitch_5
    const/high16 v2, 0x10000

    #@35
    return v2

    #@36
    .line 784
    :sswitch_6
    sparse-switch v0, :sswitch_data_1

    #@39
    .line 799
    return v4

    #@3a
    .line 787
    :sswitch_7
    return v6

    #@3b
    .line 790
    :sswitch_8
    return v5

    #@3c
    .line 795
    :sswitch_9
    return v4

    #@3d
    .line 749
    nop

    #@3e
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x23 -> :sswitch_4
        0x406 -> :sswitch_0
        0x407 -> :sswitch_1
        0x408 -> :sswitch_2
        0x409 -> :sswitch_3
        0x40a -> :sswitch_5
    .end sparse-switch

    #@5c
    .line 760
    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@7c
    .line 784
    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_8
        0x31 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_9
    .end sparse-switch
.end method

.method protected group(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 570
    add-int/lit8 v0, p1, 0x2

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected gt(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    new-instance v0, Lorg/apache/xpath/operations/Gt;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Gt;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected gte(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    new-instance v0, Lorg/apache/xpath/operations/Gte;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Gte;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected literal(I)Lorg/apache/xpath/Expression;
    .locals 2
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 506
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@3
    move-result p1

    #@4
    .line 508
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xpath/objects/XString;

    #@12
    return-object v0
.end method

.method public locationPath(I)Lorg/apache/xpath/Expression;
    .locals 3
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 643
    iget v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@7
    .line 646
    :try_start_0
    iget v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@9
    if-nez v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    #@f
    move-result-object v0

    #@10
    .line 647
    .local v0, "iter":Lorg/apache/xml/dtm/DTMIterator;
    check-cast v0, Lorg/apache/xpath/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 651
    .end local v0    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@18
    .line 647
    return-object v0

    #@19
    .line 650
    :catchall_0
    move-exception v1

    #@1a
    .line 651
    iget v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    iput v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@20
    .line 650
    throw v1
.end method

.method public locationPathPattern(I)Lorg/apache/xpath/Expression;
    .locals 2
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 728
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@3
    move-result p1

    #@4
    .line 730
    const/4 v0, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected lt(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    new-instance v0, Lorg/apache/xpath/operations/Lt;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Lt;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected lte(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    new-instance v0, Lorg/apache/xpath/operations/Lte;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Lte;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected matchPattern(I)Lorg/apache/xpath/Expression;
    .locals 6
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x1f

    #@2
    .line 680
    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@4
    add-int/lit8 v4, v4, 0x1

    #@6
    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@8
    .line 684
    move v1, p1

    #@9
    .line 687
    .local v1, "nextOpPos":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@d
    move-result v4

    #@e
    if-ne v4, v5, :cond_0

    #@10
    .line 689
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@13
    move-result v1

    #@14
    .line 687
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 692
    :cond_0
    const/4 v4, 0x1

    #@18
    if-ne v0, v4, :cond_1

    #@1a
    .line 693
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v4

    #@1e
    .line 711
    iget v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@20
    add-int/lit8 v5, v5, -0x1

    #@22
    iput v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@24
    .line 693
    return-object v4

    #@25
    .line 695
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/xpath/patterns/UnionPattern;

    #@27
    invoke-direct {v3}, Lorg/apache/xpath/patterns/UnionPattern;-><init>()V

    #@2a
    .line 696
    .local v3, "up":Lorg/apache/xpath/patterns/UnionPattern;
    new-array v2, v0, [Lorg/apache/xpath/patterns/StepPattern;

    #@2c
    .line 698
    .local v2, "patterns":[Lorg/apache/xpath/patterns/StepPattern;
    const/4 v0, 0x0

    #@2d
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@30
    move-result v4

    #@31
    if-ne v4, v5, :cond_2

    #@33
    .line 700
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@36
    move-result v1

    #@37
    .line 701
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Lorg/apache/xpath/patterns/StepPattern;

    #@3d
    aput-object v4, v2, v0

    #@3f
    .line 702
    move p1, v1

    #@40
    .line 698
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_1

    #@43
    .line 705
    :cond_2
    invoke-virtual {v3, v2}, Lorg/apache/xpath/patterns/UnionPattern;->setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 711
    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@48
    add-int/lit8 v4, v4, -0x1

    #@4a
    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@4c
    .line 707
    return-object v3

    #@4d
    .line 710
    .end local v2    # "patterns":[Lorg/apache/xpath/patterns/StepPattern;
    .end local v3    # "up":Lorg/apache/xpath/patterns/UnionPattern;
    :catchall_0
    move-exception v4

    #@4e
    .line 711
    iget v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@50
    add-int/lit8 v5, v5, -0x1

    #@52
    iput v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@54
    .line 710
    throw v4
.end method

.method protected minus(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    new-instance v0, Lorg/apache/xpath/operations/Minus;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Minus;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected mod(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    new-instance v0, Lorg/apache/xpath/operations/Mod;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Mod;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected mult(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    new-instance v0, Lorg/apache/xpath/operations/Mult;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Mult;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected neg(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    new-instance v0, Lorg/apache/xpath/operations/Neg;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Neg;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected notequals(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    new-instance v0, Lorg/apache/xpath/operations/NotEquals;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/NotEquals;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected number(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    new-instance v0, Lorg/apache/xpath/operations/Number;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Number;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected numberlit(I)Lorg/apache/xpath/Expression;
    .locals 2
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 523
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@3
    move-result p1

    #@4
    .line 525
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xpath/objects/XNumber;

    #@12
    return-object v0
.end method

.method protected or(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    new-instance v0, Lorg/apache/xpath/operations/Or;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Or;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected plus(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    new-instance v0, Lorg/apache/xpath/operations/Plus;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/Plus;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public predicate(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 666
    add-int/lit8 v0, p1, 0x2

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0
    .param p1, "pr"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 1254
    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@2
    .line 1252
    return-void
.end method

.method protected stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .locals 14
    .param p1, "opPos"    # I
    .param p2, "stepCount"    # I
    .param p3, "ancestorPattern"    # Lorg/apache/xpath/patterns/StepPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 826
    move v11, p1

    #@1
    .line 827
    .local v11, "startOpPos":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@4
    move-result v12

    #@5
    .line 829
    .local v12, "stepType":I
    const/4 v2, -0x1

    #@6
    if-ne v2, v12, :cond_0

    #@8
    .line 831
    const/4 v2, 0x0

    #@9
    return-object v2

    #@a
    .line 834
    :cond_0
    const/4 v7, 0x1

    #@b
    .line 836
    .local v7, "addMagicSelf":Z
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@e
    move-result v9

    #@f
    .line 844
    .local v9, "endStep":I
    sparse-switch v12, :sswitch_data_0

    #@12
    .line 898
    const-string/jumbo v2, "ER_UNKNOWN_MATCH_OPERATION"

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@19
    .line 900
    const/4 v2, 0x0

    #@1a
    return-object v2

    #@1b
    .line 849
    :sswitch_0
    const/4 v7, 0x0

    #@1c
    .line 850
    add-int/lit8 v2, p1, 0x1

    #@1e
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@21
    move-result v8

    #@22
    .line 851
    .local v8, "argLen":I
    new-instance v1, Lorg/apache/xpath/patterns/FunctionPattern;

    #@24
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    #@27
    move-result-object v2

    #@28
    const/16 v3, 0xa

    #@2a
    const/4 v4, 0x3

    #@2b
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    #@2e
    .line 903
    .local v1, "pattern":Lorg/apache/xpath/patterns/StepPattern;
    :goto_0
    add-int v2, p1, v8

    #@30
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    #@37
    .line 904
    if-nez p3, :cond_2

    #@39
    .line 932
    :goto_1
    add-int/lit8 v2, p2, 0x1

    #@3b
    invoke-virtual {p0, v9, v2, v1}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    #@3e
    move-result-object v10

    #@3f
    .line 935
    .local v10, "relativePathPattern":Lorg/apache/xpath/patterns/StepPattern;
    if-eqz v10, :cond_3

    #@41
    .end local v10    # "relativePathPattern":Lorg/apache/xpath/patterns/StepPattern;
    :goto_2
    return-object v10

    #@42
    .line 856
    .end local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    .end local v8    # "argLen":I
    :sswitch_1
    const/4 v7, 0x0

    #@43
    .line 857
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    #@46
    move-result v8

    #@47
    .line 858
    .restart local v8    # "argLen":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    #@4a
    move-result p1

    #@4b
    .line 859
    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    #@4d
    const/16 v2, 0x500

    #@4f
    .line 861
    const/16 v3, 0xa

    #@51
    const/4 v4, 0x3

    #@52
    .line 859
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    #@55
    .line 862
    .restart local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_0

    #@56
    .line 866
    .end local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    .end local v8    # "argLen":I
    :sswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    #@59
    move-result v8

    #@5a
    .line 867
    .restart local v8    # "argLen":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    #@5d
    move-result p1

    #@5e
    .line 868
    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    #@60
    .line 869
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 870
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 868
    const/4 v2, 0x2

    #@69
    .line 871
    const/16 v5, 0xa

    #@6b
    const/4 v6, 0x2

    #@6c
    .line 868
    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    #@6f
    .line 872
    .restart local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_0

    #@70
    .line 876
    .end local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    .end local v8    # "argLen":I
    :sswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    #@73
    move-result v8

    #@74
    .line 877
    .restart local v8    # "argLen":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    #@77
    move-result p1

    #@78
    .line 878
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@7b
    move-result v13

    #@7c
    .line 880
    .local v13, "what":I
    const/16 v2, 0x500

    #@7e
    if-ne v2, v13, :cond_1

    #@80
    .line 881
    const/4 v7, 0x0

    #@81
    .line 882
    :cond_1
    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    #@83
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@86
    move-result v2

    #@87
    .line 883
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    .line 884
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    .line 885
    const/4 v5, 0x0

    #@90
    const/4 v6, 0x3

    #@91
    .line 882
    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    #@94
    .line 886
    .restart local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_0

    #@95
    .line 890
    .end local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    .end local v8    # "argLen":I
    .end local v13    # "what":I
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    #@98
    move-result v8

    #@99
    .line 891
    .restart local v8    # "argLen":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    #@9c
    move-result p1

    #@9d
    .line 892
    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    #@9f
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@a2
    move-result v2

    #@a3
    .line 893
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    .line 894
    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    .line 895
    const/16 v5, 0xa

    #@ad
    const/4 v6, 0x3

    #@ae
    .line 892
    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    #@b1
    .line 896
    .restart local v1    # "pattern":Lorg/apache/xpath/patterns/StepPattern;
    goto/16 :goto_0

    #@b3
    .line 929
    :cond_2
    move-object/from16 v0, p3

    #@b5
    invoke-virtual {v1, v0}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    #@b8
    goto :goto_1

    #@b9
    .restart local v10    # "relativePathPattern":Lorg/apache/xpath/patterns/StepPattern;
    :cond_3
    move-object v10, v1

    #@ba
    .line 935
    goto :goto_2

    #@bb
    .line 844
    nop

    #@bc
    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
    .end sparse-switch
.end method

.method protected string(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    new-instance v0, Lorg/apache/xpath/operations/String;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/operations/String;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected union(I)Lorg/apache/xpath/Expression;
    .locals 2
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 601
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@6
    .line 604
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;->createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    .line 608
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@10
    .line 604
    return-object v0

    #@11
    .line 607
    :catchall_0
    move-exception v0

    #@12
    .line 608
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    #@18
    .line 607
    throw v0
.end method

.method protected variable(I)Lorg/apache/xpath/Expression;
    .locals 7
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 540
    new-instance v4, Lorg/apache/xpath/operations/Variable;

    #@2
    invoke-direct {v4}, Lorg/apache/xpath/operations/Variable;-><init>()V

    #@5
    .line 542
    .local v4, "var":Lorg/apache/xpath/operations/Variable;
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    #@8
    move-result p1

    #@9
    .line 544
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@c
    move-result v2

    #@d
    .line 546
    .local v2, "nsPos":I
    const/4 v5, -0x2

    #@e
    if-ne v5, v2, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    .line 549
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@14
    move-result-object v5

    #@15
    add-int/lit8 v6, p1, 0x1

    #@17
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@1a
    move-result v6

    #@1b
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 550
    .local v0, "localname":Ljava/lang/String;
    new-instance v3, Lorg/apache/xml/utils/QName;

    #@23
    invoke-direct {v3, v1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 552
    .local v3, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {v4, v3}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    #@29
    .line 554
    return-object v4

    #@2a
    .line 547
    .end local v0    # "localname":Ljava/lang/String;
    .end local v3    # "qname":Lorg/apache/xml/utils/QName;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/lang/String;

    #@34
    .local v1, "namespace":Ljava/lang/String;
    goto :goto_0
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1161
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1163
    .local v0, "fmsg":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1165
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@a
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@c
    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@e
    invoke-direct {v2, v0, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 1158
    :goto_0
    return-void

    #@15
    .line 1169
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 1170
    const-string/jumbo v3, "; file "

    #@23
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 1170
    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@29
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 1171
    const-string/jumbo v3, "; line "

    #@34
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 1171
    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@3a
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@3d
    move-result v3

    #@3e
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 1172
    const-string/jumbo v3, "; column "

    #@45
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 1172
    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    #@4b
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@4e
    move-result v3

    #@4f
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_0
.end method
