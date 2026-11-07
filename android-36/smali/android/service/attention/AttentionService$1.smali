.class Landroid/service/attention/AttentionService$1;
.super Landroid/service/attention/IAttentionService$Stub;
.source "AttentionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/AttentionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/attention/AttentionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/attention/AttentionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/attention/AttentionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroid/service/attention/AttentionService$1;->this$0:Landroid/service/attention/AttentionService;

    invoke-direct {p0}, Landroid/service/attention/IAttentionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/service/attention/IAttentionCallback;

    .line 125
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Landroid/service/attention/AttentionService$1;->this$0:Landroid/service/attention/AttentionService;

    new-instance v1, Landroid/service/attention/AttentionService$AttentionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/service/attention/AttentionService$AttentionCallback;-><init>(Landroid/service/attention/IAttentionCallback;Landroid/service/attention/AttentionService-IA;)V

    invoke-virtual {v0, v1}, Landroid/service/attention/AttentionService;->onCancelAttentionCheck(Landroid/service/attention/AttentionService$AttentionCallback;)V

    .line 127
    return-void
.end method

.method public blacklist checkAttention(Landroid/service/attention/IAttentionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/service/attention/IAttentionCallback;

    .line 118
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Landroid/service/attention/AttentionService$1;->this$0:Landroid/service/attention/AttentionService;

    new-instance v1, Landroid/service/attention/AttentionService$AttentionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/service/attention/AttentionService$AttentionCallback;-><init>(Landroid/service/attention/IAttentionCallback;Landroid/service/attention/AttentionService-IA;)V

    invoke-virtual {v0, v1}, Landroid/service/attention/AttentionService;->onCheckAttention(Landroid/service/attention/AttentionService$AttentionCallback;)V

    .line 120
    return-void
.end method

.method public blacklist onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/service/attention/IProximityUpdateCallback;

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Landroid/service/attention/AttentionService$1;->this$0:Landroid/service/attention/AttentionService;

    new-instance v1, Landroid/service/attention/AttentionService$ProximityUpdateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/service/attention/AttentionService$ProximityUpdateCallback;-><init>(Landroid/service/attention/IProximityUpdateCallback;Landroid/service/attention/AttentionService-IA;)V

    invoke-virtual {v0, v1}, Landroid/service/attention/AttentionService;->onStartProximityUpdates(Landroid/service/attention/AttentionService$ProximityUpdateCallback;)V

    .line 135
    return-void
.end method

.method public blacklist onStopProximityUpdates()V
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/service/attention/AttentionService$1;->this$0:Landroid/service/attention/AttentionService;

    invoke-virtual {v0}, Landroid/service/attention/AttentionService;->onStopProximityUpdates()V

    .line 141
    return-void
.end method
