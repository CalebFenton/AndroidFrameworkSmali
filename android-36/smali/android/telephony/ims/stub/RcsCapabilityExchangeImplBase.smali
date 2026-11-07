.class public Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.super Ljava/lang/Object;
.source "RcsCapabilityExchangeImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$CommandCode;
    }
.end annotation


# static fields
.field public static final whitelist COMMAND_CODE_FETCH_ERROR:I = 0x3

.field public static final whitelist COMMAND_CODE_GENERIC_FAILURE:I = 0x1

.field public static final whitelist COMMAND_CODE_INSUFFICIENT_MEMORY:I = 0x5

.field public static final whitelist COMMAND_CODE_INVALID_PARAM:I = 0x2

.field public static final whitelist COMMAND_CODE_LOST_NETWORK_CONNECTION:I = 0x6

.field public static final whitelist COMMAND_CODE_NOT_FOUND:I = 0x8

.field public static final whitelist COMMAND_CODE_NOT_SUPPORTED:I = 0x7

.field public static final whitelist COMMAND_CODE_NO_CHANGE:I = 0xa

.field public static final whitelist COMMAND_CODE_REQUEST_TIMEOUT:I = 0x4

.field public static final whitelist COMMAND_CODE_SERVICE_UNAVAILABLE:I = 0x9

.field public static final whitelist COMMAND_CODE_SERVICE_UNKNOWN:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsCapExchangeImplBase"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method


# virtual methods
.method public whitelist publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .registers 5
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 475
    const-string v0, "RcsCapExchangeImplBase"

    const-string v1, "publishCapabilities called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x7

    :try_start_8
    invoke-interface {p2, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V
    :try_end_b
    .catch Landroid/telephony/ims/ImsException; {:try_start_8 .. :try_end_b} :catch_c

    .line 480
    goto :goto_d

    .line 478
    :catch_c
    move-exception v0

    .line 481
    :goto_d
    return-void
.end method

.method public whitelist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .line 498
    .local p2, "myCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "RcsCapExchangeImplBase"

    const-string/jumbo v1, "sendOptionsCapabilityRequest called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x7

    :try_start_9
    invoke-interface {p3, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    .line 503
    goto :goto_e

    .line 501
    :catch_d
    move-exception v0

    .line 504
    :goto_e
    return-void
.end method

.method public whitelist subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .registers 5
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 454
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string v0, "RcsCapExchangeImplBase"

    const-string/jumbo v1, "subscribeForCapabilities called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x7

    :try_start_9
    invoke-interface {p2, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    .line 459
    goto :goto_e

    .line 457
    :catch_d
    move-exception v0

    .line 460
    :goto_e
    return-void
.end method
