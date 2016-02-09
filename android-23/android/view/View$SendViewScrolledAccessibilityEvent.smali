.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public volatile mIsPending:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    .line 22004
    iput-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$SendViewScrolledAccessibilityEvent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 22008
    iget-object v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    #@2
    const/16 v1, 0x1000

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@7
    .line 22009
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    #@a
    .line 22007
    return-void
.end method
