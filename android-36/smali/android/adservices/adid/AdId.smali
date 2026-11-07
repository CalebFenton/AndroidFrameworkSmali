.class public Landroid/adservices/adid/AdId;
.super Ljava/lang/Object;
.source "AdId.java"


# static fields
.field public static final whitelist ZERO_OUT:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"


# instance fields
.field private final blacklist mAdId:Ljava/lang/String;

.field private final blacklist mLimitAdTrackingEnabled:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "adId"    # Ljava/lang/String;
    .param p2, "limitAdTrackingEnabled"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/adservices/adid/AdId;->mAdId:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Landroid/adservices/adid/AdId;->mLimitAdTrackingEnabled:Z

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 81
    return v0

    .line 83
    :cond_4
    instance-of v1, p1, Landroid/adservices/adid/AdId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 84
    return v2

    .line 86
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adid/AdId;

    .line 87
    .local v1, "that":Landroid/adservices/adid/AdId;
    iget-object v3, p0, Landroid/adservices/adid/AdId;->mAdId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/adid/AdId;->mAdId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-boolean v3, p0, Landroid/adservices/adid/AdId;->mLimitAdTrackingEnabled:Z

    iget-boolean v4, v1, Landroid/adservices/adid/AdId;->mLimitAdTrackingEnabled:Z

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist getAdId()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/adservices/adid/AdId;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/adservices/adid/AdId;->mAdId:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/adservices/adid/AdId;->mLimitAdTrackingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isLimitAdTrackingEnabled()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/adservices/adid/AdId;->mLimitAdTrackingEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdId{mAdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adid/AdId;->mAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLimitAdTrackingEnabled=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/adservices/adid/AdId;->mLimitAdTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
