.class Lcom/android/internal/telephony/ims/ImsServiceController$2;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 342
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_28

    .line 344
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBoundUser(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object v3

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Landroid/os/UserHandle;Ljava/util/Set;Landroid/util/SparseIntArray;)Z

    .line 345
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_f

    throw p0
.end method
