.class public Lorg/apache/xpath/compiler/Compiler;
.super Lorg/apache/xpath/compiler/OpMap;
.source "Compiler.java"


# static fields
.field private static final greylist DEBUG:Z = false

.field private static greylist s_nextMethodId:J


# instance fields
.field private greylist locPathDepth:I

.field private greylist m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field greylist m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private greylist m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field greylist m_locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    const/4 v0, -0x1

    .line 612
    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    .line 1235
    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 102
    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 103
    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor greylist <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    const/4 v0, -0x1

    .line 612
    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    .line 1235
    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 91
    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 92
    iput-object p2, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 93
    iput-object p3, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method

.method private greylist compileExtension(I)Lorg/apache/xpath/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 1104
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1106
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 1108
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    .line 1113
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x2

    .line 1121
    new-instance v3, Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-direct {p0}, Lorg/apache/xpath/compiler/Compiler;->getNextMethodId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/xpath/functions/FuncExtFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_3b
    if-ge p1, v0, :cond_4c

    .line 1129
    :try_start_3d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v2

    .line 1131
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Lorg/apache/xpath/functions/Function;->setArg(Lorg/apache/xpath/Expression;I)V
    :try_end_48
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_3d .. :try_end_48} :catch_4c

    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_3b

    :catch_4c
    :cond_4c
    return-object v3
.end method

