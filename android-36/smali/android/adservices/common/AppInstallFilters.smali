.class public final Landroid/adservices/common/AppInstallFilters;
.super Ljava/lang/Object;
.source "AppInstallFilters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AppInstallFilters$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AppInstallFilters;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PACKAGE_NAMES_FIELD_NAME:Ljava/lang/String; = "package_names"


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
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/adservices/common/AppInstallFilters$1;

    invoke-direct {v0}, Landroid/adservices/common/AppInstallFilters$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AppInstallFilters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AppInstallFilters$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/common/AppInstallFilters$Builder;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Landroid/adservices/common/AppInstallFilters$Builder;->-$$Nest$fgetmPackageNames(Landroid/adservices/common/AppInstallFilters$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AppInstallFilters$Builder;Landroid/adservices/common/AppInstallFilters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AppInstallFilters;-><init>(Landroid/adservices/common/AppInstallFilters$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lcom/android/adservices/AdServicesParcelableUtil;->readStringSetFromParcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AppInstallFilters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AppInstallFilters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/AppInstallFilters;
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    const-string v0, "package_names"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 137
    .local v0, "serializedPackageNames":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 139
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 140
    .local v3, "packageName":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 141
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "packageName":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 143
    .restart local v3    # "packageName":Ljava/lang/Object;
    :cond_23
    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Found non-string package name when de-serializing AppInstallFilters"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    .end local v2    # "i":I
    .end local v3    # "packageName":Ljava/lang/Object;
    :cond_2b
    new-instance v2, Landroid/adservices/common/AppInstallFilters$Builder;

    invoke-direct {v2}, Landroid/adservices/common/AppInstallFilters$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/adservices/common/AppInstallFilters$Builder;->setPackageNames(Ljava/util/Set;)Landroid/adservices/common/AppInstallFilters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/adservices/common/AppInstallFilters$Builder;->build()Landroid/adservices/common/AppInstallFilters;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 166
    :cond_4
    instance-of v0, p1, Landroid/adservices/common/AppInstallFilters;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/adservices/common/AppInstallFilters;

    .line 168
    .local v0, "that":Landroid/adservices/common/AppInstallFilters;
    iget-object v1, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    iget-object v2, v0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getPackageNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getSizeInBytes()I
    .registers 5

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "totalSize":I
    iget-object v1, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "packageName":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 107
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_7

    .line 108
    :cond_1c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v0, "toReturn":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 120
    .local v1, "packageNames":Lorg/json/JSONArray;
    iget-object v2, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_10

    .line 123
    :cond_20
    const-string v2, "package_names"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInstallFilters{mPackageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Landroid/adservices/common/AppInstallFilters;->mPackageNames:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->writeStringSetToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 154
    return-void
.end method
