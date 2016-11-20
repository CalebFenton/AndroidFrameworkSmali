.class Lcom/android/uiautomator/core/QueryController$1;
.super Ljava/lang/Object;
.source "QueryController.java"

# interfaces
.implements Landroid/app/UiAutomation$OnAccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/QueryController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/QueryController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/QueryController;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #@2
    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->-get3(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@a
    move-result v0

    #@b
    sparse-switch v0, :sswitch_data_0

    #@e
    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #@10
    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->-get3(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 60
    return-void

    #@19
    .line 65
    :sswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@26
    move-result v0

    #@27
    if-lez v0, :cond_0

    #@29
    .line 66
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@2c
    move-result-object v0

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 67
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #@36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    const/4 v3, 0x0

    #@3b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/CharSequence;

    #@41
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v2, v0}, Lcom/android/uiautomator/core/QueryController;->-set0(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 61
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit v1

    #@4b
    throw v0

    #@4c
    .line 72
    :sswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@4f
    move-result-object v0

    #@50
    if-eqz v0, :cond_1

    #@52
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@55
    move-result-object v0

    #@56
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@59
    move-result v0

    #@5a
    if-lez v0, :cond_1

    #@5c
    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@5f
    move-result-object v0

    #@60
    const/4 v2, 0x0

    #@61
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    if-eqz v0, :cond_1

    #@67
    .line 74
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #@69
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@6c
    move-result-object v0

    #@6d
    const/4 v3, 0x0

    #@6e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Ljava/lang/CharSequence;

    #@74
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    invoke-static {v2, v0}, Lcom/android/uiautomator/core/QueryController;->-set1(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;

    #@7b
    .line 75
    :cond_1
    invoke-static {}, Lcom/android/uiautomator/core/QueryController;->-get0()Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_0

    #@81
    .line 76
    invoke-static {}, Lcom/android/uiautomator/core/QueryController;->-get1()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    new-instance v2, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v3, "Last text selection reported: "

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    .line 77
    iget-object v3, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    #@93
    invoke-static {v3}, Lcom/android/uiautomator/core/QueryController;->-get2(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a2
    goto/16 :goto_0

    #@a4
    .line 62
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x20000 -> :sswitch_1
    .end sparse-switch
.end method
