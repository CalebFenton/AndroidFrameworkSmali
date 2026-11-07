.class public Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
.super Ljava/lang/Object;
.source "RcsUceCapabilityBuilderWrapper.java"


# instance fields
.field private final blacklist mMechanism:I

.field private blacklist mOptionsBuilder:Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

.field private blacklist mPresenceBuilder:Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "mechanism"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->mMechanism:I

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getMechanism()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->mMechanism:I

    return v0
.end method

.method public blacklist getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->mOptionsBuilder:Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    return-object v0
.end method

.method public blacklist getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->mPresenceBuilder:Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    return-object v0
.end method

.method public blacklist setOptionsBuilder(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;)V
    .registers 2
    .param p1, "optionsBuilder"    # Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 49
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->mOptionsBuilder:Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 50
    return-void
.end method

.method public blacklist setPresenceBuilder(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;)V
    .registers 2
    .param p1, "presenceBuilder"    # Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 41
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->mPresenceBuilder:Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 42
    return-void
.end method
