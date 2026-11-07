.class public Lorg/apache/xalan/templates/XMLNSDecl;
.super Ljava/lang/Object;
.source "XMLNSDecl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = 0x5d1f8d55334acce9L


# instance fields
.field private greylist m_isExcluded:Z

.field private greylist m_prefix:Ljava/lang/String;

.field private greylist m_uri:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    .line 43
    iput-boolean p3, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    return-void
.end method


# virtual methods
.method public greylist getIsExcluded()Z
    .registers 1

    .line 85
    iget-boolean p0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    return p0
.end method

.method public greylist getPrefix()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getURI()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    return-object p0
.end method
