.class public final Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;
.super Ljava/lang/Object;
.source "JoinCustomAudienceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/JoinCustomAudienceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCustomAudience:Landroid/adservices/customaudience/CustomAudience;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomAudience(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;)Landroid/adservices/customaudience/CustomAudience;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/JoinCustomAudienceRequest;
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    const-string v1, "The custom audience has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/JoinCustomAudienceRequest;-><init>(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;Landroid/adservices/customaudience/JoinCustomAudienceRequest-IA;)V

    return-object v0
.end method

.method public whitelist setCustomAudience(Landroid/adservices/customaudience/CustomAudience;)Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "customAudience"    # Landroid/adservices/customaudience/CustomAudience;

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    .line 79
    return-object p0
.end method
