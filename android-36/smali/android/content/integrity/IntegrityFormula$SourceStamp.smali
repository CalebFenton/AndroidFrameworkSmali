.class public final Landroid/content/integrity/IntegrityFormula$SourceStamp;
.super Ljava/lang/Object;
.source "IntegrityFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/IntegrityFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceStamp"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist notTrusted()Landroid/content/integrity/IntegrityFormula;
    .registers 3

    .line 148
    new-instance v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;-><init>(IZ)V

    return-object v0
.end method

.method public static whitelist stampCertificateHashEquals(Ljava/lang/String;)Landroid/content/integrity/IntegrityFormula;
    .registers 3
    .param p0, "stampCertificateHash"    # Ljava/lang/String;

    .line 139
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
