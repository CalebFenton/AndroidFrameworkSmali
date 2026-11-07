.class Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mActivity:Landroid/app/Activity;

.field private final blacklist mCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Activity;Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    .line 246
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;->mActivity:Landroid/app/Activity;

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist test-api invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWindowFocusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x0

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_24

    .line 254
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;->onWindowFocusChanged(Z)V

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_24
    :try_start_24
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object v0

    .line 259
    :catch_2b
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/AbstractMethodError;

    if-eqz v1, :cond_39

    .line 267
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 269
    :cond_39
    throw v0
.end method

.method public blacklist onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .line 275
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 277
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfgetsWindowFocusListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 278
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfgetsWindowFocusListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;

    .line 279
    .local v1, "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 280
    .end local v1    # "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;
    goto :goto_13

    .line 282
    :cond_25
    return-void
.end method
