.class public Lorg/apache/xalan/templates/XMLNSDecl;
.super Ljava/lang/Object;
.source "XMLNSDecl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x5d1f8d55334acce9L


# instance fields
.field private m_isExcluded:Z

.field private m_prefix:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "isExcluded"    # Z

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    #@5
    .line 42
    iput-object p2, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    #@7
    .line 43
    iput-boolean p3, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    #@9
    .line 38
    return-void
.end method


# virtual methods
.method public getIsExcluded()Z
    .locals 1

    #@0
    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    #@2
    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    #@2
    return-object v0
.end method
