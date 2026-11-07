.class public final Landroid/service/credentials/CallingAppInfo;
.super Ljava/lang/Object;
.source "CallingAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/CallingAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOrigin:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSigningInfo:Landroid/content/pm/SigningInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/service/credentials/CallingAppInfo$1;

    invoke-direct {v0}, Landroid/service/credentials/CallingAppInfo$1;-><init>()V

    sput-object v0, Landroid/service/credentials/CallingAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mPackageName:Ljava/lang/String;

    .line 70
    sget-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningInfo;

    iput-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mOrigin:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/CallingAppInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/CallingAppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signingInfo"    # Landroid/content/pm/SigningInfo;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signingInfo"    # Landroid/content/pm/SigningInfo;
    .param p3, "origin"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, "package namemust not be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningInfo;

    iput-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 65
    iput-object p3, p0, Landroid/service/credentials/CallingAppInfo;->mOrigin:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOrigin()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallingAppInfo {packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/credentials/CallingAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/credentials/CallingAppInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    if-eqz v1, :cond_3c

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mSigningInfo : No. of signatures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/credentials/CallingAppInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    .line 133
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 135
    :cond_3c
    const-string v1, ", mSigningInfo: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",mOrigin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/credentials/CallingAppInfo;->mOrigin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Landroid/service/credentials/CallingAppInfo;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 125
    return-void
.end method
