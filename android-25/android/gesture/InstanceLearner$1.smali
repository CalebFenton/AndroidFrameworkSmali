.class final Landroid/gesture/InstanceLearner$1;
.super Ljava/lang/Object;
.source "InstanceLearner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/InstanceLearner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/gesture/Prediction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I
    .locals 5
    .param p1, "object1"    # Landroid/gesture/Prediction;
    .param p2, "object2"    # Landroid/gesture/Prediction;

    #@0
    .prologue
    .line 31
    iget-wide v0, p1, Landroid/gesture/Prediction;->score:D

    #@2
    .line 32
    .local v0, "score1":D
    iget-wide v2, p2, Landroid/gesture/Prediction;->score:D

    #@4
    .line 33
    .local v2, "score2":D
    cmpl-double v4, v0, v2

    #@6
    if-lez v4, :cond_0

    #@8
    .line 34
    const/4 v4, -0x1

    #@9
    return v4

    #@a
    .line 35
    :cond_0
    cmpg-double v4, v0, v2

    #@c
    if-gez v4, :cond_1

    #@e
    .line 36
    const/4 v4, 0x1

    #@f
    return v4

    #@10
    .line 38
    :cond_1
    const/4 v4, 0x0

    #@11
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 30
    check-cast p1, Landroid/gesture/Prediction;

    #@2
    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Landroid/gesture/Prediction;

    #@4
    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/gesture/InstanceLearner$1;->compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
