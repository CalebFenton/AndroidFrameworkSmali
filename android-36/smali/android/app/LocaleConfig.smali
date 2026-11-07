.class public Landroid/app/LocaleConfig;
.super Ljava/lang/Object;
.source "LocaleConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocaleConfig$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/LocaleConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_NOT_SPECIFIED:I = 0x1

.field public static final whitelist STATUS_PARSING_FAILED:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "LocaleConfig"

.field public static final whitelist TAG_LOCALE:Ljava/lang/String; = "locale"

.field public static final whitelist TAG_LOCALE_CONFIG:Ljava/lang/String; = "locale-config"


# instance fields
.field private blacklist mDefaultLocale:Ljava/util/Locale;

.field private blacklist mLocales:Landroid/os/LocaleList;

.field private blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Landroid/app/LocaleConfig$1;

    invoke-direct {v0}, Landroid/app/LocaleConfig$1;-><init>()V

    sput-object v0, Landroid/app/LocaleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;Z)V

    .line 113
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowOverride"    # Z

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 131
    const-string v1, "LocaleConfig"

    if-eqz p2, :cond_34

    .line 132
    const-class v2, Landroid/app/LocaleManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocaleManager;

    .line 133
    .local v2, "localeManager":Landroid/app/LocaleManager;
    if-nez v2, :cond_1c

    .line 134
    const-string v3, "LocaleManager is null, cannot get the override LocaleConfig"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 136
    return-void

    .line 138
    :cond_1c
    invoke-virtual {v2}, Landroid/app/LocaleManager;->getOverrideLocaleConfig()Landroid/app/LocaleConfig;

    move-result-object v3

    .line 139
    .local v3, "localeConfig":Landroid/app/LocaleConfig;
    if-eqz v3, :cond_34

    .line 140
    const-string v0, "Has the override LocaleConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v3}, Landroid/app/LocaleConfig;->getStatus()I

    move-result v0

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 142
    invoke-virtual {v3}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 143
    return-void

    .line 146
    .end local v2    # "localeManager":Landroid/app/LocaleManager;
    .end local v3    # "localeConfig":Landroid/app/LocaleConfig;
    :cond_34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 147
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getLocaleConfigRes()I

    move-result v3

    .line 148
    .local v3, "resId":I
    if-nez v3, :cond_45

    .line 149
    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 150
    return-void

    .line 152
    :cond_45
    :try_start_45
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_49} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_49} :catch_5e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_5e

    .line 153
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_49
    invoke-direct {p0, v4, v2}, Landroid/app/LocaleConfig;->parseLocaleConfig(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_52

    .line 154
    if-eqz v4, :cond_85

    :try_start_4e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_51
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_51} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_51} :catch_5e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5e

    goto :goto_85

    .line 152
    :catchall_52
    move-exception v5

    if-eqz v4, :cond_5d

    :try_start_55
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v6

    :try_start_5a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    .end local p0    # "this":Landroid/app/LocaleConfig;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "allowOverride":Z
    :cond_5d
    :goto_5d
    throw v5
    :try_end_5e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5a .. :try_end_5e} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_5e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_5e

    .line 157
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "resId":I
    .restart local p0    # "this":Landroid/app/LocaleConfig;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "allowOverride":Z
    :catch_5e
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse XML configuration from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v1, 0x2

    iput v1, p0, Landroid/app/LocaleConfig;->mStatus:I

    goto :goto_86

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7d
    move-exception v4

    .line 155
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "The resource file pointed to by the given resource ID isn\'t found."

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 161
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_85
    :goto_85
    nop

    .line 162
    :goto_86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/LocaleList;)V
    .registers 3
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 181
    iput-object p1, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 182
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 193
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 194
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/LocaleConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/LocaleConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/app/LocaleConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private blacklist parseLocaleConfig(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 201
    const-string/jumbo v0, "locale-config"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 202
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 203
    .local v0, "outerDepth":I
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 205
    .local v1, "attrs":Landroid/util/AttributeSet;
    const/4 v2, 0x0

    .line 206
    .local v2, "defaultLocale":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Flags;->defaultLocale()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    .line 208
    sget-object v3, Lcom/android/internal/R$styleable;->LocaleConfig:[I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 210
    .local v3, "att":Landroid/content/res/TypedArray;
    :try_start_1c
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_27

    move-object v2, v5

    .line 212
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V

    goto :goto_33

    .line 208
    :catchall_27
    move-exception v4

    if-eqz v3, :cond_32

    :try_start_2a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v4

    .line 215
    .end local v3    # "att":Landroid/content/res/TypedArray;
    :cond_33
    :goto_33
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 216
    .local v3, "localeNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_38
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 217
    const-string/jumbo v5, "locale"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 218
    sget-object v5, Lcom/android/internal/R$styleable;->LocaleConfig_Locale:[I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 220
    .local v5, "attributes":Landroid/content/res/TypedArray;
    :try_start_51
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "nameAttr":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_5f

    .line 223
    nop

    .end local v6    # "nameAttr":Ljava/lang/String;
    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->close()V

    .line 218
    .end local v5    # "attributes":Landroid/content/res/TypedArray;
    :cond_5e
    goto :goto_38

    .restart local v5    # "attributes":Landroid/content/res/TypedArray;
    :catchall_5f
    move-exception v4

    if-eqz v5, :cond_6a

    :try_start_62
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v4

    .line 225
    .end local v5    # "attributes":Landroid/content/res/TypedArray;
    :cond_6b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_38

    .line 228
    :cond_6f
    iput v4, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 229
    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 230
    if-eqz v2, :cond_a7

    .line 231
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 232
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Landroid/app/LocaleConfig;->mDefaultLocale:Ljava/util/Locale;

    goto :goto_a7

    .line 234
    :cond_8c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default locale specified that is not contained in the list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LocaleConfig"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, 0x2

    iput v4, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 239
    :cond_a7
    :goto_a7
    return-void
.end method


# virtual methods
.method public blacklist containsLocale(Ljava/util/Locale;)Z
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 358
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 359
    return v1

    .line 362
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 363
    iget-object v2, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 364
    const/4 v1, 0x1

    return v1

    .line 362
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 368
    .end local v0    # "i":I
    :cond_20
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultLocale()Ljava/util/Locale;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/app/LocaleConfig;->mDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    return v0
.end method

.method public whitelist getSupportedLocales()Landroid/os/LocaleList;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public blacklist isSameLocaleConfig(Landroid/app/LocaleConfig;)Z
    .registers 6
    .param p1, "other"    # Landroid/app/LocaleConfig;

    .line 323
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 324
    return v0

    .line 327
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 328
    iget v2, p0, Landroid/app/LocaleConfig;->mStatus:I

    iget v3, p1, Landroid/app/LocaleConfig;->mStatus:I

    if-eq v2, v3, :cond_e

    .line 329
    return v1

    .line 331
    :cond_e
    iget-object v2, p1, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 332
    .local v2, "otherLocales":Landroid/os/LocaleList;
    iget-object v3, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    if-nez v3, :cond_17

    if-nez v2, :cond_17

    .line 333
    return v0

    .line 334
    :cond_17
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_45

    if-eqz v2, :cond_45

    .line 335
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "hostStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 337
    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "targetStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 339
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 340
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 344
    .end local v0    # "hostStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "targetStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "otherLocales":Landroid/os/LocaleList;
    :cond_45
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 293
    iget v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    return-void
.end method
