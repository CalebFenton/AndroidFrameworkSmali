.class Landroid/view/SurfaceView$2;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceView;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 141
    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    #@3
    invoke-virtual {v0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@6
    .line 140
    return-void
.end method
