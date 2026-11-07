.class public Landroid/adservices/customaudience/JoinCustomAudienceRequest;
.super Ljava/lang/Object;
.source "JoinCustomAudienceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCustomAudience:Landroid/adservices/customaudience/CustomAudience;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;->-$$Nest$fgetmCustomAudience(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;)Landroid/adservices/customaudience/CustomAudience;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    .line 33
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;Landroid/adservices/customaudience/JoinCustomAudienceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/JoinCustomAudienceRequest;-><init>(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 49
    :cond_4
    instance-of v0, p1, Landroid/adservices/customaudience/JoinCustomAudienceRequest;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;

    .line 51
    .local v0, "that":Landroid/adservices/customaudience/JoinCustomAudienceRequest;
    iget-object v1, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    iget-object v2, v0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    invoke-virtual {v1, v2}, Landroid/adservices/customaudience/CustomAudience;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getCustomAudience()Landroid/adservices/customaudience/CustomAudience;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/adservices/customaudience/JoinCustomAudienceRequest;->mCustomAudience:Landroid/adservices/customaudience/CustomAudience;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
