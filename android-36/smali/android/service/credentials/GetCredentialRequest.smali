.class public final Landroid/service/credentials/GetCredentialRequest;
.super Ljava/lang/Object;
.source "GetCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/GetCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field private final blacklist mCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/service/credentials/GetCredentialRequest$1;

    invoke-direct {v0}, Landroid/service/credentials/GetCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/service/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Landroid/service/credentials/CallingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 58
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/credentials/GetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    sget-object v1, Landroid/credentials/CredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 62
    iput-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    .line 63
    const-class v1, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/service/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/GetCredentialRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V
    .registers 4
    .param p1, "callingAppInfo"    # Landroid/service/credentials/CallingAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/CallingAppInfo;",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "callingAppInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 52
    const-string v0, "credentialOptions must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingAppInfo()Landroid/service/credentials/CallingAppInfo;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    return-object v0
.end method

.method public whitelist getCredentialOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 87
    iget-object v0, p0, Landroid/service/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 88
    return-void
.end method
