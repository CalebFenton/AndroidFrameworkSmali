.class public final Landroid/service/credentials/CreateCredentialRequest;
.super Ljava/lang/Object;
.source "CreateCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/CreateCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field private final blacklist mData:Landroid/os/Bundle;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/service/credentials/CreateCredentialRequest$1;

    invoke-direct {v0}, Landroid/service/credentials/CreateCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/service/credentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/service/credentials/CallingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    .line 55
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mData:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/CreateCredentialRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/CreateCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "callingAppInfo"    # Landroid/service/credentials/CallingAppInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "callingAppInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 47
    const-string/jumbo v0, "type must not be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    .line 49
    const-string v0, "data must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mData:Landroid/os/Bundle;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingAppInfo()Landroid/service/credentials/CallingAppInfo;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/service/credentials/CreateCredentialRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 81
    return-void
.end method
