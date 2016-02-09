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
.field private curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private hashIterator:Ljava/util/Enumeration;

.field private inPatterns:Z

.field private m_compilerCache:Ljava/util/Hashtable;

.field final synthetic this$0:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method private constructor <init>(Lorg/apache/xalan/templates/TemplateList;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xalan/templates/TemplateList;

    #@0
    .prologue
    .line 868
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 866
    new-instance v0, Ljava/util/Hashtable;

    #@7
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@a
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    #@c
    .line 870
    invoke-static {p1}, Lorg/apache/xalan/templates/TemplateList;->-get1(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    #@16
    .line 871
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    #@19
    .line 872
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@1c
    .line 868
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$TemplateWalker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xalan/templates/TemplateList;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 878
    const/4 v1, 0x0

    #@2
    .line 883
    :cond_0
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 885
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 886
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@c
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@12
    .line 888
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@14
    if-eqz v2, :cond_4

    #@16
    .line 889
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@18
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@1b
    move-result-object v1

    #@1c
    .line 905
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    #@1e
    if-nez v2, :cond_3

    #@20
    .line 907
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    #@22
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_6

    #@28
    .line 908
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    #@2a
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    #@30
    .line 913
    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    #@32
    new-instance v3, Ljava/lang/Integer;

    #@34
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    #@37
    move-result v4

    #@38
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    #@3b
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    #@41
    .line 914
    .local v0, "ct":Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v0, :cond_0

    #@43
    .line 916
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    #@45
    new-instance v3, Ljava/lang/Integer;

    #@47
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    #@4a
    move-result v4

    #@4b
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    #@4e
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 917
    return-object v1

    #@52
    .line 892
    .end local v0    # "ct":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_4
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    #@54
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_5

    #@5a
    .line 894
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    #@5c
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@62
    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@64
    .line 895
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@66
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@69
    move-result-object v1

    #@6a
    .local v1, "retValue":Lorg/apache/xalan/templates/ElemTemplate;
    goto :goto_0

    #@6b
    .line 899
    .end local v1    # "retValue":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_5
    const/4 v2, 0x0

    #@6c
    iput-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    #@6e
    .line 900
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    #@70
    invoke-static {v2}, Lorg/apache/xalan/templates/TemplateList;->-get0(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@77
    move-result-object v2

    #@78
    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    #@7a
    goto :goto_0

    #@7b
    .line 910
    :cond_6
    return-object v5
.end method
