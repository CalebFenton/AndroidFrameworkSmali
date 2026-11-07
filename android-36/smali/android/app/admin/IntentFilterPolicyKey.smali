.class public final Landroid/app/admin/IntentFilterPolicyKey;
.super Landroid/app/admin/PolicyKey;
.source "IntentFilterPolicyKey.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/IntentFilterPolicyKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "IntentFilterPolicyKey"

.field private static final blacklist TAG_INTENT_FILTER_ENTRY:Ljava/lang/String; = "filter"


# instance fields
.field private final blacklist mFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Landroid/app/admin/IntentFilterPolicyKey$1;

    invoke-direct {v0}, Landroid/app/admin/IntentFilterPolicyKey$1;-><init>()V

    sput-object v0, Landroid/app/admin/IntentFilterPolicyKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 75
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/IntentFilterPolicyKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 61
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    .line 63
    return-void
.end method

.method private blacklist readIntentFilterFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/IntentFilter;
    .registers 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 112
    .local v0, "outerDepth":I
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    const-string v2, "IntentFilterPolicyKey"

    if-eqz v1, :cond_38

    .line 113
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "filter"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 115
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 117
    return-object v2

    .line 119
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v1    # "tag":Ljava/lang/String;
    goto :goto_4

    .line 121
    :cond_38
    const-string v1, "Error parsing IntentFilterPolicyKey, IntentFilter not found"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    return-object v1
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

    .line 138
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 139
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 140
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/IntentFilterPolicyKey;

    .line 141
    .local v2, "other":Landroid/app/admin/IntentFilterPolicyKey;
    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    iget-object v4, v2, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    .line 142
    invoke-static {v3, v4}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 141
    :goto_2f
    return v0

    .line 139
    .end local v2    # "other":Landroid/app/admin/IntentFilterPolicyKey;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 147
    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/IntentFilterPolicyKey;
    .registers 5
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    const-string/jumbo v1, "policy-identifier"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "identifier":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/app/admin/IntentFilterPolicyKey;->readIntentFilterFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 105
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/app/admin/IntentFilterPolicyKey;

    invoke-direct {v2, v0, v1}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

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

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/admin/IntentFilterPolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/IntentFilterPolicyKey;

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

    .line 91
    const-string/jumbo v0, "policy-identifier"

    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v0, "filter"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-object v1, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 94
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentFilterPolicyKey{mKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mFilter= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 130
    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "extraPolicyParams":Landroid/os/Bundle;
    const-string v1, "android.app.admin.extra.INTENT_FILTER"

    iget-object v2, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    const-string v1, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/app/admin/IntentFilterPolicyKey;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    return-void
.end method
