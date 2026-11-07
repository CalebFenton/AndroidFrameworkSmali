.class public Lorg/apache/xalan/templates/AVTPartSimple;
.super Lorg/apache/xalan/templates/AVTPart;
.source "AVTPartSimple.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x33f8c32d8f0120e9L


# instance fields
.field private greylist m_val:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .registers 5

    .line 90
    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist getSimpleString()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-object p0
.end method
