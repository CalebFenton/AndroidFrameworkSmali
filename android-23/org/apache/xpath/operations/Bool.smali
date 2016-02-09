.class public Lorg/apache/xpath/operations/Bool;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Bool.java"


# static fields
.field static final serialVersionUID:J = 0x9ed34d4f9cfd0bL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xpath/operations/Bool;->m_right:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    .line 48
    return-object p1

    #@8
    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@10
    :goto_0
    return-object v0

    #@11
    :cond_1
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@13
    goto :goto_0
.end method
