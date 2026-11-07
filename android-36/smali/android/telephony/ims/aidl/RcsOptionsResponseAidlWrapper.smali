.class public Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsOptionsResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 2
    .param p1, "responseBinder"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist onCommandError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 41
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onCommandError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 43
    goto :goto_7

    .line 42
    :catch_6
    move-exception v0

    .line 44
    :goto_7
    return-void
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 50
    .local p3, "theirCaps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 52
    goto :goto_7

    .line 51
    :catch_6
    move-exception v0

    .line 53
    :goto_7
    return-void
.end method
