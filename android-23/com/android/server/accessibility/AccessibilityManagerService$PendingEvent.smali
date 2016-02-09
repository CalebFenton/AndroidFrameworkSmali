.class final Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingEvent"
.end annotation


# instance fields
.field event:Landroid/view/KeyEvent;

.field handled:Z

.field next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

.field policyFlags:I

.field sequence:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3101
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3102
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@8
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    #@b
    .line 3103
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@d
    .line 3105
    :cond_0
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@f
    .line 3106
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    #@11
    .line 3107
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@13
    .line 3108
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    #@15
    .line 3100
    return-void
.end method