.method private greylist compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 213
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 214
    invoke-virtual {p0, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    .line 216
    invoke-virtual {p0, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/apache/xpath/operations/Operation;->setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V

    return-object p1
.end method

.method private greylist compilePredicates(I[Lorg/apache/xpath/Expression;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1d

    .line 1002
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 1004
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->predicate(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1005
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method private greylist compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 235
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 237
    invoke-virtual {p0, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/operations/UnaryOperation;->setRight(Lorg/apache/xpath/Expression;)V

    return-object p1
.end method

.method private declared-synchronized greylist getNextMethodId()J
    .registers 5

    monitor-enter p0

    .line 1085
    :try_start_1
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const-wide/16 v0, 0x0

    .line 1086
    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_1c

    .line 1088
    :cond_13
    :goto_13
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_11

    monitor-exit p0

    return-wide v0

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_11

    throw v0
.end method


# virtual methods
.method protected greylist and(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/apache/xpath/operations/And;

    invoke-direct {v0}, Lorg/apache/xpath/operations/And;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist arg(I)Lorg/apache/xpath/Expression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x2

    .line 586
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist assertion(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 1190
    :cond_3
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1194
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected greylist bool(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/apache/xpath/operations/Bool;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Bool;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist compile(I)Lorg/apache/xpath/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 121
    const-string v1, "ER_UNKNOWN_OPCODE"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ba

    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 190
    invoke-virtual {p0, v1, p1}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 184
    :pswitch_1a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPathPattern(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    :pswitch_1f
    add-int/lit8 p1, p1, 0x2

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->matchPattern(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    :pswitch_26
    return-object v2

    .line 178
    :pswitch_27
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPath(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 170
    :pswitch_2c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->numberlit(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 172
    :pswitch_31
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->arg(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 176
    :pswitch_36
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 174
    :pswitch_3b
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileExtension(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 168
    :pswitch_40
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->group(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_45
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->variable(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_4a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->literal(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_4f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->union(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_54
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->number(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 158
    :pswitch_59
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->bool(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_5e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->string(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 154
    :pswitch_63
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->neg(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 186
    :pswitch_68
    const-string p1, "quo"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 150
    :pswitch_72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mod(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 148
    :pswitch_77
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->div(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 146
    :pswitch_7c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mult(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 144
    :pswitch_81
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->minus(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 142
    :pswitch_86
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->plus(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 140
    :pswitch_8b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gt(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_90
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gte(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 136
    :pswitch_95
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lt(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_9a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lte(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 132
    :pswitch_9f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->equals(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 130
    :pswitch_a4
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->notequals(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_a9
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->and(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    .line 126
    :pswitch_ae
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->or(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    :pswitch_b3
    add-int/lit8 p1, p1, 0x2

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_90
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_26
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method greylist compileFunction(I)Lorg/apache/xpath/Expression;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 1021
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1023
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_63

    .line 1031
    iget-object v2, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunction(I)Lorg/apache/xpath/functions/Function;

    move-result-object v2

    .line 1038
    instance-of v3, v2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    if-eqz v3, :cond_28

    .line 1039
    move-object v3, v2

    check-cast v3, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    iget-object v4, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 1041
    :cond_28
    invoke-virtual {v2, p0}, Lorg/apache/xpath/functions/Function;->postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V

    const/4 v3, 0x0

    :goto_2c
    if-ge p1, v0, :cond_3e

    .line 1052
    :try_start_2e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/apache/xpath/functions/Function;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 1047
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :catch_3c
    move-exception p1

    goto :goto_42

    .line 1055
    :cond_3e
    invoke-virtual {v2, v3}, Lorg/apache/xpath/functions/Function;->checkNumberArgs(I)V
    :try_end_41
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_2e .. :try_end_41} :catch_3c

    return-object v2

    .line 1059
    :goto_42
    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionName(I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v3, Ljavax/xml/transform/TransformerException;

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1062
    const-string v0, "ER_ONLY_ALLOWS"

    invoke-static {v0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v3, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 1061
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-object v2

    .line 1071
    :cond_63
    const-string p1, "ER_FUNCTION_TOKEN_NOT_FOUND"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public greylist countPredicates(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1d

    .line 979
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 983
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_1

    :cond_10
    return v0
.end method

.method protected greylist div(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/apache/xpath/operations/Div;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Div;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist equals(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 295
    new-instance v0, Lorg/apache/xpath/operations/Equals;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Equals;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1214
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1217
    iget-object p2, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_13

    .line 1219
    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 1228
    :cond_13
    new-instance p2, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {p2, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p2
.end method

.method public greylist getCompiledPredicates(I)[Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 951
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v0

    if-lez v0, :cond_c

    .line 955
    new-array v0, v0, [Lorg/apache/xpath/Expression;

    .line 957
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/compiler/Compiler;->compilePredicates(I[Lorg/apache/xpath/Expression;)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;
    .registers 1

    .line 628
    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-object p0
.end method

.method public greylist getLocationPathDepth()I
    .registers 1

    .line 620
    iget p0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return p0
.end method

.method public greylist getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .registers 1

    .line 1244
    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-object p0
.end method

.method public greylist getWhatToShow(I)I
    .registers 9

    .line 745
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    .line 746
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p1

    const/16 v1, 0x22

    const/4 v2, 0x2

    const/16 v3, 0x1000

    const/16 v4, 0x31

    const/16 v5, 0x33

    const/16 v6, 0x27

    if-eq p1, v1, :cond_52

    const/16 v1, 0x23

    if-eq p1, v1, :cond_4f

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_5c

    return v1

    :pswitch_20
    const/high16 p0, 0x10000

    return p0

    :pswitch_23
    const/16 p1, 0x26

    if-eq v0, p1, :cond_45

    if-eq v0, v6, :cond_44

    const/16 p1, 0x2a

    if-eq v0, p1, :cond_45

    if-eq v0, v5, :cond_44

    const/16 p1, 0x30

    if-eq v0, p1, :cond_45

    if-eq v0, v4, :cond_43

    const/4 p1, 0x0

    .line 772
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_41

    const/16 p0, -0x503

    return p0

    :cond_41
    const/4 p0, -0x3

    return p0

    :cond_43
    return v3

    :cond_44
    return v2

    :cond_45
    return v1

    :pswitch_46
    const/16 p0, 0x40

    return p0

    :pswitch_49
    const/16 p0, 0xc

    return p0

    :pswitch_4c
    const/16 p0, 0x80

    return p0

    :cond_4f
    const/16 p0, 0x500

    return p0

    :cond_52
    if-eq v0, v6, :cond_5b

    if-eq v0, v4, :cond_5a

    if-eq v0, v5, :cond_5b

    const/4 p0, 0x1

    return p0

    :cond_5a
    return v3

    :cond_5b
    return v2

    :pswitch_data_5c
    .packed-switch 0x406
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method protected greylist group(I)Lorg/apache/xpath/Expression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x2

    .line 570
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist gt(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 351
    new-instance v0, Lorg/apache/xpath/operations/Gt;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Gt;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist gte(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/apache/xpath/operations/Gte;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Gte;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist literal(I)Lorg/apache/xpath/Expression;
    .registers 3

    .line 506
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 508
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method public greylist locationPath(I)Lorg/apache/xpath/Expression;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 643
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 646
    :goto_b
    :try_start_b
    invoke-static {p0, p1, v0}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p1

    .line 647
    check-cast p1, Lorg/apache/xpath/Expression;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_17

    .line 651
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object p1

    :catchall_17
    move-exception p1

    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 652
    throw p1
.end method

.method public greylist locationPathPattern(I)Lorg/apache/xpath/Expression;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 728
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 730
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object p0

    return-object p0
.end method

.method protected greylist lt(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 323
    new-instance v0, Lorg/apache/xpath/operations/Lt;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Lt;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist lte(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 309
    new-instance v0, Lorg/apache/xpath/operations/Lte;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Lte;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist matchPattern(I)Lorg/apache/xpath/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 680
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    move v2, p1

    move v3, v0

    .line 687
    :goto_9
    :try_start_9
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_1a

    .line 689
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catchall_18
    move-exception p1

    goto :goto_4c

    :cond_1a
    if-ne v3, v1, :cond_26

    .line 693
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_18

    .line 711
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object p1

    .line 695
    :cond_26
    :try_start_26
    new-instance v2, Lorg/apache/xpath/patterns/UnionPattern;

    invoke-direct {v2}, Lorg/apache/xpath/patterns/UnionPattern;-><init>()V

    .line 696
    new-array v3, v3, [Lorg/apache/xpath/patterns/StepPattern;

    .line 698
    :goto_2d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    if-ne v4, v5, :cond_43

    .line 700
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v4

    .line 701
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    aput-object p1, v3, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v4

    goto :goto_2d

    .line 705
    :cond_43
    invoke-virtual {v2, v3}, Lorg/apache/xpath/patterns/UnionPattern;->setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_18

    .line 711
    iget p1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object v2

    :goto_4c
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 712
    throw p1
.end method

.method protected greylist minus(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 379
    new-instance v0, Lorg/apache/xpath/operations/Minus;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Minus;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist mod(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 421
    new-instance v0, Lorg/apache/xpath/operations/Mod;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Mod;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist mult(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 393
    new-instance v0, Lorg/apache/xpath/operations/Mult;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Mult;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist neg(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/apache/xpath/operations/Neg;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Neg;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist notequals(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 281
    new-instance v0, Lorg/apache/xpath/operations/NotEquals;

    invoke-direct {v0}, Lorg/apache/xpath/operations/NotEquals;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist number(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 491
    new-instance v0, Lorg/apache/xpath/operations/Number;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Number;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist numberlit(I)Lorg/apache/xpath/Expression;
    .registers 3

    .line 523
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 525
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method protected greylist or(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 253
    new-instance v0, Lorg/apache/xpath/operations/Or;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Or;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist plus(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 365
    new-instance v0, Lorg/apache/xpath/operations/Plus;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Plus;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist predicate(I)Lorg/apache/xpath/Expression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x2

    .line 666
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2

    .line 1254
    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-void
.end method

.method protected greylist stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 827
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_9

    return-object v2

    .line 836
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v1

    const/16 v3, 0x19

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-eq v0, v3, :cond_84

    packed-switch v0, :pswitch_data_ac

    .line 898
    const-string p1, "ER_UNKNOWN_MATCH_OPERATION"

    invoke-virtual {p0, p1, v2}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 890
    :pswitch_1d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    .line 891
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result v2

    .line 892
    new-instance v3, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v4

    .line 893
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v5

    .line 894
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    :goto_39
    move p1, v2

    goto :goto_93

    .line 876
    :pswitch_3b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    .line 877
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result v2

    .line 878
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    .line 882
    new-instance v3, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v4

    .line 883
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_39

    .line 866
    :pswitch_5a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    .line 867
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result v2

    .line 868
    new-instance v3, Lorg/apache/xpath/patterns/StepPattern;

    .line 869
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v5

    .line 870
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v4, 0x2

    invoke-direct/range {v3 .. v8}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_39

    .line 857
    :pswitch_74
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    .line 858
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result p1

    .line 859
    new-instance v3, Lorg/apache/xpath/patterns/StepPattern;

    const/16 v2, 0x500

    invoke-direct {v3, v2, v5, v4}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    goto :goto_93

    :cond_84
    add-int/lit8 v0, p1, 0x1

    .line 850
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 851
    new-instance v3, Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-direct {v3, v2, v5, v4}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    :goto_93
    add-int/2addr p1, v0

    .line 903
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    if-nez p3, :cond_9e

    goto :goto_a1

    .line 929
    :cond_9e
    invoke-virtual {v3, p3}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    :goto_a1
    add-int/lit8 p2, p2, 0x1

    .line 932
    invoke-virtual {p0, v1, p2, v3}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object p0

    if-eqz p0, :cond_aa

    return-object p0

    :cond_aa
    return-object v3

    nop

    :pswitch_data_ac
    .packed-switch 0x32
        :pswitch_74
        :pswitch_5a
        :pswitch_3b
        :pswitch_1d
    .end packed-switch
.end method

.method protected greylist string(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 463
    new-instance v0, Lorg/apache/xpath/operations/String;

    invoke-direct {v0}, Lorg/apache/xpath/operations/String;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method protected greylist union(I)Lorg/apache/xpath/Expression;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 601
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 604
    :try_start_6
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;->createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_11

    .line 608
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object p1

    :catchall_11
    move-exception p1

    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 609
    throw p1
.end method

.method protected greylist variable(I)Lorg/apache/xpath/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 540
    new-instance v0, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    .line 542
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 544
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v2, v1, :cond_12

    const/4 v1, 0x0

    goto :goto_1c

    .line 547
    :cond_12
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    :goto_1c
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 550
    new-instance p1, Lorg/apache/xml/utils/QName;

    invoke-direct {p1, v1, p0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    return-object v0
.end method

.method public greylist warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1161
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1163
    iget-object p2, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_13

    .line 1165
    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 1169
    :cond_13
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; file "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 1170
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; line "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 1171
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; column "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 1172
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1169
    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
