.class public Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
.super Ljava/lang/Object;
.source "ExecuteInIsolatedServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;,
        Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;
    }
.end annotation


# instance fields
.field private blacklist mAppParams:Landroid/os/PersistableBundle;

.field private blacklist mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

.field private blacklist mService:Landroid/content/ComponentName;


# direct methods
.method constructor blacklist <init>(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "appParams"    # Landroid/os/PersistableBundle;
    .param p3, "outputSpec"    # Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mService:Landroid/content/ComponentName;

    .line 143
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mAppParams:Landroid/os/PersistableBundle;

    .line 144
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 177
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 178
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    .line 180
    .local v2, "that":Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mService:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mService:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mAppParams:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mAppParams:Landroid/os/PersistableBundle;

    .line 181
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 182
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 180
    :goto_35
    return v0

    .line 177
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getAppParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mAppParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getOutputSpec()Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    return-object v0
.end method

.method public whitelist getService()Landroid/content/ComponentName;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 190
    const/4 v0, 0x1

    .line 191
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mService:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 192
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mAppParams:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
