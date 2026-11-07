.class public Lorg/apache/xpath/functions/FuncLocalPart;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncLocalPart.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x695b7cc22f847ddaL


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

    if-ne v0, p0, :cond_a

    .line 49
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 50
    :cond_a
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    if-eq p0, v0, :cond_15

    .line 51
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_15
    const-string p0, ""

    .line 52
    :goto_17
    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string p1, "xmlns"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_2e

    .line 55
    :cond_28
    new-instance p1, Lorg/apache/xpath/objects/XString;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 53
    :cond_2e
    :goto_2e
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
