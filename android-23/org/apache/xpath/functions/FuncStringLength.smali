.class public Lorg/apache/xpath/functions/FuncStringLength;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncStringLength.java"


# static fields
.field static final serialVersionUID:J = -0x23712495700b99fL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncStringLength;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@9
    move-result v1

    #@a
    int-to-double v2, v1

    #@b
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@e
    return-object v0
.end method
