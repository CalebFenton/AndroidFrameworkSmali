.class abstract Landroid/gesture/Learner;
.super Ljava/lang/Object;
.source "Learner.java"


# instance fields
.field private final mInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    #@a
    .line 24
    return-void
.end method


# virtual methods
.method addInstance(Landroid/gesture/Instance;)V
    .locals 1
    .param p1, "instance"    # Landroid/gesture/Instance;

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 32
    return-void
.end method

.method abstract classify(II[F)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end method

.method getInstances()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Instance;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method removeInstance(J)V
    .locals 7
    .param p1, "id"    # J

    #@0
    .prologue
    .line 51
    iget-object v3, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    #@2
    .line 52
    .local v3, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 53
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 54
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/gesture/Instance;

    #@f
    .line 55
    .local v2, "instance":Landroid/gesture/Instance;
    iget-wide v4, v2, Landroid/gesture/Instance;->id:J

    #@11
    cmp-long v4, p1, v4

    #@13
    if-nez v4, :cond_0

    #@15
    .line 56
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@18
    .line 57
    return-void

    #@19
    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 50
    .end local v2    # "instance":Landroid/gesture/Instance;
    :cond_1
    return-void
.end method

.method removeInstances(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 69
    .local v4, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    iget-object v3, p0, Landroid/gesture/Learner;->mInstances:Ljava/util/ArrayList;

    #@7
    .line 70
    .local v3, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 72
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@e
    .line 73
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/gesture/Instance;

    #@14
    .line 75
    .local v2, "instance":Landroid/gesture/Instance;
    iget-object v5, v2, Landroid/gesture/Instance;->label:Ljava/lang/String;

    #@16
    if-nez v5, :cond_1

    #@18
    if-nez p1, :cond_1

    #@1a
    .line 77
    :goto_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 76
    :cond_1
    iget-object v5, v2, Landroid/gesture/Instance;->label:Ljava/lang/String;

    #@22
    if-eqz v5, :cond_0

    #@24
    iget-object v5, v2, Landroid/gesture/Instance;->label:Ljava/lang/String;

    #@26
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    .line 75
    if-eqz v5, :cond_0

    #@2c
    goto :goto_1

    #@2d
    .line 80
    .end local v2    # "instance":Landroid/gesture/Instance;
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@30
    .line 67
    return-void
.end method
