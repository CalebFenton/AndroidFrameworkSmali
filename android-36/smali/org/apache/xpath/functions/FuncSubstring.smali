.class public Lorg/apache/xpath/functions/FuncSubstring;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncSubstring.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x53387922fd0656eeL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist checkNumberArgs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    .line 112
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncSubstring;->reportWrongNumberArgs()V

    :cond_6
    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    .line 51
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v3

    if-gtz v3, :cond_1d

    .line 55
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 60
    :cond_1d
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2b

    const-wide v1, -0x3ed17b8000000000L    # -1000000.0

    :cond_29
    move v4, v5

    goto :goto_39

    .line 70
    :cond_2b
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v1, v6

    if-lez v4, :cond_29

    double-to-int v4, v1

    add-int/lit8 v4, v4, -0x1

    .line 74
    :goto_39
    iget-object p0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_5b

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide p0

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    add-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_4d

    goto :goto_52

    :cond_4d
    if-le p0, v3, :cond_51

    move v5, v3

    goto :goto_52

    :cond_51
    move v5, p0

    :goto_52
    if-le v4, v3, :cond_55

    goto :goto_56

    :cond_55
    move v3, v4

    .line 88
    :goto_56
    invoke-interface {v0, v3, v5}, Lorg/apache/xml/utils/XMLString;->substring(II)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    goto :goto_63

    :cond_5b
    if-le v4, v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v4

    .line 94
    :goto_5f
    invoke-interface {v0, v3}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 98
    :goto_63
    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 122
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "ER_TWO_OR_THREE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
