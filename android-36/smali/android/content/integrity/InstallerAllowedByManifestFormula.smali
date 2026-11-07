.class public Landroid/content/integrity/InstallerAllowedByManifestFormula;
.super Landroid/content/integrity/IntegrityFormula;
.source "InstallerAllowedByManifestFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/InstallerAllowedByManifestFormula;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INSTALLER_CERTIFICATE_NOT_EVALUATED:Ljava/lang/String; = ""


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/content/integrity/InstallerAllowedByManifestFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/InstallerAllowedByManifestFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/InstallerAllowedByManifestFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/integrity/InstallerAllowedByManifestFormula-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist installerInAllowedInstallersFromManifest(Landroid/content/integrity/AppInstallMetadata;Ljava/util/Map;)Z
    .registers 5
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 88
    .local p1, "allowedInstallersAndCertificates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "installerPackage":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 91
    const/4 v1, 0x0

    return v1

    .line 95
    :cond_c
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 97
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerCertificates()Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    return v1

    .line 103
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 58
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist isAppCertificateFormula()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstallerFormula()Z
    .registers 2

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 4
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;

    .line 63
    nop

    .line 64
    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getAllowedInstallersAndCertificates()Ljava/util/Map;

    move-result-object v0

    .line 65
    .local v0, "allowedInstallersAndCertificates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 66
    invoke-static {p1, v0}, Landroid/content/integrity/InstallerAllowedByManifestFormula;->installerInAllowedInstallersFromManifest(Landroid/content/integrity/AppInstallMetadata;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    .line 65
    :goto_15
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    return-void
.end method
