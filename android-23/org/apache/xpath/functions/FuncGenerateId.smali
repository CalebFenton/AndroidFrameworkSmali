.class public Lorg/apache/xpath/functions/FuncGenerateId;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncGenerateId.java"


# static fields
.field static final serialVersionUID:J = 0xd82b9e035ca7df1L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
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
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncGenerateId;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    #@3
    move-result v0

    #@4
    .line 49
    .local v0, "which":I
    const/4 v1, -0x1

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 57
    new-instance v1, Lorg/apache/xpath/objects/XString;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "N"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@28
    return-object v1

    #@29
    .line 60
    :cond_0
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@2b
    return-object v1
.end method
