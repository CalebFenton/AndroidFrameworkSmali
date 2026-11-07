.class public final Landroid/credentials/PrepareGetCredentialResponseInternal;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponseInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/PrepareGetCredentialResponseInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final blacklist mCredentialResultTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHasAuthenticationResults:Z

.field private final blacklist mHasQueryApiPermission:Z

.field private final blacklist mHasRemoteResults:Z

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/credentials/PrepareGetCredentialResponseInternal$1;

    invoke-direct {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal$1;-><init>()V

    sput-object v0, Landroid/credentials/PrepareGetCredentialResponseInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    .line 152
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    .line 153
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/PrepareGetCredentialResponseInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V
    .registers 7
    .param p1, "hasQueryApiPermission"    # Z
    .param p3, "hasAuthenticationResults"    # Z
    .param p4, "hasRemoteResults"    # Z
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 139
    .local p2, "credentialResultTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean p1, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    .line 142
    iput-boolean p3, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    .line 143
    iput-boolean p4, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    .line 144
    iput-object p5, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist hasAuthenticationResults()Z
    .registers 3

    .line 84
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    if-eqz v0, :cond_7

    .line 88
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    return v0

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller doesn\'t have the permission to query authentication results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasCredentialResults(Ljava/lang/String;)Z
    .registers 4
    .param p1, "credentialType"    # Ljava/lang/String;

    .line 68
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_a
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 69
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller doesn\'t have the permission to query credential results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasRemoteResults()Z
    .registers 3

    .line 96
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    if-eqz v0, :cond_7

    .line 100
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    return v0

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller doesn\'t have the permission to query remote results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 107
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    return-void
.end method
