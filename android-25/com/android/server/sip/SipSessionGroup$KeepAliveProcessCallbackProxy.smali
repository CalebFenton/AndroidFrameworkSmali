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
.field private static final KAPCP_TAG:Ljava/lang/String; = "KeepAliveProcessCallbackProxy"


# instance fields
.field private mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# direct methods
.method static synthetic -get0(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@0
    .prologue
    .line 1810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1811
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@5
    .line 1810
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1852
    const-string/jumbo v0, "KeepAliveProcessCallbackProxy"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 1851
    return-void
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1818
    new-instance v0, Ljava/lang/Thread;

    #@2
    const-string/jumbo v1, "SIP-KeepAliveProcessCallbackThread"

    #@5
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@b
    .line 1814
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1839
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 1837
    return-void
.end method

.method public onResponse(Z)V
    .locals 1
    .param p1, "portChanged"    # Z

    #@0
    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1824
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 1822
    return-void
.end method
