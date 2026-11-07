.class public final Landroid/content/integrity/IntegrityFormula$Installer;
.super Ljava/lang/Object;
.source "IntegrityFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/IntegrityFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Installer"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist certificatesContain(Ljava/lang/String;)Landroid/content/integrity/IntegrityFormula;
    .registers 3
    .param p0, "installerCertificate"    # Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist notAllowedByManifest()Landroid/content/integrity/IntegrityFormula;
    .registers 1

    .line 117
    new-instance v0, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    invoke-direct {v0}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>()V

    invoke-static {v0}, Landroid/content/integrity/IntegrityFormula;->not(Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist packageNameEquals(Ljava/lang/String;)Landroid/content/integrity/IntegrityFormula;
    .registers 3
    .param p0, "installerName"    # Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
