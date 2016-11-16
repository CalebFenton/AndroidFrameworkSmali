.class public abstract Lorg/apache/xalan/extensions/ExtensionHandler;
.super Ljava/lang/Object;
.source "ExtensionHandler.java"


# instance fields
.field protected m_namespaceUri:Ljava/lang/String;

.field protected m_scriptLang:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "scriptLang"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionHandler;->m_namespaceUri:Ljava/lang/String;

    #@5
    .line 79
    iput-object p2, p0, Lorg/apache/xalan/extensions/ExtensionHandler;->m_scriptLang:Ljava/lang/String;

    #@7
    .line 76
    return-void
.end method

.method static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "org.apache.xalan.xslt.extensions.Redirect"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 62
    const-string/jumbo p0, "org.apache.xalan.lib.Redirect"

    #@c
    .line 66
    :cond_0
    invoke-static {}, Lorg/apache/xalan/extensions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v0

    #@10
    const/4 v1, 0x1

    #@11
    .line 65
    invoke-static {p0, v0, v1}, Lorg/apache/xalan/extensions/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method


# virtual methods
.method public abstract callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract callFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract isElementAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isFunctionAvailable(Ljava/lang/String;)Z
.end method

.method public abstract processElement(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/Stylesheet;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
