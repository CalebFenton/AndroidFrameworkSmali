.class Lcom/android/server/accessibility/AccessibilityInputFilter$1;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@2
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-get0(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    #@9
    move-result-wide v0

    #@a
    .line 73
    .local v0, "frameTimeNanos":J
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@c
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-wrap0(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V

    #@f
    .line 77
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@11
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-get1(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 78
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@19
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-wrap1(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    #@1c
    .line 68
    :cond_0
    return-void
.end method
