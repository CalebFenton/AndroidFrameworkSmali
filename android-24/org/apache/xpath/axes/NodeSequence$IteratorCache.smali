.class final Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
.super Ljava/lang/Object;
.source "NodeSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/NodeSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorCache"
.end annotation


# instance fields
.field private m_isComplete2:Z

.field private m_useCount2:I

.field private m_vec2:Lorg/apache/xml/utils/NodeVector;


# direct methods
.method static synthetic -wrap0(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V
    .locals 0
    .param p1, "nv"    # Lorg/apache/xml/utils/NodeVector;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 880
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    #@6
    .line 881
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    #@9
    .line 882
    const/4 v0, 0x1

    #@a
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    #@c
    .line 883
    return-void
.end method

.method private getVector()Lorg/apache/xml/utils/NodeVector;
    .locals 1

    #@0
    .prologue
    .line 921
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    #@2
    return-object v0
.end method

.method private increaseUseCount()V
    .locals 1

    #@0
    .prologue
    .line 901
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 902
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    #@a
    .line 900
    :cond_0
    return-void
.end method

.method private isComplete()Z
    .locals 1

    #@0
    .prologue
    .line 939
    iget-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    #@2
    return v0
.end method

.method private setCacheComplete(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 930
    iput-boolean p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    #@2
    .line 929
    return-void
.end method

.method private setVector(Lorg/apache/xml/utils/NodeVector;)V
    .locals 1
    .param p1, "nv"    # Lorg/apache/xml/utils/NodeVector;

    #@0
    .prologue
    .line 912
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    #@2
    .line 913
    const/4 v0, 0x1

    #@3
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    #@5
    .line 911
    return-void
.end method

.method private useCount()I
    .locals 1

    #@0
    .prologue
    .line 891
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    #@2
    return v0
.end method
