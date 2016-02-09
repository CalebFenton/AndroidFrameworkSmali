.class public Lorg/apache/xpath/functions/FuncContains;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncContains.java"


# static fields
.field static final serialVersionUID:J = 0x4690ac9fdbc0e66bL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

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
    .line 46
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncContains;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 47
    .local v1, "s1":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncContains;->m_arg1:Lorg/apache/xpath/Expression;

    #@c
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 50
    .local v2, "s2":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 51
    sget-object v3, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@22
    return-object v3

    #@23
    .line 53
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@26
    move-result v0

    #@27
    .line 55
    .local v0, "index":I
    const/4 v3, -0x1

    #@28
    if-le v0, v3, :cond_1

    #@2a
    sget-object v3, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@2c
    :goto_0
    return-object v3

    #@2d
    :cond_1
    sget-object v3, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@2f
    goto :goto_0
.end method
