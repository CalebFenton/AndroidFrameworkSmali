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
.field public animation:Landroid/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field private mTmpClone:Landroid/animation/AnimatorSet$Node;

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1024
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@6
    .line 1035
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    #@8
    .line 1041
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@a
    .line 1048
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@c
    .line 1055
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/animation/AnimatorSet$Node;->done:Z

    #@f
    .line 1060
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    #@11
    .line 1070
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@13
    .line 1069
    return-void
.end method


# virtual methods
.method public addDependency(Landroid/animation/AnimatorSet$Dependency;)V
    .locals 3
    .param p1, "dependency"    # Landroid/animation/AnimatorSet$Dependency;

    #@0
    .prologue
    .line 1079
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1080
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@b
    .line 1081
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@12
    .line 1083
    :cond_0
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 1084
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@19
    iget-object v2, p1, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@1b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 1085
    iget-object v1, p0, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    #@23
    iget-object v2, p1, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 1087
    :cond_1
    iget-object v0, p1, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    #@2a
    .line 1088
    .local v0, "dependencyNode":Landroid/animation/AnimatorSet$Node;
    iget-object v1, v0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    #@30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v1, v0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@35
    .line 1091
    :cond_2
    iget-object v1, v0, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 1078
    return-void
.end method

.method public clone()Landroid/animation/AnimatorSet$Node;
    .locals 3

    #@0
    .prologue
    .line 1097
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/animation/AnimatorSet$Node;

    #@6
    .line 1098
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@8
    invoke-virtual {v2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@b
    move-result-object v2

    #@c
    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    #@e
    .line 1099
    const/4 v2, 0x0

    #@f
    iput-boolean v2, v1, Landroid/animation/AnimatorSet$Node;->done:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1100
    return-object v1

    #@12
    .line 1101
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :catch_0
    move-exception v0

    #@13
    .line 1102
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
