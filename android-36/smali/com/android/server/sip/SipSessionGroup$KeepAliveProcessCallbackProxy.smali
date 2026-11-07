.class Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeepAliveProcessCallbackProxy"
.end annotation


# static fields
.field private static final blacklist KAPCP_TAG:Ljava/lang/String; = "KeepAliveProcessCallbackProxy"


# instance fields
.field private blacklist mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1811
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1812
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1852
    const-string v0, "KeepAliveProcessCallbackProxy"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1853
    return-void
.end method

.method private blacklist proxy(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1818
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SIP-KeepAliveProcessCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1819
    return-void
.end method


# virtual methods
.method public blacklist onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 1838
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    if-nez v0, :cond_5

    return-void

    .line 1839
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    .line 1849
    return-void
.end method

.method public blacklist onResponse(Z)V
    .registers 3
    .param p1, "portChanged"    # Z

    .line 1823
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    if-nez v0, :cond_5

    return-void

    .line 1824
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    .line 1834
    return-void
.end method
