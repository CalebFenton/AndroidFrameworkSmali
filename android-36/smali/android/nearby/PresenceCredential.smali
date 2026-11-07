.class public abstract Landroid/nearby/PresenceCredential;
.super Ljava/lang/Object;
.source "PresenceCredential.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/PresenceCredential$IdentityType;,
        Landroid/nearby/PresenceCredential$CredentialType;
    }
.end annotation


# static fields
.field public static final whitelist CREDENTIAL_TYPE_PRIVATE:I = 0x0

.field public static final whitelist CREDENTIAL_TYPE_PUBLIC:I = 0x1

.field public static final whitelist IDENTITY_TYPE_PRIVATE:I = 0x1

.field public static final whitelist IDENTITY_TYPE_PROVISIONED:I = 0x2

.field public static final whitelist IDENTITY_TYPE_TRUSTED:I = 0x3

.field public static final whitelist IDENTITY_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAuthenticityKey:[B

.field private final blacklist mCredentialElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/CredentialElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdentityType:I

.field private final blacklist mSecretId:[B

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(II[B[BLjava/util/List;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "identityType"    # I
    .param p3, "secretId"    # [B
    .param p4, "authenticityKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B[B",
            "Ljava/util/List<",
            "Landroid/nearby/CredentialElement;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p5, "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Landroid/nearby/PresenceCredential;->mType:I

    .line 86
    iput p2, p0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    .line 87
    iput-object p3, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    .line 88
    iput-object p4, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    .line 89
    iput-object p5, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    .line 90
    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroid/nearby/PresenceCredential;->mType:I

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    .line 96
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    .line 98
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    .line 100
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    const-class v1, Landroid/nearby/CredentialElement;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/nearby/CredentialElement;

    .line 100
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 136
    instance-of v0, p1, Landroid/nearby/PresenceCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 137
    move-object v0, p1

    check-cast v0, Landroid/nearby/PresenceCredential;

    .line 138
    .local v0, "that":Landroid/nearby/PresenceCredential;
    iget v2, p0, Landroid/nearby/PresenceCredential;->mType:I

    iget v3, v0, Landroid/nearby/PresenceCredential;->mType:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    iget v3, v0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    if-ne v2, v3, :cond_34

    iget-object v2, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    iget-object v3, v0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    .line 140
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    iget-object v3, v0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    .line 141
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    iget-object v3, v0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    nop

    .line 138
    :goto_35
    return v1

    .line 144
    .end local v0    # "that":Landroid/nearby/PresenceCredential;
    :cond_36
    return v1
.end method

.method public whitelist getAuthenticityKey()[B
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    return-object v0
.end method

.method public whitelist getCredentialElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nearby/CredentialElement;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getIdentityType()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    return v0
.end method

.method public whitelist getSecretId()[B
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/nearby/PresenceCredential;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 149
    iget v0, p0, Landroid/nearby/PresenceCredential;->mType:I

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    .line 152
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    .line 153
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    .line 154
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget v0, p0, Landroid/nearby/PresenceCredential;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/nearby/PresenceCredential;->mIdentityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mSecretId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 167
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mAuthenticityKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 169
    iget-object v0, p0, Landroid/nearby/PresenceCredential;->mCredentialElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 170
    return-void
.end method
