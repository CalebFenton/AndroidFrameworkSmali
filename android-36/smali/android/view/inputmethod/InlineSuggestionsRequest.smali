.class public final Landroid/view/inputmethod/InlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;,
        Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IME_AUTOFILL_DEFAULT_SUPPORTED_LOCALES_IS_EMPTY:J = 0xa16e6eeL

.field public static final whitelist SUGGESTION_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHostDisplayId:I

.field private blacklist mHostInputToken:Landroid/os/IBinder;

.field private blacklist mHostPackageName:Ljava/lang/String;

.field private final blacklist mInlinePresentationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private final blacklist mMaxSuggestionCount:I

.field private blacklist mSupportedLocales:Landroid/os/LocaleList;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHostDisplayId()I
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostDisplayId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHostInputToken()Landroid/os/IBinder;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostInputToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHostPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultMaxSuggestionCount()I
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultMaxSuggestionCount()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSupportedLocales()Landroid/os/LocaleList;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 470
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsRequest$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/lang/String;Landroid/os/LocaleList;Landroid/os/Bundle;Landroid/os/IBinder;ILandroid/widget/inline/InlinePresentationSpec;)V
    .registers 12
    .param p1, "maxSuggestionCount"    # I
    .param p3, "hostPackageName"    # Ljava/lang/String;
    .param p4, "supportedLocales"    # Landroid/os/LocaleList;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "hostInputToken"    # Landroid/os/IBinder;
    .param p7, "hostDisplayId"    # I
    .param p8, "inlineTooltipPresentationSpec"    # Landroid/widget/inline/InlinePresentationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/LocaleList;",
            "Landroid/os/Bundle;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ")V"
        }
    .end annotation

    .line 241
    .local p2, "inlinePresentationSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    .line 243
    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    .line 244
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 246
    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    .line 247
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 249
    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    .line 250
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 252
    iput-object p5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    .line 253
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 255
    iput-object p6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    .line 256
    iput p7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    .line 257
    iput-object p8, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 259
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->onConstructed()V

    .line 260
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .local v0, "flg":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 440
    .local v1, "maxSuggestionCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, "inlinePresentationSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    const-class v3, Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "hostPackageName":Ljava/lang/String;
    sget-object v4, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/LocaleList;

    .line 444
    .local v4, "supportedLocales":Landroid/os/LocaleList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 445
    .local v5, "extras":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->unparcelHostInputToken(Landroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v6

    .line 446
    .local v6, "hostInputToken":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 447
    .local v7, "hostDisplayId":I
    and-int/lit16 v8, v0, 0x80

    const/4 v9, 0x0

    if-nez v8, :cond_38

    move-object v8, v9

    goto :goto_40

    :cond_38
    sget-object v8, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/inline/InlinePresentationSpec;

    .line 449
    .local v8, "inlineTooltipPresentationSpec":Landroid/widget/inline/InlinePresentationSpec;
    :goto_40
    iput v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    .line 450
    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    .line 451
    const-class v10, Landroid/annotation/NonNull;

    iget-object v11, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v10, v9, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 453
    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    .line 454
    const-class v10, Landroid/annotation/NonNull;

    iget-object v11, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v10, v9, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 456
    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    .line 457
    const-class v10, Landroid/annotation/NonNull;

    iget-object v11, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v10, v9, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 459
    iput-object v5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    .line 460
    const-class v10, Landroid/annotation/NonNull;

    iget-object v11, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v10, v9, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 462
    iput-object v6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    .line 463
    iput v7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    .line 464
    iput-object v8, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 466
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->onConstructed()V

    .line 467
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    return-void
.end method

.method private static blacklist defaultExtras()Landroid/os/Bundle;
    .registers 1

    .line 204
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist defaultHostDisplayId()I
    .registers 1

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultHostInputToken()Landroid/os/IBinder;
    .registers 1

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultHostPackageName()Ljava/lang/String;
    .registers 1

    .line 170
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist defaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .registers 1

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultMaxSuggestionCount()I
    .registers 1

    .line 166
    const v0, 0x7fffffff

    return v0
.end method

.method private static blacklist defaultSupportedLocales()Landroid/os/LocaleList;
    .registers 2

    .line 186
    const-wide/32 v0, 0xa16e6ee

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 187
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 189
    :cond_e
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private blacklist extrasEquals(Landroid/os/Bundle;)Z
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private blacklist onConstructed()V
    .registers 4

    .line 144
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 145
    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 146
    return-void
.end method

.method private blacklist parcelHostInputToken(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    return-void
.end method

.method private blacklist unparcelHostInputToken(Landroid/os/Parcel;)Landroid/os/IBinder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 373
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 374
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5e

    .line 376
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 378
    .local v2, "that":Landroid/view/inputmethod/InlineSuggestionsRequest;
    iget v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iget v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    .line 380
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    .line 381
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    .line 382
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    .line 383
    invoke-direct {p0, v3}, Landroid/view/inputmethod/InlineSuggestionsRequest;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    .line 384
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    iget v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 386
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    .line 378
    :goto_5d
    return v0

    .line 374
    .end local v2    # "that":Landroid/view/inputmethod/InlineSuggestionsRequest;
    :cond_5e
    :goto_5e
    return v1
.end method

.method public blacklist filterContentTypes()V
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 157
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->filterContentTypes()V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 160
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    if-eqz v0, :cond_25

    .line 161
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->filterContentTypes()V

    .line 163
    :cond_25
    return-void
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getHostDisplayId()I
    .registers 2

    .line 337
    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    return v0
.end method

.method public blacklist getHostInputToken()Landroid/os/IBinder;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getHostPackageName()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInlinePresentationSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    return-object v0
.end method

.method public whitelist getMaxSuggestionCount()I
    .registers 2

    .line 271
    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    return v0
.end method

.method public whitelist getSupportedLocales()Landroid/os/LocaleList;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 395
    const/4 v0, 0x1

    .line 396
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    add-int/2addr v1, v2

    .line 397
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 398
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 399
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 400
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 401
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 402
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    add-int/2addr v1, v2

    .line 403
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 404
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public blacklist setHostDisplayId(I)V
    .registers 2
    .param p1, "hostDisplayId"    # I

    .line 140
    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    .line 141
    return-void
.end method

.method public blacklist setHostInputToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "hostInputToken"    # Landroid/os/IBinder;

    .line 118
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    .line 119
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionsRequest { maxSuggestionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlinePresentationSpecs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedLocales = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostInputToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineTooltipPresentationSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "flg":I
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 415
    :cond_7
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x80

    .line 416
    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 419
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 421
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 422
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->parcelHostInputToken(Landroid/os/Parcel;I)V

    .line 423
    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    :cond_3a
    return-void
.end method
