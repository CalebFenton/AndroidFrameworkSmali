.class public final Landroid/adservices/customaudience/TrustedBiddingData$Builder;
.super Ljava/lang/Object;
.source "TrustedBiddingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/TrustedBiddingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mTrustedBiddingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTrustedBiddingUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTrustedBiddingKeys(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->mTrustedBiddingKeys:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrustedBiddingUri(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->mTrustedBiddingUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/TrustedBiddingData;
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->mTrustedBiddingUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->mTrustedBiddingKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Landroid/adservices/customaudience/TrustedBiddingData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/TrustedBiddingData;-><init>(Landroid/adservices/customaudience/TrustedBiddingData$Builder;Landroid/adservices/customaudience/TrustedBiddingData-IA;)V

    return-object v0
.end method

.method public whitelist setTrustedBiddingKeys(Ljava/util/List;)Landroid/adservices/customaudience/TrustedBiddingData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/adservices/customaudience/TrustedBiddingData$Builder;"
        }
    .end annotation

    .line 140
    .local p1, "trustedBiddingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->mTrustedBiddingKeys:Ljava/util/List;

    .line 142
    return-object p0
.end method

.method public whitelist setTrustedBiddingUri(Landroid/net/Uri;)Landroid/adservices/customaudience/TrustedBiddingData$Builder;
    .registers 2
    .param p1, "trustedBiddingUri"    # Landroid/net/Uri;

    .line 128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->mTrustedBiddingUri:Landroid/net/Uri;

    .line 130
    return-object p0
.end method
