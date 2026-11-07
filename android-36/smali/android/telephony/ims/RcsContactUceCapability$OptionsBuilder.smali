.class public final Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
.super Ljava/lang/Object;
.source "RcsContactUceCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactUceCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionsBuilder"
.end annotation


# instance fields
.field private final blacklist mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 6
    .param p1, "contact"    # Landroid/net/Uri;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v3, v1, v2}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;I)V
    .registers 6
    .param p1, "contact"    # Landroid/net/Uri;
    .param p2, "sourceType"    # I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public whitelist addFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;"
        }
    .end annotation

    .line 168
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    return-object p0
.end method

.method public whitelist build()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-object v0
.end method

.method public whitelist setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 3
    .param p1, "requestResult"    # I

    .line 148
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fputmRequestResult(Landroid/telephony/ims/RcsContactUceCapability;I)V

    .line 149
    return-object p0
.end method
