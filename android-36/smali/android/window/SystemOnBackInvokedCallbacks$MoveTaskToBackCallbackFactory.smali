.class Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;
.super Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;
.source "SystemOnBackInvokedCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemOnBackInvokedCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveTaskToBackCallbackFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;-><init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCallback(Landroid/app/Activity;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 132
    .local v0, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    new-instance v1, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory$1;

    invoke-direct {v1, p0, v0}, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory$1;-><init>(Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;Ljava/lang/ref/WeakReference;)V

    return-object v1
.end method

.method protected bridge synthetic blacklist createCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 128
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;->createCallback(Landroid/app/Activity;)Landroid/window/SystemOverrideOnBackInvokedCallback;

    move-result-object p1

    return-object p1
.end method
