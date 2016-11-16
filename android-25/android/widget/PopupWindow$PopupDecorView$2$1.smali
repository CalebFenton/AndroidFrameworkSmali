.class Landroid/widget/PopupWindow$PopupDecorView$2$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/widget/PopupWindow$PopupDecorView$2;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView$2;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$2"    # Landroid/widget/PopupWindow$PopupDecorView$2;
    .param p2, "val$epicenter"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2313
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2$1;->this$2:Landroid/widget/PopupWindow$PopupDecorView$2;

    #@2
    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$2$1;->val$epicenter:Landroid/graphics/Rect;

    #@4
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2316
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$2$1;->val$epicenter:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method
