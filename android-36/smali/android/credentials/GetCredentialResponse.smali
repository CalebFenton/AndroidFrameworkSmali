.class public final Landroid/credentials/GetCredentialResponse;
.super Ljava/lang/Object;
.source "GetCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/GetCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCredential:Landroid/credentials/Credential;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/credentials/GetCredentialResponse$1;

    invoke-direct {v0}, Landroid/credentials/GetCredentialResponse$1;-><init>()V

    sput-object v0, Landroid/credentials/GetCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/credentials/Credential;)V
    .registers 3
    .param p1, "credential"    # Landroid/credentials/Credential;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "credential must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/Credential;

    iput-object v0, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    .line 81
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Landroid/credentials/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/Credential;

    .line 85
    .local v0, "credential":Landroid/credentials/Credential;
    iput-object v0, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    .line 86
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/GetCredentialResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 4

    .line 69
    iget-object v0, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    invoke-virtual {v0}, Landroid/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.service.credentials.extra.AUTOFILL_ID"

    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getCredential()Landroid/credentials/Credential;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCredentialResponse {credential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 52
    iget-object v0, p0, Landroid/credentials/GetCredentialResponse;->mCredential:Landroid/credentials/Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 53
    return-void
.end method
