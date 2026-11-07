.class public final Landroid/content/pm/verify/domain/DomainVerificationRequest;
.super Ljava/lang/Object;
.source "DomainVerificationRequest.java"

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
            "Landroid/content/pm/verify/domain/DomainVerificationRequest;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 136
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;

    .line 139
    sget-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 140
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;

    .line 175
    :cond_17
    new-instance v0, Landroid/content/pm/verify/domain/DomainVerificationRequest$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainVerificationRequest$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-direct {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationRequest;->unparcelPackageNames(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    .line 167
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    .line 168
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    .line 91
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    return-void
.end method

.method private blacklist parcelPackageNames(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 56
    return-void
.end method

.method private blacklist unparcelPackageNames(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readHostSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 115
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 117
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;

    .line 119
    .local v0, "that":Landroid/content/pm/verify/domain/DomainVerificationRequest;
    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    iget-object v2, v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    .line 120
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 119
    return v1

    .line 115
    .end local v0    # "that":Landroid/content/pm/verify/domain/DomainVerificationRequest;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 131
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationRequest;->parcelPackageNames(Landroid/os/Parcel;I)V

    .line 152
    return-void
.end method
