.class Landroid/widget/ProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ProgressBar;

    #@0
    .prologue
    .line 1912
    iput-object p1, p0, Landroid/widget/ProgressBar$AccessibilityEventSender;->this$0:Landroid/widget/ProgressBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$AccessibilityEventSender;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ProgressBar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1914
    iget-object v0, p0, Landroid/widget/ProgressBar$AccessibilityEventSender;->this$0:Landroid/widget/ProgressBar;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->sendAccessibilityEvent(I)V

    #@6
    .line 1913
    return-void
.end method
