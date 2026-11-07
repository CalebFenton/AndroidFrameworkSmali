.class Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;
.super Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;
.source "IntrusionDetectionEventTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;


# direct methods
.method constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;)V
    .registers 2
    .param p1, "this$0"    # Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-direct {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    .local p2, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {v0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->addData(Ljava/util/List;)Z

    move-result v0

    .line 130
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 133
    nop

    .end local v0    # "result":Z
    goto :goto_14

    .line 131
    :catch_f
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 134
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist initialize(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {v0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->initialize()Z

    move-result v0

    .line 118
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 121
    nop

    .end local v0    # "result":Z
    goto :goto_14

    .line 119
    :catch_f
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 122
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist release(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {v0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->release()Z

    move-result v0

    .line 140
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 143
    nop

    .end local v0    # "result":Z
    goto :goto_14

    .line 141
    :catch_f
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 144
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method
