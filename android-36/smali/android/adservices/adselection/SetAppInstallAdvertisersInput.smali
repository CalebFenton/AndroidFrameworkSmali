.class public final Landroid/adservices/adselection/SetAppInstallAdvertisersInput;
.super Ljava/lang/Object;
.source "SetAppInstallAdvertisersInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/SetAppInstallAdvertisersInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdvertisers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readSetFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mAdvertisers:Ljava/util/Set;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mCallerPackageName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/SetAppInstallAdvertisersInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Set;Ljava/lang/String;)V
    .registers 3
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    .local p1, "advertisers":Ljava/util/Set;, "Ljava/util/Set<Landroid/adservices/common/AdTechIdentifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mAdvertisers:Ljava/util/Set;

    .line 62
    iput-object p2, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mCallerPackageName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Ljava/lang/String;Landroid/adservices/adselection/SetAppInstallAdvertisersInput-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;-><init>(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdvertisers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mAdvertisers:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mAdvertisers:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->writeSetToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 83
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
