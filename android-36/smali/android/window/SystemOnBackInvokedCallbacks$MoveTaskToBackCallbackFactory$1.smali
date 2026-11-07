.class Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory$1;
.super Ljava/lang/Object;
.source "SystemOnBackInvokedCallbacks.java"

# interfaces
.implements Landroid/window/SystemOverrideOnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;->createCallback(Landroid/app/Activity;)Landroid/window/SystemOverrideOnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$activityRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .param p1, "this$0"    # Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p2, p0, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBackInvoked()V
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 136
    iget-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 138
    :cond_14
    return-void
.end method

.method public blacklist overrideBehavior()I
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method
