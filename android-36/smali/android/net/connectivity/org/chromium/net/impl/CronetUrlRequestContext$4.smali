.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->reportRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

.field final synthetic blacklist val$requestInfo:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1006
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;->val$requestInfo:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1009
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$4;->val$requestInfo:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->onRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;)V

    .line 1010
    return-void
.end method
