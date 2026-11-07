.class public final Landroid/telephony/ims/DelegateRegistrationState$Builder;
.super Ljava/lang/Object;
.source "DelegateRegistrationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/DelegateRegistrationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mState:Landroid/telephony/ims/DelegateRegistrationState;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState;-><init>(Landroid/telephony/ims/DelegateRegistrationState-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 154
    return-void
.end method


# virtual methods
.method public whitelist addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 5
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 222
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmDeregisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 223
    return-object p0
.end method

.method public whitelist addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 5
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 208
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmDeregisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 209
    return-object p0
.end method

.method public whitelist addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 3
    .param p1, "featureTag"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmRegisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public whitelist addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/DelegateRegistrationState$Builder;"
        }
    .end annotation

    .line 188
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmRegisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-object p0
.end method

.method public whitelist addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/DelegateRegistrationState$Builder;"
        }
    .end annotation

    .line 166
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmRegisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-object p0
.end method

.method public whitelist build()Landroid/telephony/ims/DelegateRegistrationState;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    return-object v0
.end method
