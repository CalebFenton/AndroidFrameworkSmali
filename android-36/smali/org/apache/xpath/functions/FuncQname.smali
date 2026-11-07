.class public Lorg/apache/xpath/functions/FuncQname;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncQname.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1543d9e4efa7b6a4L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_1a

    .line 52
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 53
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_14

    .line 54
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    :cond_14
    new-instance p1, Lorg/apache/xpath/objects/XString;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_1a
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
