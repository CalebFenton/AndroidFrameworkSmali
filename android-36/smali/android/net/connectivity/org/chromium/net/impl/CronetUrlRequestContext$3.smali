.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->onThroughputObservation(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

.field final synthetic blacklist val$source:I

.field final synthetic blacklist val$throughputKbps:I

.field final synthetic blacklist val$whenMs:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;IJI)V
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

    .line 980
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$throughputKbps:I

    iput-wide p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$whenMs:J

    iput p6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 983
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$listener:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$throughputKbps:I

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$whenMs:J

    iget v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$3;->val$source:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->onThroughputObservation(IJI)V

    .line 984
    return-void
.end method
