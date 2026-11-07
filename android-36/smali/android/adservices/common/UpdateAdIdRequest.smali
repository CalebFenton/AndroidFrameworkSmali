.class public final Landroid/adservices/common/UpdateAdIdRequest;
.super Ljava/lang/Object;
.source "UpdateAdIdRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/UpdateAdIdRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/UpdateAdIdRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdId:Ljava/lang/String;

.field private final blacklist mLimitAdTrackingEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/adservices/common/UpdateAdIdRequest$1;

    invoke-direct {v0}, Landroid/adservices/common/UpdateAdIdRequest$1;-><init>()V

    sput-object v0, Landroid/adservices/common/UpdateAdIdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/adservices/common/UpdateAdIdRequest;-><init>(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/UpdateAdIdRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/UpdateAdIdRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "adId"    # Ljava/lang/String;
    .param p2, "isLimitAdTrackingEnabled"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ZLandroid/adservices/common/UpdateAdIdRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/common/UpdateAdIdRequest;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 107
    return v0

    .line 110
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/UpdateAdIdRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 111
    return v2

    .line 114
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/common/UpdateAdIdRequest;

    .line 116
    .local v1, "that":Landroid/adservices/common/UpdateAdIdRequest;
    iget-object v3, p0, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-boolean v3, p0, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

    iget-boolean v4, v1, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist getAdId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

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

    .line 90
    iget-boolean v0, p0, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAdIdRequest{mAdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLimitAdTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroid/adservices/common/UpdateAdIdRequest;->mAdId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Landroid/adservices/common/UpdateAdIdRequest;->mLimitAdTrackingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 75
    return-void
.end method
