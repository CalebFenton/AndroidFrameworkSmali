.class Lcom/google/android/maps/MapView$5;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->createZoomControls()Landroid/widget/ZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 1425
    iput-object p1, p0, Lcom/google/android/maps/MapView$5;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/android/maps/MapView$5;->this$0:Lcom/google/android/maps/MapView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    #@6
    .line 1426
    return-void
.end method
