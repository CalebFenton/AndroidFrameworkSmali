.class public Lorg/apache/xalan/templates/AVTPartSimple;
.super Lorg/apache/xalan/templates/AVTPart;
.source "AVTPartSimple.java"


# static fields
.field static final serialVersionUID:J = -0x33f8c32d8f0120e9L


# instance fields
.field private m_val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    #@5
    .line 44
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 95
    return-void
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;
    .param p3, "context"    # I
    .param p4, "nsNode"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    #@2
    invoke-virtual {p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@5
    .line 88
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 69
    return-void
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    #@2
    return-object v0
.end method
