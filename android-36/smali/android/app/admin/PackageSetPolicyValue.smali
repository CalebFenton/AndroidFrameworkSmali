.class public final Landroid/app/admin/PackageSetPolicyValue;
.super Landroid/app/admin/PolicyValue;
.source "PackageSetPolicyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/admin/PolicyValue<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PackageSetPolicyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/app/admin/PackageSetPolicyValue$1;

    invoke-direct {v0}, Landroid/app/admin/PackageSetPolicyValue$1;-><init>()V

    sput-object v0, Landroid/app/admin/PackageSetPolicyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 40
    invoke-static {p1}, Landroid/app/admin/PackageSetPolicyValue;->readValues(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyValue;-><init>(Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxPackageNameLength(Ljava/lang/String;)V

    .line 36
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_7

    .line 37
    :cond_17
    return-void
.end method

.method private static blacklist readValues(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 5
    .param p0, "source"    # Landroid/os/Parcel;
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

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 46
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 49
    .end local v2    # "i":I
    :cond_16
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 55
    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    .line 56
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/admin/PackageSetPolicyValue;

    .line 57
    .local v0, "other":Landroid/app/admin/PackageSetPolicyValue;
    invoke-virtual {p0}, Landroid/app/admin/PackageSetPolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/admin/PackageSetPolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 55
    .end local v0    # "other":Landroid/app/admin/PackageSetPolicyValue;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 62
    invoke-virtual {p0}, Landroid/app/admin/PackageSetPolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageNameSetPolicyValue { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PackageSetPolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    invoke-virtual {p0}, Landroid/app/admin/PackageSetPolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/admin/PackageSetPolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    .end local v1    # "entry":Ljava/lang/String;
    goto :goto_17

    .line 81
    :cond_27
    return-void
.end method
