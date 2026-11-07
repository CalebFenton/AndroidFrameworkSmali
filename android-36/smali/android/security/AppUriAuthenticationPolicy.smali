.class public final Landroid/security/AppUriAuthenticationPolicy;
.super Ljava/lang/Object;
.source "AppUriAuthenticationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/AppUriAuthenticationPolicy$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/AppUriAuthenticationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_AUTHENTICATION_POLICY_APP:Ljava/lang/String; = "policy_app"

.field private static final blacklist KEY_AUTHENTICATION_POLICY_APP_TO_URIS:Ljava/lang/String; = "authentication_policy_app_to_uris"


# instance fields
.field private final blacklist mAppToUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/UrisToAliases;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy$1;

    invoke-direct {v0}, Landroid/security/AppUriAuthenticationPolicy$1;-><init>()V

    sput-object v0, Landroid/security/AppUriAuthenticationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/UrisToAliases;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "appToUris":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/security/UrisToAliases;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/security/AppUriAuthenticationPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/AppUriAuthenticationPolicy;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/AppUriAuthenticationPolicy;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 205
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy$Builder;

    invoke-direct {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;-><init>()V

    .line 206
    .local v0, "builder":Landroid/security/AppUriAuthenticationPolicy$Builder;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 208
    .local v1, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3d

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 209
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3d

    .line 210
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 211
    goto :goto_9

    .line 213
    :cond_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "authentication_policy_app_to_uris"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 214
    goto :goto_9

    .line 216
    :cond_2d
    const/4 v2, 0x0

    const-string/jumbo v4, "policy_app"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "app":Ljava/lang/String;
    invoke-static {p0}, Landroid/security/UrisToAliases;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/UrisToAliases;

    move-result-object v4

    .line 218
    .local v4, "urisToAliases":Landroid/security/UrisToAliases;
    invoke-virtual {v0, v2, v4}, Landroid/security/AppUriAuthenticationPolicy$Builder;->addAppAndUriMapping(Ljava/lang/String;Landroid/security/UrisToAliases;)Landroid/security/AppUriAuthenticationPolicy$Builder;

    .line 219
    .end local v2    # "app":Ljava/lang/String;
    .end local v4    # "urisToAliases":Landroid/security/UrisToAliases;
    goto :goto_9

    .line 220
    :cond_3d
    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;->build()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 252
    if-ne p0, p1, :cond_4

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_4
    instance-of v0, p1, Landroid/security/AppUriAuthenticationPolicy;

    if-nez v0, :cond_a

    .line 256
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/security/AppUriAuthenticationPolicy;

    .line 259
    .local v0, "other":Landroid/security/AppUriAuthenticationPolicy;
    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    iget-object v2, v0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getAliases()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    .local v0, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/UrisToAliases;

    .line 245
    .local v2, "appsToUris":Landroid/security/UrisToAliases;
    invoke-virtual {v2}, Landroid/security/UrisToAliases;->getUrisToAliases()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 246
    .end local v2    # "appsToUris":Landroid/security/UrisToAliases;
    goto :goto_f

    .line 247
    :cond_27
    return-object v0
.end method

.method public whitelist getAppAndUriMappings()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v0, "appAndUris":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Landroid/net/Uri;Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/security/UrisToAliases;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/UrisToAliases;

    invoke-virtual {v4}, Landroid/security/UrisToAliases;->getUrisToAliases()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/security/UrisToAliases;>;"
    goto :goto_f

    .line 194
    :cond_2f
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppUriAuthenticationPolicy{mPackageNameToUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

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

    .line 156
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 157
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    .local v1, "appsToUris":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/security/UrisToAliases;>;"
    const/4 v2, 0x0

    const-string v3, "authentication_policy_app_to_uris"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "policy_app"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/UrisToAliases;

    invoke-virtual {v4, p1}, Landroid/security/UrisToAliases;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 233
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    .end local v1    # "appsToUris":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/security/UrisToAliases;>;"
    goto :goto_a

    .line 235
    :cond_35
    return-void
.end method
