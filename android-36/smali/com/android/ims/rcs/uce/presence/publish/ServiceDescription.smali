.class public Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
.super Ljava/lang/Object;
.source "ServiceDescription.java"


# static fields
.field public static final blacklist SERVICE_DESCRIPTION_CALL_COMPOSER:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CALL_COMPOSER_MMTEL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_ROLE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_SA_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_SA_SESSION_V1:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_SA_SESSION_V2:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_SESSION_V1:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHATBOT_SESSION_V2:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHAT_IM:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_CHAT_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_FT:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_FT_SMS:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_GEOPUSH:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_GEOPUSH_SMS:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_MMTEL_VOICE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_MMTEL_VOICE_VIDEO:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_POST_CALL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_PRESENCE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_SHARED_MAP:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_SHARED_SKETCH:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_SLM:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

.field public static final blacklist SERVICE_DESCRIPTION_SLM_PAGER_LARGE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;


# instance fields
.field public final blacklist description:Ljava/lang/String;

.field public final blacklist serviceId:Ljava/lang/String;

.field public final blacklist version:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 31
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.openmobilealliance:IM-session"

    const-string v2, "1.0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHAT_IM:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 37
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.openmobilealliance:ChatSession"

    const-string v4, "2.0"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHAT_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 44
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.openmobilealliance:File-Transfer-HTTP"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_FT:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 50
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.ftsms"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_FT_SMS:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 56
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcse.dp"

    const-string v5, "Capabilities Discovery Service"

    invoke-direct {v0, v1, v2, v5}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_PRESENCE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 62
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "Voice Service"

    const-string v5, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    invoke-direct {v0, v5, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 69
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "Voice and Video Service"

    invoke-direct {v0, v5, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE_VIDEO:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 76
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopush"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_GEOPUSH:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 82
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geosms"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_GEOPUSH_SMS:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 88
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callcomposer"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 95
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {v0, v1, v4, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER_MMTEL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 102
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_POST_CALL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 108
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedmap"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SHARED_MAP:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 114
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedsketch"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SHARED_SKETCH:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 122
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 129
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v5, "Chatbot Session"

    invoke-direct {v0, v1, v2, v5}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SESSION_V1:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 136
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {v0, v1, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SESSION_V2:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 144
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 146
    const-string v1, " org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SA_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 151
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Chatbot Standalone"

    invoke-direct {v0, v5, v2, v6}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SA_SESSION_V1:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 158
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v6}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SA_SESSION_V2:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 165
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.gsma.rcs.isbot"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_ROLE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 172
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v1, "org.openmobilealliance:StandaloneMsg"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SLM:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 179
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    const-string v2, "Standalone Messaging"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SLM_PAGER_LARGE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 210
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 211
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 212
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 213
    .local v2, "that":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    .line 215
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 213
    :goto_35
    return v0

    .line 211
    .end local v2    # "that":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    :cond_36
    :goto_36
    return v1
.end method

.method public blacklist getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .registers 5

    .line 200
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    const-string v3, "open"

    invoke-direct {v0, v3, v1, v2}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v0, "b":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 203
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceDescription(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 205
    :cond_18
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
