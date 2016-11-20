.class Lcom/android/server/wm/AppTransition$2;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
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
    .line 262
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

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
    .line 266
    cmpg-float v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 267
    div-float v0, p1, v2

    #@8
    .line 268
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

    #@a
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get2(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 270
    .end local v0    # "t":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    #@15
    return v1
.end method
