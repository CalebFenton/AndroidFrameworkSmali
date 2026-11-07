.class Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;
.super Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;
.source "CapabilityExchangeAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 141
    iput-object p2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .registers 6
    .param p1, "ownCapabilities"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isBlocked"    # Z

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 147
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 149
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 150
    throw v2
.end method

.method public blacklist respondToCapabilityRequestWithError(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 156
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 158
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 159
    throw v2
.end method
