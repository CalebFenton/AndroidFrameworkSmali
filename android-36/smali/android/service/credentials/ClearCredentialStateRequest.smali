.class public final Landroid/service/credentials/ClearCredentialStateRequest;
.super Ljava/lang/Object;
.source "ClearCredentialStateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/ClearCredentialStateRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field private final blacklist mData:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/service/credentials/ClearCredentialStateRequest$1;

    invoke-direct {v0}, Landroid/service/credentials/ClearCredentialStateRequest$1;-><init>()V

    sput-object v0, Landroid/service/credentials/ClearCredentialStateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Landroid/service/credentials/CallingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "data":Landroid/os/Bundle;
    iput-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mData:Landroid/os/Bundle;

    .line 85
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mData:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/ClearCredentialStateRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/ClearCredentialStateRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/credentials/CallingAppInfo;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "callingAppInfo"    # Landroid/service/credentials/CallingAppInfo;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "callingAppInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 78
    const-string v0, "data must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mData:Landroid/os/Bundle;

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingAppInfo()Landroid/service/credentials/CallingAppInfo;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClearCredentialStateRequest {callingAppInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 66
    invoke-virtual {v1}, Landroid/service/credentials/CallingAppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }, {data= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 55
    iget-object v0, p0, Landroid/service/credentials/ClearCredentialStateRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
