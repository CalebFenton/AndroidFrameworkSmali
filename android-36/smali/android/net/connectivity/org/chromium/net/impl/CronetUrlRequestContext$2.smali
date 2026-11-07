.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onRttObservation(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

.field final synthetic blacklist val$rttMs:I

.field final synthetic blacklist val$source:I

.field final synthetic blacklist val$whenMs:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;IJI)V
    .registers 7
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 961
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$rttMs:I

    iput-wide p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$whenMs:J

    iput p6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 964
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$rttMs:I

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$whenMs:J

    iget v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$2;->val$source:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->onRttObservation(IJI)V

    .line 965
    return-void
.end method
