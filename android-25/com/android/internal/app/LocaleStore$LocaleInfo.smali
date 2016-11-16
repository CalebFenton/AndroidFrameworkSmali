.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# static fields
.field private static final SUGGESTION_TYPE_CFG:I = 0x2

.field private static final SUGGESTION_TYPE_NONE:I = 0x0

.field private static final SUGGESTION_TYPE_SIM:I = 0x1


# instance fields
.field private mFullCountryNameNative:Ljava/lang/String;

.field private mFullNameNative:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mIsChecked:Z

.field private mIsPseudo:Z

.field private mIsTranslated:Z

.field private mLangScriptKey:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mParent:Ljava/util/Locale;

.field private mSuggestionFlags:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z
    .locals 1
    .param p1, "suggestionMask"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    #@7
    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0
    .param p1, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@6
    .line 54
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    #@c
    .line 55
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    #@12
    .line 56
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    #@14
    .line 57
    iput v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    #@16
    .line 58
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    #@18
    .line 59
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    #@1a
    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    #@3
    return-void
.end method

.method private getLangScriptKey()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 146
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@6
    invoke-static {v1}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    #@d
    move-result-object v0

    #@e
    .line 148
    .local v0, "parentWithScript":Ljava/util/Locale;
    if-nez v0, :cond_1

    #@10
    .line 149
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@12
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 147
    :goto_0
    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    #@18
    .line 152
    .end local v0    # "parentWithScript":Ljava/util/Locale;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    #@1a
    return-object v1

    #@1b
    .line 150
    .restart local v0    # "parentWithScript":Ljava/util/Locale;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    goto :goto_0
.end method

.method private static getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 68
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 70
    :cond_0
    new-instance v0, Ljava/util/Locale$Builder;

    #@e
    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    #@11
    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    #@14
    move-result-object v0

    #@15
    .line 71
    const-string/jumbo v1, ""

    #@18
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method private isSuggestionOfType(I)Z
    .locals 2
    .param p1, "suggestionMask"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    iget-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 109
    return v0

    #@6
    .line 111
    :cond_0
    iget v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    #@8
    and-int/2addr v1, p1

    #@9
    if-ne v1, p1, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :cond_1
    return v0
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    #@0
    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    #@2
    return v0
.end method

.method getContentDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    #@0
    .prologue
    .line 164
    if-eqz p1, :cond_0

    #@2
    .line 165
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method getFullCountryNameInUiLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getFullCountryNameNative()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 124
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@6
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    #@e
    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    #@10
    return-object v0
.end method

.method public getFullNameInUiLanguage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getFullNameNative()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 117
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@6
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 116
    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    #@f
    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    #@11
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getLabel(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    #@0
    .prologue
    .line 156
    if-eqz p1, :cond_0

    #@2
    .line 157
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getParent()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method isSuggested()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    iget-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 102
    return v0

    #@6
    .line 104
    :cond_0
    iget v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    #@8
    if-eqz v1, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :cond_1
    return v0
.end method

.method public isTranslated()Z
    .locals 1

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    #@2
    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    #@2
    .line 175
    return-void
.end method

.method public setTranslated(Z)V
    .locals 0
    .param p1, "isTranslated"    # Z

    #@0
    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    #@2
    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method
