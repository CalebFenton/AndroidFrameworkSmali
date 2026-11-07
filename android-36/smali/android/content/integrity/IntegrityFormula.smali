.class public abstract Landroid/content/integrity/IntegrityFormula;
.super Ljava/lang/Object;
.source "IntegrityFormula.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/IntegrityFormula$Tag;,
        Landroid/content/integrity/IntegrityFormula$SourceStamp;,
        Landroid/content/integrity/IntegrityFormula$Installer;,
        Landroid/content/integrity/IntegrityFormula$Application;
    }
.end annotation


# static fields
.field public static final blacklist BOOLEAN_ATOMIC_FORMULA_TAG:I = 0x3

.field public static final blacklist COMPOUND_FORMULA_TAG:I = 0x0

.field public static final blacklist INSTALLER_ALLOWED_BY_MANIFEST_FORMULA_TAG:I = 0x4

.field public static final blacklist LONG_ATOMIC_FORMULA_TAG:I = 0x2

.field public static final blacklist STRING_ATOMIC_FORMULA_TAG:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs whitelist all([Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .registers 4
    .param p0, "formulae"    # [Landroid/content/integrity/IntegrityFormula;

    .line 276
    new-instance v0, Landroid/content/integrity/CompoundFormula;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static varargs whitelist any([Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .registers 4
    .param p0, "formulae"    # [Landroid/content/integrity/IntegrityFormula;

    .line 265
    new-instance v0, Landroid/content/integrity/CompoundFormula;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static whitelist not(Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .registers 4
    .param p0, "formula"    # Landroid/content/integrity/IntegrityFormula;

    .line 282
    new-instance v0, Landroid/content/integrity/CompoundFormula;

    filled-new-array {p0}, [Landroid/content/integrity/IntegrityFormula;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 240
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_4e

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown formula tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :pswitch_20
    sget-object v1, Landroid/content/integrity/InstallerAllowedByManifestFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    .line 249
    :pswitch_29
    sget-object v1, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    .line 247
    :pswitch_32
    sget-object v1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    .line 245
    :pswitch_3b
    sget-object v1, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    .line 243
    :pswitch_44
    sget-object v1, Landroid/content/integrity/CompoundFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3b
        :pswitch_32
        :pswitch_29
        :pswitch_20
    .end packed-switch
.end method

.method public static blacklist writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V
    .registers 4
    .param p0, "formula"    # Landroid/content/integrity/IntegrityFormula;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 225
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    move-object v0, p0

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    return-void
.end method


# virtual methods
.method public abstract blacklist getTag()I
.end method

.method public abstract blacklist isAppCertificateFormula()Z
.end method

.method public abstract blacklist isAppCertificateLineageFormula()Z
.end method

.method public abstract blacklist isInstallerFormula()Z
.end method

.method public abstract blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
.end method
