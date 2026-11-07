.class public Landroid/content/pm/VerifierInfo;
.super Ljava/lang/Object;
.source "VerifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VerifierInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o packageName:Ljava/lang/String;

.field public final greylist-max-o publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/content/pm/VerifierInfo$1;

    invoke-direct {v0}, Landroid/content/pm/VerifierInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    .line 62
    const-class v0, Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/security/PublicKey;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/VerifierInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 52
    if-eqz p2, :cond_12

    .line 56
    iput-object p1, p0, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    .line 58
    return-void

    .line 53
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "publicKey must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 74
    return-void
.end method
