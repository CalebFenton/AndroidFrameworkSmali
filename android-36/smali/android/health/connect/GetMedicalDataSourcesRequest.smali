.class public final Landroid/health/connect/GetMedicalDataSourcesRequest;
.super Ljava/lang/Object;
.source "GetMedicalDataSourcesRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/GetMedicalDataSourcesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PACKAGE_NAME_REGEX:Ljava/lang/String; = "^([A-Za-z][a-zA-Z0-9_]*\\.)+[A-Za-z][a-zA-Z0-9_]*$"


# instance fields
.field private final blacklist mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidatePackageNames(Ljava/util/Set;)V
    .registers 1

    invoke-static {p0}, Landroid/health/connect/GetMedicalDataSourcesRequest;->validatePackageNames(Ljava/util/Set;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/health/connect/GetMedicalDataSourcesRequest$1;

    invoke-direct {v0}, Landroid/health/connect/GetMedicalDataSourcesRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/GetMedicalDataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    .line 88
    iget-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Landroid/health/connect/GetMedicalDataSourcesRequest;->validatePackageNames(Ljava/util/Set;)V

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/GetMedicalDataSourcesRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/GetMedicalDataSourcesRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Landroid/health/connect/GetMedicalDataSourcesRequest;->validatePackageNames(Ljava/util/Set;)V

    .line 78
    iput-object p1, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Landroid/health/connect/GetMedicalDataSourcesRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/GetMedicalDataSourcesRequest;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method private static blacklist validatePackageNames(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "^([A-Za-z][a-zA-Z0-9_]*\\.)+[A-Za-z][a-zA-Z0-9_]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 110
    .local v0, "pattern":Ljava/util/regex/Pattern;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v1, "invalidPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 113
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_28

    .line 114
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_28
    goto :goto_f

    .line 117
    :cond_29
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 120
    return-void

    .line 118
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package name(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 134
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 135
    :cond_4
    instance-of v0, p1, Landroid/health/connect/GetMedicalDataSourcesRequest;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/health/connect/GetMedicalDataSourcesRequest;

    .line 136
    .local v0, "that":Landroid/health/connect/GetMedicalDataSourcesRequest;
    iget-object v1, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    iget-object v2, v0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 135
    .end local v0    # "that":Landroid/health/connect/GetMedicalDataSourcesRequest;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "packageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/GetMedicalDataSourcesRequest;->mPackageNames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 130
    return-void
.end method
