.class Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;
.super Ljava/lang/Object;
.source "BinderCallsListener.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/BinderCallsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceInvocationHandler"
.end annotation


# instance fields
.field private blacklist mCurrentInterfaceDescriptor:Ljava/lang/String;

.field private blacklist mObserver:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmObserver(Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;Ljava/util/function/BiConsumer;)V
    .registers 2

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/BinderCallsListener-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 127
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 128
    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "onTransactStarted"

    const-string v5, "onTransactEnded"

    sparse-switch v2, :sswitch_data_60

    :cond_18
    goto :goto_29

    :sswitch_19
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_2a

    :sswitch_21
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_2a

    :goto_29
    const/4 v0, -0x1

    :goto_2a
    const-string v2, "BinderCallsListener.invoke"

    packed-switch v0, :pswitch_data_6a

    .line 150
    return-object v1

    .line 143
    :pswitch_30
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_40

    .line 146
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v5, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    :cond_40
    return-object v1

    .line 130
    :pswitch_41
    aget-object v0, p3, v3

    check-cast v0, Landroid/os/IBinder;

    .line 132
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_45
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    .line 135
    goto :goto_4f

    .line 133
    :catch_4c
    move-exception v3

    .line 134
    .local v3, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    .line 137
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    if-eqz v2, :cond_5f

    .line 139
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :cond_5f
    return-object v1

    :sswitch_data_60
    .sparse-switch
        0x4bca9c51 -> :sswitch_21
        0x72450858 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_30
    .end packed-switch
.end method
