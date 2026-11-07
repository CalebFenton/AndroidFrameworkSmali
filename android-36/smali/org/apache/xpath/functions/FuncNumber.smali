.class public Lorg/apache/xpath/functions/FuncNumber;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNumber.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x64d8aa634ee113f4L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
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

    .line 45
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsNumber(Lorg/apache/xpath/XPathContext;)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
