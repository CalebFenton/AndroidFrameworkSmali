.class public final Landroid/content/integrity/AppInstallMetadata$Builder;
.super Ljava/lang/Object;
.source "AppInstallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AppInstallMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedInstallersAndCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInstallerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInstallerName:Ljava/lang/String;

.field private blacklist mIsPreInstalled:Z

.field private blacklist mIsStampPresent:Z

.field private blacklist mIsStampTrusted:Z

.field private blacklist mIsStampVerified:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStampCertificateHash:Ljava/lang/String;

.field private blacklist mVersionCode:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedInstallersAndCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppCertificateLineage(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificateLineage:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInstallerCertificates(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerCertificates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInstallerName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPreInstalled(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsPreInstalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStampPresent(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampPresent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStampTrusted(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampTrusted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStampVerified(Landroid/content/integrity/AppInstallMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampVerified:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStampCertificateHash(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mStampCertificateHash:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVersionCode(Landroid/content/integrity/AppInstallMetadata$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mVersionCode:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    .line 174
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/integrity/AppInstallMetadata;
    .registers 3

    .line 328
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificateLineage:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Landroid/content/integrity/AppInstallMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/integrity/AppInstallMetadata;-><init>(Landroid/content/integrity/AppInstallMetadata$Builder;Landroid/content/integrity/AppInstallMetadata-IA;)V

    return-object v0
.end method

.method public blacklist setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 184
    .local p1, "allowedInstallersAndCertificates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    .line 185
    return-object p0
.end method

.method public blacklist setAppCertificateLineage(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 223
    .local p1, "appCertificateLineage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificateLineage:Ljava/util/List;

    .line 224
    return-object p0
.end method

.method public blacklist setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 209
    .local p1, "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;

    .line 210
    return-object p0
.end method

.method public blacklist setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/integrity/AppInstallMetadata$Builder;"
        }
    .end annotation

    .line 248
    .local p1, "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerCertificates:Ljava/util/List;

    .line 249
    return-object p0
.end method

.method public blacklist setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .param p1, "installerName"    # Ljava/lang/String;

    .line 234
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerName:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public blacklist setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 2
    .param p1, "isPreInstalled"    # Z

    .line 270
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsPreInstalled:Z

    .line 271
    return-object p0
.end method

.method public blacklist setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 2
    .param p1, "isStampPresent"    # Z

    .line 281
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampPresent:Z

    .line 282
    return-object p0
.end method

.method public blacklist setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 2
    .param p1, "isStampTrusted"    # Z

    .line 303
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampTrusted:Z

    .line 304
    return-object p0
.end method

.method public blacklist setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 2
    .param p1, "isStampVerified"    # Z

    .line 292
    iput-boolean p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampVerified:Z

    .line 293
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public blacklist setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .param p1, "stampCertificateHash"    # Ljava/lang/String;

    .line 317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mStampCertificateHash:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public blacklist setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;
    .registers 3
    .param p1, "versionCode"    # J

    .line 259
    iput-wide p1, p0, Landroid/content/integrity/AppInstallMetadata$Builder;->mVersionCode:J

    .line 260
    return-object p0
.end method
