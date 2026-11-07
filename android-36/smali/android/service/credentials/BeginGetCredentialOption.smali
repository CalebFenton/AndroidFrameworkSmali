.class public final Landroid/service/credentials/BeginGetCredentialOption;
.super Ljava/lang/Object;
.source "BeginGetCredentialOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist BUNDLE_ID_KEY:Ljava/lang/String; = "android.service.credentials.BeginGetCredentialOption.BUNDLE_ID_KEY"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Landroid/service/credentials/BeginGetCredentialOption$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginGetCredentialOption$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginGetCredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 132
    .local v1, "candidateQueryData":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "id":Ljava/lang/String;
    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    .line 135
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 136
    iput-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    .line 137
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 138
    iput-object v2, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginGetCredentialOption-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginGetCredentialOption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "candidateQueryData"    # Landroid/os/Bundle;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string/jumbo v0, "id must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "type must not be empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 121
    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    .line 122
    invoke-direct {p0}, Landroid/service/credentials/BeginGetCredentialOption;->addIdToBundle()V

    .line 123
    return-void
.end method

.method private blacklist addIdToBundle()V
    .registers 4

    .line 126
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    const-string v1, "android.service.credentials.BeginGetCredentialOption.BUNDLE_ID_KEY"

    iget-object v2, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCandidateQueryData()Landroid/os/Bundle;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCredentialOption {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidateQueryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 90
    return-void
.end method
