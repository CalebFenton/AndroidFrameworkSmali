.class public Lorg/apache/xpath/functions/FuncString;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncString.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1e9fb12d0dc860f3L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
