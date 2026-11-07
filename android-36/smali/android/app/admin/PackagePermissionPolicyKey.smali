.class public final Landroid/app/admin/PackagePermissionPolicyKey;
.super Landroid/app/admin/PolicyKey;
.source "PackagePermissionPolicyKey.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final blacklist ATTR_PERMISSION_NAME:Ljava/lang/String; = "permission-name"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PackagePermissionPolicyKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPermissionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/app/admin/PackagePermissionPolicyKey$1;

    invoke-direct {v0}, Landroid/app/admin/PackagePermissionPolicyKey$1;-><init>()V

    sput-object v0, Landroid/app/admin/PackagePermissionPolicyKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/PackagePermissionPolicyKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p2}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxPackageNameLength(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "permissionName"

    invoke-static {p3, v0}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 137
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 138
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 139
    .local v2, "other":Landroid/app/admin/PackagePermissionPolicyKey;
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 139
    :goto_39
    return v0

    .line 137
    .end local v2    # "other":Landroid/app/admin/PackagePermissionPolicyKey;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissionName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 146
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePermissionPolicyKey;
    .registers 6
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const-string/jumbo v0, "policy-identifier"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "identifier":Ljava/lang/String;
    const-string/jumbo v2, "package-name"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "permission-name"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "permissionName":Ljava/lang/String;
    new-instance v3, Landroid/app/admin/PackagePermissionPolicyKey;

    invoke-direct {v3, v0, v2, v1}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/admin/PackagePermissionPolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePermissionPolicyKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const-string/jumbo v0, "policy-identifier"

    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string/jumbo v0, "package-name"

    iget-object v1, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string/jumbo v0, "permission-name"

    iget-object v1, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermissionPolicyKey{mIdentifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mPackageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mPermissionName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToBundle(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 127
    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "extraPolicyParams":Landroid/os/Bundle;
    const-string v1, "android.app.admin.extra.PACKAGE_NAME"

    iget-object v2, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "android.app.admin.extra.PERMISSION_NAME"

    iget-object v2, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return-void
.end method
