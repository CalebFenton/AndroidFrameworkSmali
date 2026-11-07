.class Landroid/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field greylist-max-o mAnimation:Landroid/animation/Animator;

.field greylist-max-o mChildNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mEndTime:J

.field greylist-max-o mEnded:Z

.field greylist-max-o mLatestParent:Landroid/animation/AnimatorSet$Node;

.field greylist-max-o mParents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mParentsAdded:Z

.field greylist-max-o mSiblings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mStartTime:J

.field greylist-max-o mTotalDuration:J


# direct methods
.method public constructor greylist-max-o <init>(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1960
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1978
    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1980
    iput-boolean v1, p0, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1981
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1982
    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1983
    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1993
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1994
    return-void
.end method


# virtual methods
.method greylist-max-o addChild(Landroid/animation/AnimatorSet$Node;)V
    .registers 3
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 2018
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 2021
    :cond_b
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2022
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 2025
    :cond_1b
    return-void
.end method

.method public greylist-max-o addParent(Landroid/animation/AnimatorSet$Node;)V
    .registers 3
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 2038
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 2041
    :cond_b
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2042
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addChild(Landroid/animation/AnimatorSet$Node;)V

    .line 2045
    :cond_1b
    return-void
.end method

.method public greylist-max-o addParents(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 2048
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    if-nez p1, :cond_3

    .line 2049
    return-void

    .line 2051
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2052
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_16

    .line 2053
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 2052
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2055
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method public greylist-max-o addSibling(Landroid/animation/AnimatorSet$Node;)V
    .registers 3
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 2028
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 2031
    :cond_b
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2032
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addSibling(Landroid/animation/AnimatorSet$Node;)V

    .line 2035
    :cond_1b
    return-void
.end method

.method public blacklist clone()Landroid/animation/AnimatorSet$Node;
    .registers 4

    .line 1999
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 2000
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 2001
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 2002
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 2004
    :cond_1b
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    .line 2005
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 2007
    :cond_28
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-eqz v1, :cond_35

    .line 2008
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 2010
    :cond_35
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/AnimatorSet$Node;->mEnded:Z
    :try_end_38
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_38} :catch_39

    .line 2011
    return-object v0

    .line 2012
    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    :catch_39
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1946
    invoke-virtual {p0}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
