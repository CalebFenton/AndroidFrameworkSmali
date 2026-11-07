.class public final Landroid/app/admin/AccountTypePolicyKey;
.super Landroid/app/admin/PolicyKey;
.source "AccountTypePolicyKey.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist ATTR_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/AccountTypePolicyKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccountType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/app/admin/AccountTypePolicyKey$1;

    invoke-direct {v0}, Landroid/app/admin/AccountTypePolicyKey$1;-><init>()V

    sput-object v0, Landroid/app/admin/AccountTypePolicyKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/AccountTypePolicyKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v0, "accountType"

    invoke-static {p2, v0}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 116
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 117
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/AccountTypePolicyKey;

    .line 118
    .local v2, "other":Landroid/app/admin/AccountTypePolicyKey;
    invoke-virtual {p0}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 118
    :goto_2f
    return v0

    .line 116
    .end local v2    # "other":Landroid/app/admin/AccountTypePolicyKey;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getAccountType()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 124
    invoke-virtual {p0}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/AccountTypePolicyKey;
    .registers 5
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-string/jumbo v0, "policy-identifier"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "policyKey":Ljava/lang/String;
    const-string v2, "account-type"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "accountType":Ljava/lang/String;
    new-instance v2, Landroid/app/admin/AccountTypePolicyKey;

    invoke-direct {v2, v0, v1}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
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

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/admin/AccountTypePolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/AccountTypePolicyKey;

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

    .line 86
    const-string/jumbo v0, "policy-identifier"

    invoke-virtual {p0}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v0, "account-type"

    iget-object v1, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountTypePolicyKey{mPolicyKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mAccountType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

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

    .line 107
    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "extraPolicyParams":Landroid/os/Bundle;
    const-string v1, "android.app.admin.extra.ACCOUNT_TYPE"

    iget-object v2, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    invoke-virtual {p0}, Landroid/app/admin/AccountTypePolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/app/admin/AccountTypePolicyKey;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
