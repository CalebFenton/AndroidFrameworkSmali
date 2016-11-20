.class public Landroid/content/pm/VerifierInfo;
.super Ljava/lang/Object;
.source "VerifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/VerifierInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/content/pm/VerifierInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/VerifierInfo$1;-><init>()V

    #@5
    .line 73
    sput-object v0, Landroid/content/pm/VerifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    #@9
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/security/PublicKey;

    #@f
    iput-object v0, p0, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    #@11
    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/VerifierInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "packageName must not be null or empty"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 49
    :cond_1
    if-nez p2, :cond_2

    #@16
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "publicKey must not be null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 53
    :cond_2
    iput-object p1, p0, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    #@21
    .line 54
    iput-object p2, p0, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    #@23
    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 70
    iget-object v0, p0, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@a
    .line 68
    return-void
.end method
