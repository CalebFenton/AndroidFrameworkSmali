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
.field private greylist m_isComplete2:Z

.field private greylist m_useCount2:I

.field private greylist m_vec2:Lorg/apache/xml/utils/NodeVector;


# direct methods
.method static bridge synthetic greylist -$$Nest$mgetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;
    .registers 1

    .line 0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$mincreaseUseCount(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$misComplete(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$msetCacheComplete(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$msetVector(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$museCount(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I

    move-result p0

    return p0
.end method

.method constructor greylist <init>()V
    .registers 2

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    const/4 v0, 0x1

    .line 882
    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return-void
.end method

.method private greylist getVector()Lorg/apache/xml/utils/NodeVector;
    .registers 1

    .line 921
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    return-object p0
.end method

.method private greylist increaseUseCount()V
    .registers 2

    .line 901
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_a

    .line 902
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    :cond_a
    return-void
.end method

.method private greylist isComplete()Z
    .registers 1

    .line 939
    iget-boolean p0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    return p0
.end method

.method private greylist setCacheComplete(Z)V
    .registers 2

    .line 930
    iput-boolean p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    return-void
.end method

.method private greylist setVector(Lorg/apache/xml/utils/NodeVector;)V
    .registers 2

    .line 912
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    const/4 p1, 0x1

    .line 913
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return-void
.end method

.method private greylist useCount()I
    .registers 1

    .line 891
    iget p0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return p0
.end method
