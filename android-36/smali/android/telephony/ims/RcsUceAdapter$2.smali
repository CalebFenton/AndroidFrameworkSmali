.class Landroid/telephony/ims/RcsUceAdapter$2;
.super Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/RcsUceAdapter;->requestAvailability(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/ims/RcsUceAdapter;
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

    .line 723
    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCapabilitiesReceived$0(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "contactCapabilities"    # Ljava/util/List;

    .line 728
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onCapabilitiesReceived(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V
    .registers 2
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 737
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onComplete(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 747
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesReceived(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 726
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 728
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 730
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 731
    nop

    .line 732
    return-void

    .line 730
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 731
    throw v2
.end method

.method public blacklist onComplete(Landroid/telephony/ims/SipDetails;)V
    .registers 7
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 739
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 740
    nop

    .line 741
    return-void

    .line 739
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 740
    throw v2
.end method

.method public blacklist onError(IJLandroid/telephony/ims/SipDetails;)V
    .registers 14
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 747
    .local v1, "callingIdentity":J
    :try_start_4
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v3, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1b

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    .end local p1    # "errorCode":I
    .end local p2    # "retryAfterMilliseconds":J
    .end local p4    # "details":Landroid/telephony/ims/SipDetails;
    .local v5, "errorCode":I
    .local v6, "retryAfterMilliseconds":J
    .local v8, "details":Landroid/telephony/ims/SipDetails;
    :try_start_d
    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_18

    .line 749
    invoke-static {v1, v2}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 750
    nop

    .line 751
    return-void

    .line 749
    :catchall_18
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v5    # "errorCode":I
    .end local v6    # "retryAfterMilliseconds":J
    .end local v8    # "details":Landroid/telephony/ims/SipDetails;
    .restart local p1    # "errorCode":I
    .restart local p2    # "retryAfterMilliseconds":J
    .restart local p4    # "details":Landroid/telephony/ims/SipDetails;
    :catchall_1b
    move-exception v0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object p1, v0

    .end local p1    # "errorCode":I
    .end local p2    # "retryAfterMilliseconds":J
    .end local p4    # "details":Landroid/telephony/ims/SipDetails;
    .restart local v5    # "errorCode":I
    .restart local v6    # "retryAfterMilliseconds":J
    .restart local v8    # "details":Landroid/telephony/ims/SipDetails;
    :goto_20
    invoke-static {v1, v2}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 750
    throw p1
.end method
