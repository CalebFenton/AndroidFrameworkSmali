.class public final Landroid/adservices/adid/GetAdIdResult;
.super Landroid/adservices/common/AdServicesResponse;
.source "GetAdIdResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adid/GetAdIdResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adid/GetAdIdResult;",
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

    .line 55
    new-instance v0, Landroid/adservices/adid/GetAdIdResult$1;

    invoke-direct {v0}, Landroid/adservices/adid/GetAdIdResult$1;-><init>()V

    sput-object v0, Landroid/adservices/adid/GetAdIdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "adId"    # Ljava/lang/String;
    .param p4, "isLimitAdTrackingEnabled"    # Z

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/adservices/common/AdServicesResponse;-><init>(ILjava/lang/String;)V

    .line 43
    iput-object p3, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ZLandroid/adservices/adid/GetAdIdResult-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adid/GetAdIdResult;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesResponse;-><init>(Landroid/os/Parcel;)V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adid/GetAdIdResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adid/GetAdIdResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 124
    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/adservices/adid/GetAdIdResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 128
    return v2

    .line 131
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adid/GetAdIdResult;

    .line 133
    .local v1, "that":Landroid/adservices/adid/GetAdIdResult;
    iget v3, p0, Landroid/adservices/adid/GetAdIdResult;->mStatusCode:I

    iget v4, v1, Landroid/adservices/adid/GetAdIdResult;->mStatusCode:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/adservices/adid/GetAdIdResult;->mErrorMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/adid/GetAdIdResult;->mErrorMessage:Ljava/lang/String;

    .line 134
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-boolean v3, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    iget-boolean v4, v1, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 133
    :goto_2f
    return v0
.end method

.method public blacklist getAdId()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 141
    iget v0, p0, Landroid/adservices/adid/GetAdIdResult;->mStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adid/GetAdIdResult;->mErrorMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isLatEnabled()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAdIdResult{mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adid/GetAdIdResult;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adid/GetAdIdResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLimitAdTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

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

    .line 78
    iget v0, p0, Landroid/adservices/adid/GetAdIdResult;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdResult;->mAdId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Landroid/adservices/adid/GetAdIdResult;->mLimitAdTrackingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 82
    return-void
.end method
