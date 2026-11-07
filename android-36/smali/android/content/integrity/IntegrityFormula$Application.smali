.class public final Landroid/content/integrity/IntegrityFormula$Application;
.super Ljava/lang/Object;
.source "IntegrityFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/IntegrityFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist certificateLineageContains(Ljava/lang/String;)Landroid/content/integrity/IntegrityFormula;
    .registers 3
    .param p0, "appCertificate"    # Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist certificatesContain(Ljava/lang/String;)Landroid/content/integrity/IntegrityFormula;
    .registers 3
    .param p0, "appCertificate"    # Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist isPreInstalled()Landroid/content/integrity/IntegrityFormula;
    .registers 3

    .line 97
    new-instance v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;-><init>(IZ)V

    return-object v0
.end method

.method public static whitelist packageNameEquals(Ljava/lang/String;)Landroid/content/integrity/IntegrityFormula;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist versionCodeEquals(J)Landroid/content/integrity/IntegrityFormula;
    .registers 5
    .param p0, "versionCode"    # J

    .line 72
    new-instance v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    return-object v0
.end method

.method public static whitelist versionCodeGreaterThan(J)Landroid/content/integrity/IntegrityFormula;
    .registers 5
    .param p0, "versionCode"    # J

    .line 81
    new-instance v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    return-object v0
.end method

.method public static whitelist versionCodeGreaterThanOrEqualTo(J)Landroid/content/integrity/IntegrityFormula;
    .registers 5
    .param p0, "versionCode"    # J

    .line 90
    new-instance v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    return-object v0
.end method
