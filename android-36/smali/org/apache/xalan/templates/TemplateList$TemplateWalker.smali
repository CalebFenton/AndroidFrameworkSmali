.class public Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
.super Ljava/lang/Object;
.source "TemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/TemplateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemplateWalker"
.end annotation


# instance fields
.field private greylist curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private greylist hashIterator:Ljava/util/Enumeration;

.field private greylist inPatterns:Z

.field private greylist m_compilerCache:Ljava/util/Hashtable;

.field final synthetic greylist this$0:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xalan/templates/TemplateList;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 869
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    .line 870
    invoke-static {p1}, Lorg/apache/xalan/templates/TemplateList;->-$$Nest$fgetm_patternTable(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    const/4 p1, 0x1

    .line 871
    iput-boolean p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    const/4 p1, 0x0

    .line 872
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;)V

    return-void
.end method


# virtual methods
.method public greylist next()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 883
    :cond_2
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-eqz v2, :cond_3f

    .line 885
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_10

    .line 886
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 888
    :cond_10
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_19

    .line 889
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    goto :goto_3f

    .line 892
    :cond_19
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 894
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 895
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    goto :goto_3f

    :cond_30
    const/4 v2, 0x0

    .line 899
    iput-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    .line 900
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    invoke-static {v2}, Lorg/apache/xalan/templates/TemplateList;->-$$Nest$fgetm_namedTemplates(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    .line 905
    :cond_3f
    :goto_3f
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-nez v2, :cond_55

    .line 907
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 908
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    goto :goto_55

    :cond_54
    return-object v0

    .line 913
    :cond_55
    :goto_55
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v2, :cond_2

    .line 916
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
