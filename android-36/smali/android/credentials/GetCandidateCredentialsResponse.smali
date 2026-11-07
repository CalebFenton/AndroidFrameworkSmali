.class public final Landroid/credentials/GetCandidateCredentialsResponse;
.super Ljava/lang/Object;
.source "GetCandidateCredentialsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/GetCandidateCredentialsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCandidateProviderDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/GetCredentialProviderData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mPrimaryProviderComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/credentials/GetCandidateCredentialsResponse$1;

    invoke-direct {v0}, Landroid/credentials/GetCandidateCredentialsResponse$1;-><init>()V

    sput-object v0, Landroid/credentials/GetCandidateCredentialsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "candidateProviderDataList":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/GetCredentialProviderData;>;"
    sget-object v1, Landroid/credentials/selection/GetCredentialProviderData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 99
    iput-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mCandidateProviderDataList:Ljava/util/List;

    .line 101
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mCandidateProviderDataList:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 102
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mIntent:Landroid/content/Intent;

    .line 104
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/content/Intent;Landroid/content/ComponentName;)V
    .registers 5
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "primaryProviderComponentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/GetCredentialProviderData;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "candidateProviderDataList":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/GetCredentialProviderData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "candidateProviderDataList"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mCandidateProviderDataList:Ljava/util/List;

    .line 63
    iput-object p2, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mIntent:Landroid/content/Intent;

    .line 64
    iput-object p3, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCandidateProviderDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/GetCredentialProviderData;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mCandidateProviderDataList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getIntent()Landroid/content/Intent;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getPrimaryProviderComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mCandidateProviderDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsResponse;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    return-void
.end method
