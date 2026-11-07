.class Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;
.super Ljava/lang/Object;
.source "OneShotCallback.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/Callback<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const-class v0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;, "Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback<TE;>.CallbackWrapper;"
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;, "Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback<TE;>.CallbackWrapper;"
    .local p1, "result":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->-$$Nest$fgetmCallback(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)Landroid/net/connectivity/org/chromium/base/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->-$$Nest$fgetmWeakSupplier(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;

    .line 53
    .local v0, "supplier":Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;, "Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier<TE;>;"
    nop

    .line 55
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;->-$$Nest$fgetmCallbackWrapper(Landroid/net/connectivity/org/chromium/base/supplier/OneShotCallback;)Landroid/net/connectivity/org/chromium/base/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;->removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V

    .line 56
    return-void
.end method
