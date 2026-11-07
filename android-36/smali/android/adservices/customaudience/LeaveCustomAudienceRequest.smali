.class public final Landroid/adservices/customaudience/LeaveCustomAudienceRequest;
.super Ljava/lang/Object;
.source "LeaveCustomAudienceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->-$$Nest$fgetmBuyer(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 32
    invoke-static {p1}, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->-$$Nest$fgetmName(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;Landroid/adservices/customaudience/LeaveCustomAudienceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;-><init>(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 64
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;

    .line 65
    .local v1, "that":Landroid/adservices/customaudience/LeaveCustomAudienceRequest;
    iget-object v3, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v3, v4}, Landroid/adservices/common/AdTechIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v1, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->mName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
