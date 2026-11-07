.class public Lorg/apache/xpath/functions/FuncSubstringBefore;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncSubstringBefore.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x390b98dd6bf9b89fL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 4
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
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p1, p0, :cond_1e

    .line 51
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    :cond_1e
    new-instance p1, Lorg/apache/xpath/objects/XString;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
