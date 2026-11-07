.class public Lorg/apache/xpath/functions/FuncTranslate;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncTranslate.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x173719f81d54e982L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object p0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 54
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, p1, :cond_48

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 59
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_3c

    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_45

    :cond_3c
    if-ge v6, v2, :cond_45

    .line 73
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_45
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 86
    :cond_48
    new-instance p0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
