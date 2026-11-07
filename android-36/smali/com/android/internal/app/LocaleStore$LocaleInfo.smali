.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo$SuggestionType;
    }
.end annotation


# static fields
.field public static final blacklist SUGGESTION_TYPE_CFG:I = 0x2

.field public static final blacklist SUGGESTION_TYPE_CURRENT:I = 0x4

.field public static final blacklist SUGGESTION_TYPE_IME_LANGUAGE:I = 0x20

.field public static final blacklist SUGGESTION_TYPE_NONE:I = 0x0

.field public static final blacklist SUGGESTION_TYPE_OTHER_APP_LANGUAGE:I = 0x10

.field public static final blacklist SUGGESTION_TYPE_SIM:I = 0x1

.field public static final blacklist SUGGESTION_TYPE_SYSTEM_AVAILABLE_LANGUAGE:I = 0x40

.field public static final blacklist SUGGESTION_TYPE_SYSTEM_LANGUAGE:I = 0x8


# instance fields
.field private blacklist mFullCountryNameNative:Ljava/lang/String;

.field private blacklist mFullNameNative:Ljava/lang/String;

.field private blacklist mHasNumberingSystems:Z

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsChecked:Z

.field private blacklist mIsPseudo:Z

.field private blacklist mIsTranslated:Z

.field private blacklist mLangScriptKey:Ljava/lang/String;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mParent:Ljava/util/Locale;

.field public blacklist mSuggestionFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 3
    .param p1, "localeInfo"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    .line 124
    iget-boolean v0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 126
    iget v0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 128
    iget-boolean v0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "localeId"    # Ljava/lang/String;

    .line 117
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 107
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 111
    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private blacklist getLangScriptKey()Ljava/lang/String;
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 246
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 248
    const/16 v1, 0x75

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 250
    .local v0, "baseLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 251
    .local v1, "parentWithScript":Ljava/util/Locale;
    nop

    .line 252
    if-nez v1, :cond_2d

    .line 253
    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    .line 254
    :cond_2d
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_31
    iput-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    .line 256
    .end local v0    # "baseLocale":Ljava/util/Locale;
    .end local v1    # "parentWithScript":Ljava/util/Locale;
    :cond_33
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 132
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_c
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 136
    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 137
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 138
    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 135
    return-object v0
.end method


# virtual methods
.method public blacklist extendSuggestionOfType(I)V
    .registers 3
    .param p1, "suggestionMask"    # I

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    if-nez v0, :cond_5

    .line 205
    return-void

    .line 207
    :cond_5
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 208
    return-void
.end method

.method public blacklist getChecked()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return v0
.end method

.method blacklist getContentDescription(Z)Ljava/lang/String;
    .registers 3
    .param p1, "countryMode"    # Z

    .line 272
    if-eqz p1, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameInUiLanguage()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFullCountryNameNative()Ljava/lang/String;
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    .line 224
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getFullNameInUiLanguage()Ljava/lang/String;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    .line 241
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getFullNameNative()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    .line 214
    .local v0, "locale":Ljava/util/Locale;
    nop

    .line 215
    const/4 v1, 0x1

    invoke-static {v0, v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    .line 217
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getId()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getLabel(Z)Ljava/lang/String;
    .registers 3
    .param p1, "countryMode"    # Z

    .line 260
    if-eqz p1, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLocale()Ljava/util/Locale;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method blacklist getNumberingSystem()Ljava/lang/String;
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayNumberingSystemKeyValue(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParent()Ljava/util/Locale;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist hasNumberingSystems()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    return v0
.end method

.method public blacklist isAppCurrentLocale()Z
    .registers 2

    .line 288
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isInCurrentSystemLocales()Z
    .registers 2

    .line 296
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSuggested()Z
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 180
    return v1

    .line 182
    :cond_6
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public blacklist isSuggestionOfType(I)Z
    .registers 4
    .param p1, "suggestionMask"    # I

    .line 192
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 193
    return v1

    .line 195
    :cond_6
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public blacklist isSystemLocale()Z
    .registers 2

    .line 292
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isTranslated()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return v0
.end method

.method public blacklist setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .line 284
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 285
    return-void
.end method

.method public blacklist setTranslated(Z)V
    .registers 2
    .param p1, "isTranslated"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 176
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method
