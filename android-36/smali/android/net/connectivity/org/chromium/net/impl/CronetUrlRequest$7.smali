.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;->onStatus(Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

.field final synthetic blacklist val$loadState:I


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
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

    .line 838
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;->val$loadState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 841
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$7;->val$loadState:I

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestUtil;->convertLoadState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->onStatus(I)V

    .line 842
    return-void
.end method
