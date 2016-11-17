.class public Landroid/security/keymaster/KeymasterCertificateChain;
.super Ljava/lang/Object;
.source "KeymasterCertificateChain.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/KeymasterCertificateChain$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeymasterCertificateChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain$1;

    #@2
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain$1;-><init>()V

    #@5
    sput-object v0, Landroid/security/keymaster/KeymasterCertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@6
    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterCertificateChain;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterCertificateChain;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    .local p1, "mCertificates":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 75
    .local v1, "length":I
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@b
    .line 76
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@e
    .line 77
    iget-object v2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@10
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@13
    move-result-object v3

    #@14
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 76
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 73
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget-object v2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 64
    const/4 v2, 0x0

    #@5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 62
    :cond_0
    return-void

    #@9
    .line 66
    :cond_1
    iget-object v2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 67
    iget-object v2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "arg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [B

    #@24
    .line 68
    .local v0, "arg":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@27
    goto :goto_0
.end method
