.class public final Landroid/nearby/CredentialElement;
.super Ljava/lang/Object;
.source "CredentialElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/CredentialElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mValue:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/nearby/CredentialElement$1;

    invoke-direct {v0}, Landroid/nearby/CredentialElement$1;-><init>()V

    sput-object v0, Landroid/nearby/CredentialElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "neither key or value can be null"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 43
    iput-object p1, p0, Landroid/nearby/CredentialElement;->mKey:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Landroid/nearby/CredentialElement;->mValue:[B

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Landroid/nearby/CredentialElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/nearby/CredentialElement;

    .line 90
    .local v0, "that":Landroid/nearby/CredentialElement;
    iget-object v2, p0, Landroid/nearby/CredentialElement;->mKey:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/CredentialElement;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/nearby/CredentialElement;->mValue:[B

    iget-object v3, v0, Landroid/nearby/CredentialElement;->mValue:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 92
    .end local v0    # "that":Landroid/nearby/CredentialElement;
    :cond_1e
    return v1
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/nearby/CredentialElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValue()[B
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/nearby/CredentialElement;->mValue:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 97
    iget-object v0, p0, Landroid/nearby/CredentialElement;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/CredentialElement;->mValue:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget-object v0, p0, Landroid/nearby/CredentialElement;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroid/nearby/CredentialElement;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    return-void
.end method
