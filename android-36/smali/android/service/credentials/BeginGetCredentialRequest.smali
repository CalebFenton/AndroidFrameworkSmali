.class public final Landroid/service/credentials/BeginGetCredentialRequest;
.super Ljava/lang/Object;
.source "BeginGetCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/BeginGetCredentialRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginGetCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBeginGetCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/service/credentials/BeginGetCredentialRequest$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginGetCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginGetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Landroid/service/credentials/CallingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/CallingAppInfo;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "getBeginCredentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/service/credentials/BeginGetCredentialOption;>;"
    sget-object v1, Landroid/service/credentials/BeginGetCredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 70
    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mBeginGetCredentialOptions:Ljava/util/List;

    .line 71
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mBeginGetCredentialOptions:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginGetCredentialRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginGetCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V
    .registers 3
    .param p1, "callingAppInfo"    # Landroid/service/credentials/CallingAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/CallingAppInfo;",
            "Ljava/util/List<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p2, "getBeginCredentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/service/credentials/BeginGetCredentialOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 63
    iput-object p2, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mBeginGetCredentialOptions:Ljava/util/List;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;Landroid/service/credentials/BeginGetCredentialRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/service/credentials/BeginGetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBeginGetCredentialOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mBeginGetCredentialOptions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCallingAppInfo()Landroid/service/credentials/CallingAppInfo;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest;->mBeginGetCredentialOptions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    return-void
.end method
