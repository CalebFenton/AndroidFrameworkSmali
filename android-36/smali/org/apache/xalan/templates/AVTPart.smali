.class public abstract Lorg/apache/xalan/templates/AVTPart;
.super Ljava/lang/Object;
.source "AVTPart.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field static final whitelist serialVersionUID:J = -0x1841414701217379L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist canTraverseOutsideSubtree()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract greylist evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract greylist fixupVariables(Ljava/util/Vector;I)V
.end method

.method public abstract greylist getSimpleString()Ljava/lang/String;
.end method

.method public greylist setXPathSupport(Lorg/apache/xpath/XPathContext;)V
    .registers 2

    .line 0
    return-void
.end method
