.class public final Landroid/telephony/euicc/DownloadableSubscription$Builder;
.super Ljava/lang/Object;
.source "DownloadableSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/euicc/DownloadableSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o accessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o carrierName:Ljava/lang/String;

.field private greylist-max-o confirmationCode:Ljava/lang/String;

.field private greylist-max-o encodedActivationCode:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/euicc/DownloadableSubscription;)V
    .registers 3
    .param p1, "baseSubscription"    # Landroid/telephony/euicc/DownloadableSubscription;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getEncodedActivationCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getConfirmationCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->confirmationCode:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->carrierName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getAccessRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->accessRules:Ljava/util/List;

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "encodedActivationCode"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/euicc/DownloadableSubscription;
    .registers 7

    .line 133
    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription;

    iget-object v1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->confirmationCode:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->carrierName:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->accessRules:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/euicc/DownloadableSubscription-IA;)V

    return-object v0
.end method

.method public whitelist setAccessRules(Ljava/util/List;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)",
            "Landroid/telephony/euicc/DownloadableSubscription$Builder;"
        }
    .end annotation

    .line 181
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->accessRules:Ljava/util/List;

    .line 182
    return-object p0
.end method

.method public whitelist setCarrierName(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 169
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->carrierName:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public whitelist setConfirmationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->confirmationCode:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public whitelist setEncodedActivationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    .line 147
    return-object p0
.end method
