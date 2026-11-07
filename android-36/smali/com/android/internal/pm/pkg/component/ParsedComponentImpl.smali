.class public abstract Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.super Ljava/lang/Object;
.source "ParsedComponentImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedComponent;
.implements Landroid/os/Parcelable;


# instance fields
.field private blacklist banner:I

.field private blacklist componentName:Landroid/content/ComponentName;

.field private blacklist descriptionRes:I

.field private blacklist flags:I

.field private blacklist icon:I

.field private blacklist intents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist labelRes:I

.field private blacklist logo:I

.field private blacklist mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist metaData:Landroid/os/Bundle;

.field private blacklist name:Ljava/lang/String;

.field private blacklist nonLocalizedLabel:Ljava/lang/CharSequence;

.field private blacklist packageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    .line 82
    nop

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    .line 87
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    .line 82
    nop

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    .line 176
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 178
    .local v0, "boot":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->icon:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->logo:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->banner:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->flags:I

    .line 187
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    .line 188
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    .line 191
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    .line 82
    nop

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    .line 90
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    .line 91
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    .line 92
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIcon()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->icon:I

    .line 93
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    .line 94
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 95
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->logo:I

    .line 96
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->banner:I

    .line 97
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    .line 98
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->flags:I

    .line 99
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    iget-object v1, v1, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    .line 103
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    return-void
.end method


# virtual methods
.method public blacklist addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V
    .registers 3
    .param p1, "intent"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 107
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    .line 108
    return-void
.end method

.method public blacklist addProperty(Landroid/content/pm/PackageManager$Property;)V
    .registers 4
    .param p1, "property"    # Landroid/content/pm/PackageManager$Property;

    .line 114
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBanner()I
    .registers 2

    .line 235
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->banner:I

    return v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_13

    .line 136
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    .line 138
    :cond_13
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getDescriptionRes()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 245
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->flags:I

    return v0
.end method

.method public blacklist getIcon()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->icon:I

    return v0
.end method

.method public blacklist getIntents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getLabelRes()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    return v0
.end method

.method public blacklist getLogo()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->logo:I

    return v0
.end method

.method public blacklist getMetaData()Landroid/os/Bundle;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    :goto_9
    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist setBanner(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 284
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->banner:I

    .line 285
    return-object p0
.end method

.method public blacklist setDescriptionRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 290
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    .line 291
    return-object p0
.end method

.method public blacklist setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 296
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->flags:I

    .line 297
    return-object p0
.end method

.method public blacklist setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 260
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->icon:I

    .line 261
    return-object p0
.end method

.method public blacklist setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 266
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    .line 267
    return-object p0
.end method

.method public blacklist setLogo(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 278
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->logo:I

    .line 279
    return-object p0
.end method

.method public blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # Landroid/os/Bundle;

    .line 302
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    .line 303
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 272
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 273
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    .line 130
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getLabelRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getLogo()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getBanner()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getDescriptionRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 172
    return-void
.end method
