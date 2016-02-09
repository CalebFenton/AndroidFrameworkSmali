.class Lcom/android/server/wm/AppTransition$1;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    #@2
    .line 210
    cmpg-float v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 211
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 213
    :cond_0
    sub-float v1, p1, v2

    #@a
    div-float v0, v1, v2

    #@c
    .line 215
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    #@e
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get0(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@15
    move-result v1

    #@16
    return v1
.end method
