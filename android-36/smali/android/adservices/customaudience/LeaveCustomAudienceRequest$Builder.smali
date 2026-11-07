.class public final Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;
.super Ljava/lang/Object;
.source "LeaveCustomAudienceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/LeaveCustomAudienceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuyer(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/LeaveCustomAudienceRequest;
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;-><init>(Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;Landroid/adservices/customaudience/LeaveCustomAudienceRequest-IA;)V

    return-object v0
.end method

.method public whitelist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 92
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Landroid/adservices/customaudience/LeaveCustomAudienceRequest$Builder;->mName:Ljava/lang/String;

    .line 104
    return-object p0
.end method
