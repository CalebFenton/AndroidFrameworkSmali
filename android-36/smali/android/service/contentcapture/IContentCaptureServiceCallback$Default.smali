.class public Landroid/service/contentcapture/IContentCaptureServiceCallback$Default;
.super Ljava/lang/Object;
.source "IContentCaptureServiceCallback.java"

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableSelf()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    return-void
.end method

.method public blacklist setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    return-void
.end method

.method public blacklist writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "flushMetrics"    # Landroid/service/contentcapture/FlushMetrics;
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .param p5, "flushReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
