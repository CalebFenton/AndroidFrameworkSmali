.class Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;
.super Ljava/lang/Object;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/integrity/AtomicFormula$StringAtomicFormula;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 402
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-direct {v0, p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 399
    invoke-virtual {p0, p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
    .registers 3
    .param p1, "size"    # I

    .line 407
    new-array v0, p1, [Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 399
    invoke-virtual {p0, p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;->newArray(I)[Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    move-result-object p1

    return-object p1
.end method
