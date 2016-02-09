.class Landroid/app/BackStackRecord$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEpicenter:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$state:Landroid/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BackStackRecord;
    .param p2, "val$state"    # Landroid/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    .line 1565
    iput-object p1, p0, Landroid/app/BackStackRecord$4;->this$0:Landroid/app/BackStackRecord;

    #@2
    iput-object p2, p0, Landroid/app/BackStackRecord$4;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@4
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1570
    iget-object v0, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/BackStackRecord$4;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@6
    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1571
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    #@11
    .line 1572
    iget-object v0, p0, Landroid/app/BackStackRecord$4;->val$state:Landroid/app/BackStackRecord$TransitionState;

    #@13
    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    #@15
    iget-object v1, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    #@1a
    .line 1574
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    #@1c
    return-object v0
.end method
