.class public abstract Lcom/android/uiautomator/core/UiAutomatorBridge;
.super Ljava/lang/Object;
.source "UiAutomatorBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final QUIET_TIME_TO_BE_CONSIDERD_IDLE_STATE:J = 0x1f4L

.field private static final TOTAL_TIME_TO_WAIT_FOR_IDLE_STATE:J = 0x2710L


# instance fields
.field private final mInteractionController:Lcom/android/uiautomator/core/InteractionController;

.field private final mQueryController:Lcom/android/uiautomator/core/QueryController;

.field private final mUiAutomation:Landroid/app/UiAutomation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 23
    return-void
.end method

.method constructor <init>(Landroid/app/UiAutomation;)V
    .locals 1
    .param p1, "uiAutomation"    # Landroid/app/UiAutomation;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@5
    .line 49
    new-instance v0, Lcom/android/uiautomator/core/InteractionController;

    #@7
    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/InteractionController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    #@a
    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    #@c
    .line 50
    new-instance v0, Lcom/android/uiautomator/core/QueryController;

    #@e
    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    #@11
    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    #@13
    .line 47
    return-void
.end method


# virtual methods
.method public executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/UiAutomation;->executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    #@2
    return-object v0
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    #@2
    return-object v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract getRotation()I
.end method

.method public abstract getSystemLongPressTime()J
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract isScreenOn()Z
.end method

.method public performGlobalAction(I)Z
    .locals 1
    .param p1, "action"    # I

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->performGlobalAction(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setCompressedLayoutHierarchy(Z)V
    .locals 2
    .param p1, "compressed"    # Z

    #@0
    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v1}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@5
    move-result-object v0

    #@6
    .line 79
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_0

    #@8
    .line 80
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@a
    and-int/lit8 v1, v1, -0x3

    #@c
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@e
    .line 83
    :goto_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@10
    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@13
    .line 77
    return-void

    #@14
    .line 82
    :cond_0
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@16
    or-int/lit8 v1, v1, 0x2

    #@18
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1a
    goto :goto_0
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    #@5
    .line 61
    return-void
.end method

.method public setRotation(I)Z
    .locals 1
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->setRotation(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public takeScreenshot(Ljava/io/File;I)Z
    .locals 7
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "quality"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 109
    iget-object v4, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@3
    invoke-virtual {v4}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    #@6
    move-result-object v3

    #@7
    .line 110
    .local v3, "screenshot":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    #@9
    .line 111
    return v6

    #@a
    .line 113
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 115
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@d
    new-instance v4, Ljava/io/FileOutputStream;

    #@f
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@12
    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 116
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    if-eqz v1, :cond_1

    #@17
    .line 117
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@19
    invoke-virtual {v3, v4, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@1c
    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    .line 124
    :cond_1
    if-eqz v1, :cond_2

    #@21
    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@24
    .line 131
    :cond_2
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@27
    .line 133
    const/4 v4, 0x1

    #@28
    return v4

    #@29
    .line 127
    :catch_0
    move-exception v2

    #@2a
    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0

    #@2b
    .line 120
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    #@2c
    .line 121
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@2e
    const-string/jumbo v5, "failed to save screen shot to file"

    #@31
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    .line 124
    if-eqz v0, :cond_3

    #@36
    .line 126
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@39
    .line 131
    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@3c
    .line 122
    return v6

    #@3d
    .line 127
    :catch_2
    move-exception v2

    #@3e
    goto :goto_2

    #@3f
    .line 123
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@40
    .line 124
    :goto_3
    if-eqz v0, :cond_4

    #@42
    .line 126
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@45
    .line 131
    :cond_4
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@48
    .line 123
    throw v4

    #@49
    .line 127
    :catch_3
    move-exception v2

    #@4a
    .restart local v2    # "ioe":Ljava/io/IOException;
    goto :goto_4

    #@4b
    .line 123
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    #@4c
    move-object v0, v1

    #@4d
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    #@4e
    .line 120
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v2

    #@4f
    .restart local v2    # "ioe":Ljava/io/IOException;
    move-object v0, v1

    #@50
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public waitForIdle()V
    .locals 2

    #@0
    .prologue
    .line 91
    const-wide/16 v0, 0x2710

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    #@5
    .line 90
    return-void
.end method

.method public waitForIdle(J)V
    .locals 5
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    const-wide/16 v2, 0x1f4

    #@4
    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/app/UiAutomation;->waitForIdle(JJ)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 94
    :goto_0
    return-void

    #@8
    .line 97
    :catch_0
    move-exception v0

    #@9
    .line 98
    .local v0, "te":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "Could not detect idle state."

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method
