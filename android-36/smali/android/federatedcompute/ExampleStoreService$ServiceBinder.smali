.class Landroid/federatedcompute/ExampleStoreService$ServiceBinder;
.super Landroid/federatedcompute/aidl/IExampleStoreService$Stub;
.source "ExampleStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/ExampleStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/federatedcompute/ExampleStoreService;


# direct methods
.method constructor blacklist <init>(Landroid/federatedcompute/ExampleStoreService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/federatedcompute/ExampleStoreService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Landroid/federatedcompute/ExampleStoreService$ServiceBinder;->this$0:Landroid/federatedcompute/ExampleStoreService;

    invoke-direct {p0}, Landroid/federatedcompute/aidl/IExampleStoreService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist startQuery(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IExampleStoreCallback;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/federatedcompute/aidl/IExampleStoreCallback;

    .line 68
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreService$ServiceBinder;->this$0:Landroid/federatedcompute/ExampleStoreService;

    invoke-virtual {v0}, Landroid/federatedcompute/ExampleStoreService;->checkCallerPermission()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreService$ServiceBinder;->this$0:Landroid/federatedcompute/ExampleStoreService;

    new-instance v1, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;

    invoke-direct {v1, p2}, Landroid/federatedcompute/ExampleStoreQueryCallbackImpl;-><init>(Landroid/federatedcompute/aidl/IExampleStoreCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/federatedcompute/ExampleStoreService;->startQuery(Landroid/os/Bundle;Landroid/federatedcompute/ExampleStoreService$QueryCallback;)V

    .line 74
    return-void

    .line 69
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unauthorized startQuery call to ExampleStore."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
