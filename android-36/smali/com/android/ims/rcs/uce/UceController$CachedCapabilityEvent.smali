.class Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
.super Ljava/lang/Object;
.source "UceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedCapabilityEvent"
.end annotation


# instance fields
.field private blacklist mPublishUpdatedEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestPublishCapabilitiesEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnpublishEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;

    .line 224
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;

    .line 225
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;

    .line 226
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;

    .line 227
    return-void
.end method

.method static synthetic blacklist lambda$clear$0(Lcom/android/ims/SomeArgs;)V
    .registers 1
    .param p0, "args"    # Lcom/android/ims/SomeArgs;

    .line 287
    invoke-virtual {p0}, Lcom/android/ims/SomeArgs;->recycle()V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist clear()V
    .registers 3

    monitor-enter p0

    .line 284
    :try_start_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;

    .line 285
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;

    .line 286
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;

    .line 287
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;

    new-instance v1, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 288
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 289
    monitor-exit p0

    return-void

    .line 283
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized blacklist getPublishUpdatedEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 274
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getRemoteCapabilityRequestEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 279
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getRequestPublishEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 264
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getUnpublishEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 269
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist setOnPublishUpdatedEvent(Landroid/telephony/ims/SipDetails;)V
    .registers 3
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    monitor-enter p0

    .line 247
    :try_start_1
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 248
    monitor-exit p0

    return-void

    .line 246
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .end local p1    # "details":Landroid/telephony/ims/SipDetails;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist setOnUnpublishEvent()V
    .registers 2

    monitor-enter p0

    .line 240
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 241
    monitor-exit p0

    return-void

    .line 239
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized blacklist setRemoteCapabilityRequestEvent(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 255
    :try_start_1
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 256
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 257
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 258
    iput-object p3, v0, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 259
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 260
    monitor-exit p0

    return-void

    .line 254
    .end local v0    # "args":Lcom/android/ims/SomeArgs;
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .end local p1    # "contactUri":Landroid/net/Uri;
    .end local p2    # "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "callback":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized blacklist setRequestPublishCapabilitiesEvent(I)V
    .registers 3
    .param p1, "triggerType"    # I

    monitor-enter p0

    .line 233
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 234
    monitor-exit p0

    return-void

    .line 232
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .end local p1    # "triggerType":I
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method
