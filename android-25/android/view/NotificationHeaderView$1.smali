.class Landroid/view/NotificationHeaderView$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    #@2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 61
    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    #@3
    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get0(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 62
    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    #@b
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getWidth()I

    #@e
    move-result v0

    #@f
    iget-object v1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    #@11
    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-get4(Landroid/view/NotificationHeaderView;)I

    #@14
    move-result v1

    #@15
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    #@18
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    #@1a
    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@1d
    .line 60
    :cond_0
    return-void
.end method
