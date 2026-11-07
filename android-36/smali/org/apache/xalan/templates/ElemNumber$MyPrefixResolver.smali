.class Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
.super Ljava/lang/Object;
.source "ElemNumber.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPrefixResolver"
.end annotation


# instance fields
.field greylist dtm:Lorg/apache/xml/dtm/DTM;

.field greylist handle:I

.field greylist handleNullPrefix:Z

.field final synthetic greylist this$0:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->this$0:Lorg/apache/xalan/templates/ElemNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p3, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->dtm:Lorg/apache/xml/dtm/DTM;

    .line 97
    iput p4, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handle:I

    .line 98
    iput-boolean p5, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handleNullPrefix:Z

    return-void
.end method


# virtual methods
.method public greylist getBaseIdentifier()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->this$0:Lorg/apache/xalan/templates/ElemNumber;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 105
    iget-object p1, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handle:I

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist handlesNullPrefixes()Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handleNullPrefix:Z

    return p0
.end method
