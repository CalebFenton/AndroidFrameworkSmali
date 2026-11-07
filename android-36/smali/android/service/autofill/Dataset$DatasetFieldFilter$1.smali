.class Landroid/service/autofill/Dataset$DatasetFieldFilter$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset$DatasetFieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1551
    new-instance v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    const-class v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-direct {v0, v1}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

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

    .line 1547
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .registers 3
    .param p1, "size"    # I

    .line 1556
    new-array v0, p1, [Landroid/service/autofill/Dataset$DatasetFieldFilter;

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

    .line 1547
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter$1;->newArray(I)[Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p1

    return-object p1
.end method
