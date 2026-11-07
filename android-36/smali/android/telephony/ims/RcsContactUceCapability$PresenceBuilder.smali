.class public final Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
.super Ljava/lang/Object;
.source "RcsContactUceCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactUceCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PresenceBuilder"
.end annotation


# instance fields
.field private final blacklist mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;II)V
    .registers 7
    .param p1, "contact"    # Landroid/net/Uri;
    .param p2, "sourceType"    # I
    .param p3, "requestResult"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    .line 199
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0, p3}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fputmRequestResult(Landroid/telephony/ims/RcsContactUceCapability;I)V

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .registers 3
    .param p1, "tuple"    # Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 208
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fgetmPresenceTuples(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-object p0
.end method

.method public whitelist addCapabilityTuples(Ljava/util/List;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;"
        }
    .end annotation

    .line 219
    .local p1, "tuples":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fgetmPresenceTuples(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    return-object p0
.end method

.method public whitelist build()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-object v0
.end method

.method public whitelist setEntityUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .registers 3
    .param p1, "entityUri"    # Landroid/net/Uri;

    .line 228
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fputmEntityUri(Landroid/telephony/ims/RcsContactUceCapability;Landroid/net/Uri;)V

    .line 229
    return-object p0
.end method
