.class public abstract Landroid/view/accessibility/AccessibilityRequestPreparer;
.super Ljava/lang/Object;
.source "AccessibilityRequestPreparer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;,
        Landroid/view/accessibility/AccessibilityRequestPreparer$RequestTypes;
    }
.end annotation


# static fields
.field public static final whitelist REQUEST_TYPE_EXTRA_DATA:I = 0x1


# instance fields
.field private final blacklist mAccessibilityViewId:I

.field private final greylist-max-o mRequestTypes:I

.field private final greylist-max-o mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestTypes"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mAccessibilityViewId:I

    .line 73
    iput p2, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mRequestTypes:I

    .line 74
    new-instance v0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;-><init>(Landroid/view/accessibility/AccessibilityRequestPreparer;Landroid/view/accessibility/AccessibilityRequestPreparer-IA;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    return-void

    .line 69
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist getAccessibilityViewId()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mAccessibilityViewId:I

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract whitelist onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V
.end method
