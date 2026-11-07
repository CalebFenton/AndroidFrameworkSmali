.class public final Landroid/service/credentials/BeginCreateCredentialRequest;
.super Ljava/lang/Object;
.source "BeginCreateCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginCreateCredentialRequest;",
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

    .line 71
    new-instance v0, Landroid/service/credentials/BeginCreateCredentialRequest$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginCreateCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginCreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Landroid/service/credentials/CallingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mType:Ljava/lang/String;

    .line 68
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mData:Landroid/os/Bundle;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginCreateCredentialRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;)V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "callingAppInfo"    # Landroid/service/credentials/CallingAppInfo;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, "type must not be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mType:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "dataCopy":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 50
    iput-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mData:Landroid/os/Bundle;

    .line 51
    iput-object p3, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingAppInfo()Landroid/service/credentials/CallingAppInfo;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 92
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/service/credentials/BeginCreateCredentialRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method
