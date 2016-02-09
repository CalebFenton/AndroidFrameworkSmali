.class public Lorg/apache/xpath/functions/FuncString;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncString.java"


# static fields
.field static final serialVersionUID:J = -0x1e9fb12d0dc860f3L


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
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncString;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/objects/XString;

    #@6
    return-object v0
.end method
