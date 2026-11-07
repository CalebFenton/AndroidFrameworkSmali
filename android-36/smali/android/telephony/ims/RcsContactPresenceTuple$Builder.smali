.class public final Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
.super Ljava/lang/Object;
.source "RcsContactPresenceTuple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactPresenceTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "serviceVersion"    # Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/telephony/ims/RcsContactPresenceTuple;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/RcsContactPresenceTuple-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 385
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/RcsContactPresenceTuple;
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    return-object v0
.end method

.method public whitelist setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .registers 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 392
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmContactUri(Landroid/telephony/ims/RcsContactPresenceTuple;Landroid/net/Uri;)V

    .line 393
    return-object p0
.end method

.method public whitelist setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .registers 3
    .param p1, "caps"    # Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    .line 420
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple;Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)V

    .line 421
    return-object p0
.end method

.method public whitelist setServiceDescription(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 411
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmServiceDescription(Landroid/telephony/ims/RcsContactPresenceTuple;Ljava/lang/String;)V

    .line 412
    return-object p0
.end method

.method public whitelist setTime(Ljava/time/Instant;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .registers 3
    .param p1, "timestamp"    # Ljava/time/Instant;

    .line 402
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmTimestamp(Landroid/telephony/ims/RcsContactPresenceTuple;Ljava/time/Instant;)V

    .line 403
    return-object p0
.end method
