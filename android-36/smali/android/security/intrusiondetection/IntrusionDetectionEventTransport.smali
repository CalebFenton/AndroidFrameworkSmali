.class public Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;
.super Ljava/lang/Object;
.source "IntrusionDetectionEventTransport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;
    }
.end annotation


# instance fields
.field blacklist mBinderImpl:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;)V

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->mBinderImpl:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    return-void
.end method


# virtual methods
.method public whitelist addData(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;)Z"
        }
    .end annotation

    .line 90
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->mBinderImpl:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist initialize()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist release()Z
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method
