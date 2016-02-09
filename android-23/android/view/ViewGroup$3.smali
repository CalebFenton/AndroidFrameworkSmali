.class Landroid/view/ViewGroup$3;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 3449
    iput-object p1, p0, Landroid/view/ViewGroup$3;->this$0:Landroid/view/ViewGroup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 3451
    iget-object v0, p0, Landroid/view/ViewGroup$3;->this$0:Landroid/view/ViewGroup;

    #@2
    invoke-static {v0}, Landroid/view/ViewGroup;->-wrap1(Landroid/view/ViewGroup;)V

    #@5
    .line 3450
    return-void
.end method
