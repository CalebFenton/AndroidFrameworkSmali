.class Lcom/android/commands/uiautomator/EventsCommand$1;
.super Ljava/lang/Object;
.source "EventsCommand.java"

# interfaces
.implements Landroid/app/UiAutomation$OnAccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/uiautomator/EventsCommand;->run([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/uiautomator/EventsCommand;


# direct methods
.method constructor <init>(Lcom/android/commands/uiautomator/EventsCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/uiautomator/EventsCommand;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/commands/uiautomator/EventsCommand$1;->this$0:Lcom/android/commands/uiautomator/EventsCommand;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    .line 60
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v2, "%s %s"

    #@d
    const/4 v3, 0x2

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    .line 61
    new-instance v4, Ljava/util/Date;

    #@12
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #@15
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    const/4 v5, 0x0

    #@1a
    aput-object v4, v3, v5

    #@1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const/4 v5, 0x1

    #@21
    aput-object v4, v3, v5

    #@23
    .line 60
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 58
    return-void
.end method
