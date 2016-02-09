.class public Lorg/apache/xpath/functions/FuncNumber;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNumber.java"


# static fields
.field static final serialVersionUID:J = 0x64d8aa634ee113f4L


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
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNumber;->getArg0AsNumber(Lorg/apache/xpath/XPathContext;)D

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@9
    return-object v0
.end method
