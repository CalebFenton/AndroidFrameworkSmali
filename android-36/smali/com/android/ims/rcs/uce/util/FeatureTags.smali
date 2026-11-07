.class public Lcom/android/ims/rcs/uce/util/FeatureTags;
.super Ljava/lang/Object;
.source "FeatureTags.java"


# static fields
.field public static final blacklist FEATURE_TAG_CALL_COMPOSER_ENRICHED_CALLING:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

.field public static final blacklist FEATURE_TAG_CALL_COMPOSER_VIA_TELEPHONY:Ljava/lang/String; = "+g.gsma.callcomposer"

.field public static final blacklist FEATURE_TAG_CHATBOT_COMMUNICATION_USING_SESSION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

.field public static final blacklist FEATURE_TAG_CHATBOT_COMMUNICATION_USING_STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final blacklist FEATURE_TAG_CHATBOT_ROLE:Ljava/lang/String; = "+g.gsma.rcs.isbot"

.field public static final blacklist FEATURE_TAG_CHATBOT_VERSION_SUPPORTED:Ljava/lang/String; = "+g.gsma.rcs.botversion=\"#=1\""

.field public static final blacklist FEATURE_TAG_CHATBOT_VERSION_V2_SUPPORTED:Ljava/lang/String; = "+g.gsma.rcs.botversion=\"#=1,#=2\""

.field public static final blacklist FEATURE_TAG_CHAT_IM:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

.field public static final blacklist FEATURE_TAG_CHAT_SESSION:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\""

.field public static final blacklist FEATURE_TAG_DEFERRED_MESSAGING:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\""

.field public static final blacklist FEATURE_TAG_FILE_TRANSFER:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

.field public static final blacklist FEATURE_TAG_FILE_TRANSFER_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

.field public static final blacklist FEATURE_TAG_GEO_PUSH:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

.field public static final blacklist FEATURE_TAG_GEO_PUSH_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

.field public static final blacklist FEATURE_TAG_LARGE_MODE:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

.field public static final blacklist FEATURE_TAG_LARGE_PAGER_MODE:Ljava/lang/String; = "+g.gsma.rcs.cpm.pager-large"

.field public static final blacklist FEATURE_TAG_MMTEL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

.field public static final blacklist FEATURE_TAG_PAGER_MODE:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg\""

.field public static final blacklist FEATURE_TAG_POST_CALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

.field public static final blacklist FEATURE_TAG_PRESENCE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

.field public static final blacklist FEATURE_TAG_SHARED_MAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

.field public static final blacklist FEATURE_TAG_SHARED_SKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

.field public static final blacklist FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\";+g.gsma.rcs.cpm.pager-large"

.field public static final blacklist FEATURE_TAG_VIDEO:Ljava/lang/String; = "video"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addFeatureTags(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;ZZZZLjava/util/Set;)V
    .registers 8
    .param p0, "optionsBuilder"    # Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .param p1, "mmtelAudioSupport"    # Z
    .param p2, "mmtelVideoSupport"    # Z
    .param p3, "presenceSupport"    # Z
    .param p4, "callComposerSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;",
            "ZZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p5, "registrationTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    if-eqz p3, :cond_8

    .line 117
    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 119
    :cond_8
    invoke-interface {p5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    :goto_b
    const-string v0, "video"

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    .line 122
    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 124
    :cond_1a
    if-eqz p1, :cond_23

    .line 125
    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_29

    .line 128
    :cond_23
    invoke-interface {p5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {p5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    :goto_29
    const-string v0, "+g.gsma.callcomposer"

    if-eqz p4, :cond_31

    .line 132
    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 134
    :cond_31
    invoke-interface {p5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    :goto_34
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 137
    invoke-virtual {p0, p5}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 139
    :cond_3d
    return-void
.end method

.method public static blacklist getContactCapability(Landroid/net/Uri;ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .param p0, "contact"    # Landroid/net/Uri;
    .param p1, "sourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 146
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    .line 147
    .local v0, "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 148
    new-instance v1, Lcom/android/ims/rcs/uce/util/FeatureTags$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/ims/rcs/uce/util/FeatureTags$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 149
    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getContactCapability$0(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;Ljava/lang/String;)V
    .registers 2
    .param p0, "builder"    # Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .param p1, "feature"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    return-void
.end method
