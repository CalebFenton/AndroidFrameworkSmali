.class public Lorg/apache/xpath/functions/FuncSubstring;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncSubstring.java"


# static fields
.field static final serialVersionUID:J = -0x53387922fd0656eeL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    const/4 v0, 0x2

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 112
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncSubstring;->reportWrongNumberArgs()V

    #@6
    .line 109
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 12
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v9

    #@6
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@9
    move-result-object v4

    #@a
    .line 50
    .local v4, "s1":Lorg/apache/xml/utils/XMLString;
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg1:Lorg/apache/xpath/Expression;

    #@c
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v9

    #@10
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->num()D

    #@13
    move-result-wide v6

    #@14
    .line 51
    .local v6, "start":D
    invoke-interface {v4}, Lorg/apache/xml/utils/XMLString;->length()I

    #@17
    move-result v1

    #@18
    .line 54
    .local v1, "lenOfS1":I
    if-gtz v1, :cond_0

    #@1a
    .line 55
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@1c
    return-object v9

    #@1d
    .line 60
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_3

    #@23
    .line 65
    const-wide v6, -0x3ed17b8000000000L    # -1000000.0

    #@28
    .line 66
    const/4 v5, 0x0

    #@29
    .line 74
    .local v5, "startIndex":I
    :goto_0
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg2:Lorg/apache/xpath/Expression;

    #@2b
    if-eqz v9, :cond_6

    #@2d
    .line 76
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSubstring;->m_arg2:Lorg/apache/xpath/Expression;

    #@2f
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    #@32
    move-result-wide v2

    #@33
    .line 77
    .local v2, "len":D
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    #@36
    move-result-wide v10

    #@37
    long-to-double v10, v10

    #@38
    add-double/2addr v10, v6

    #@39
    double-to-int v9, v10

    #@3a
    add-int/lit8 v0, v9, -0x1

    #@3c
    .line 80
    .local v0, "end":I
    if-gez v0, :cond_5

    #@3e
    .line 81
    const/4 v0, 0x0

    #@3f
    .line 85
    :cond_1
    :goto_1
    if-le v5, v1, :cond_2

    #@41
    .line 86
    move v5, v1

    #@42
    .line 88
    :cond_2
    invoke-interface {v4, v5, v0}, Lorg/apache/xml/utils/XMLString;->substring(II)Lorg/apache/xml/utils/XMLString;

    #@45
    move-result-object v8

    #@46
    .line 98
    .end local v0    # "end":I
    .end local v2    # "len":D
    .local v8, "substr":Lorg/apache/xml/utils/XMLString;
    :goto_2
    check-cast v8, Lorg/apache/xpath/objects/XString;

    #@48
    .end local v8    # "substr":Lorg/apache/xml/utils/XMLString;
    return-object v8

    #@49
    .line 70
    .end local v5    # "startIndex":I
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    #@4c
    move-result-wide v10

    #@4d
    long-to-double v6, v10

    #@4e
    .line 71
    const-wide/16 v10, 0x0

    #@50
    cmpl-double v9, v6, v10

    #@52
    if-lez v9, :cond_4

    #@54
    double-to-int v9, v6

    #@55
    add-int/lit8 v5, v9, -0x1

    #@57
    .restart local v5    # "startIndex":I
    goto :goto_0

    #@58
    .end local v5    # "startIndex":I
    :cond_4
    const/4 v5, 0x0

    #@59
    .restart local v5    # "startIndex":I
    goto :goto_0

    #@5a
    .line 82
    .restart local v0    # "end":I
    .restart local v2    # "len":D
    :cond_5
    if-le v0, v1, :cond_1

    #@5c
    .line 83
    move v0, v1

    #@5d
    goto :goto_1

    #@5e
    .line 92
    .end local v0    # "end":I
    .end local v2    # "len":D
    :cond_6
    if-le v5, v1, :cond_7

    #@60
    .line 93
    move v5, v1

    #@61
    .line 94
    :cond_7
    invoke-interface {v4, v5}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    #@64
    move-result-object v8

    #@65
    .restart local v8    # "substr":Lorg/apache/xml/utils/XMLString;
    goto :goto_2
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    #@2
    const-string/jumbo v1, "ER_TWO_OR_THREE"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method
