.class public Landroid/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Landroid/animation/AnimatorSet$Node;

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 2
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;
    .param p2, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1174
    iput-object p1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1175
    invoke-static {p1}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/animation/AnimatorSet$Node;

    #@f
    iput-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@11
    .line 1176
    iget-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 1177
    new-instance v0, Landroid/animation/AnimatorSet$Node;

    #@17
    invoke-direct {v0, p2}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    #@1a
    iput-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@1c
    .line 1178
    invoke-static {p1}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@22
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 1179
    invoke-static {p1}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@2b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 1174
    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Landroid/animation/AnimatorSet$Builder;
    .locals 3
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 1254
    const/4 v1, 0x2

    #@1
    new-array v1, v1, [F

    #@3
    fill-array-data v1, :array_0

    #@6
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    .line 1255
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@d
    .line 1256
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@10
    .line 1257
    return-object p0

    #@11
    .line 1254
    nop

    #@12
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1232
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-static {v2, v3}, Landroid/animation/AnimatorSet;->-set1(Landroid/animation/AnimatorSet;Z)Z

    #@6
    .line 1233
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@8
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@12
    .line 1234
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    #@14
    .line 1235
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    #@16
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    #@19
    .line 1236
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@1b
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1237
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@24
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 1239
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet$Dependency;

    #@2d
    const/4 v2, 0x1

    #@2e
    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    #@31
    .line 1240
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@33
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    #@36
    .line 1241
    return-object p0
.end method

.method public before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1211
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-static {v2, v3}, Landroid/animation/AnimatorSet;->-set1(Landroid/animation/AnimatorSet;Z)Z

    #@6
    .line 1212
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@8
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@12
    .line 1213
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    #@14
    .line 1214
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    #@16
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    #@19
    .line 1215
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@1b
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1216
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@24
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 1218
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet$Dependency;

    #@2d
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@2f
    const/4 v3, 0x1

    #@30
    invoke-direct {v0, v2, v3}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    #@33
    .line 1219
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    #@36
    .line 1220
    return-object p0
.end method

.method public with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1191
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@2
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@c
    .line 1192
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    #@e
    .line 1193
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    #@10
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    #@13
    .line 1194
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@15
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1195
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    #@1e
    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 1197
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet$Dependency;

    #@27
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-direct {v0, v2, v3}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    #@2d
    .line 1198
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    #@30
    .line 1199
    return-object p0
.end method
