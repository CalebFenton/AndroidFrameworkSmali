.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final greylist-max-o EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final greylist-max-o EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final greylist-max-o LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field public static final greylist-max-o SUBTYPE_ID_NONE:I = 0x0

.field private static final blacklist SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final blacklist UNDEFINED_LANGUAGE_TAG:Ljava/lang/String; = "und"


# instance fields
.field private volatile blacklist mCachedCanonicalizedLanguageTag:Ljava/lang/String;

.field private volatile greylist-max-o mCachedLocaleObj:Ljava/util/Locale;

.field private volatile greylist-max-o mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsAsciiCapable:Z

.field private final greylist-max-o mIsAuxiliary:Z

.field private final blacklist mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

.field private final blacklist mLayoutLabelResId:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mOverridesImplicitlyEnabledSubtype:Z

.field private final blacklist mPkLanguageTag:Ljava/lang/String;

.field private final blacklist mPkLayoutType:Ljava/lang/String;

.field private final greylist-max-o mSubtypeExtraValue:Ljava/lang/String;

.field private final greylist-max-o mSubtypeHashCode:I

.field private final greylist-max-o mSubtypeIconResId:I

.field private final greylist-max-o mSubtypeId:I

.field private final greylist-max-o mSubtypeLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mSubtypeLocale:Ljava/lang/String;

.field private final greylist-max-o mSubtypeMode:Ljava/lang/String;

.field private final blacklist mSubtypeNameOverride:Ljava/lang/CharSequence;

.field private final greylist-max-o mSubtypeNameResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    .line 932
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 17
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 365
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 18
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z
    .param p8, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    const/4 v8, 0x0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    .line 403
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 438
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 439
    .local v0, "cs":Ljava/lang/CharSequence;
    const-string v1, ""

    if-eqz v0, :cond_1e

    move-object v2, v0

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    :goto_1f
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    .line 441
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    .line 442
    if-eqz v0, :cond_34

    move-object v2, v0

    goto :goto_35

    :cond_34
    move-object v2, v1

    :goto_35
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_3f

    move-object v3, v2

    goto :goto_40

    :cond_3f
    move-object v3, v1

    :goto_40
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_4a

    move-object v3, v2

    goto :goto_4b

    :cond_4a
    move-object v3, v1

    :goto_4b
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    if-eqz v2, :cond_5b

    move-object v3, v2

    goto :goto_5c

    :cond_5b
    move-object v3, v1

    :goto_5c
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_66

    move-object v3, v2

    goto :goto_67

    :cond_66
    move-object v3, v1

    :goto_67
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    if-eqz v2, :cond_71

    move-object v3, v2

    goto :goto_72

    :cond_71
    move-object v3, v1

    :goto_72
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_7b

    move-object v1, v2

    :cond_7b
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_87

    move v1, v4

    goto :goto_88

    :cond_87
    move v1, v3

    :goto_88
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_92

    move v1, v4

    goto :goto_93

    :cond_92
    move v1, v3

    :goto_93
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_a8

    move v3, v4

    :cond_a8
    iput-boolean v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 461
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .registers 9
    .param p1, "builder"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    .line 410
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 411
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeNameOverride(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 412
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmLayoutLabelResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    .line 413
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmLayoutLabelNonLocalized(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    .line 414
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmPkLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmPkLayoutType(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    .line 416
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 417
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 418
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 420
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 421
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 422
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 423
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 424
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 427
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_6d

    .line 428
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    goto :goto_7f

    .line 430
    :cond_6d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    iget-boolean v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 433
    :goto_7f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    return-void
.end method

.method private static greylist-max-o getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 10
    .param p0, "nameId"    # I
    .param p1, "iconId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "isAuxiliary"    # Z
    .param p6, "overridesImplicitlyEnabledSubtype"    # Z
    .param p7, "id"    # I
    .param p8, "isAsciiCapable"    # Z

    .line 340
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 341
    .local v0, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 342
    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 343
    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 344
    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 345
    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 346
    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 347
    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 348
    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 349
    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 350
    return-object v0
.end method

.method private greylist-max-o getExtraValueHashMap()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 808
    monitor-enter p0

    .line 809
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 810
    .local v0, "extraValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 811
    monitor-exit p0

    return-object v0

    .line 813
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 814
    .end local v0    # "extraValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "extraValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "pairs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_44

    .line 816
    aget-object v3, v0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 817
    .local v3, "pair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2c

    .line 818
    aget-object v4, v3, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 819
    :cond_2c
    array-length v4, v3

    if-le v4, v6, :cond_41

    .line 820
    array-length v4, v3

    const/4 v7, 0x2

    if-le v4, v7, :cond_3a

    .line 821
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    const-string v7, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_3a
    aget-object v4, v3, v5

    aget-object v5, v3, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 826
    .end local v2    # "i":I
    :cond_44
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 827
    monitor-exit p0

    return-object v1

    .line 828
    .end local v0    # "pairs":[Ljava/lang/String;
    .end local v1    # "extraValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private static greylist-max-o getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 6
    .param p0, "displayLocale"    # Ljava/util/Locale;
    .param p1, "localeToDisplay"    # Ljava/util/Locale;
    .param p2, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 797
    if-nez p1, :cond_5

    .line 798
    const-string v0, ""

    return-object v0

    .line 801
    :cond_5
    if-eqz p0, :cond_9

    move-object v0, p0

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 802
    .local v0, "nonNullDisplayLocale":Ljava/util/Locale;
    :goto_d
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 803
    invoke-static {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    .line 804
    invoke-virtual {v1, p1}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 802
    return-object v1
.end method

.method private static greylist-max-o getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 773
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 774
    return-object v0

    .line 776
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_b

    .line 777
    return-object v0

    .line 779
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 780
    .local v1, "configuration":Landroid/content/res/Configuration;
    if-nez v1, :cond_16

    .line 781
    return-object v0

    .line 783
    :cond_16
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .registers 14
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "extraValue"    # Ljava/lang/String;
    .param p3, "isAuxiliary"    # Z
    .param p4, "overridesImplicitlyEnabledSubtype"    # Z
    .param p5, "isAsciiCapable"    # Z

    .line 950
    xor-int/lit8 v0, p5, 0x1

    .line 951
    .local v0, "needsToCalculateCompatibleHashCode":Z
    if-eqz v0, :cond_15

    .line 952
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 953
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, p1, p2, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 952
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 955
    :cond_15
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 956
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "locale":Ljava/lang/String;
    .end local p1    # "mode":Ljava/lang/String;
    .end local p2    # "extraValue":Ljava/lang/String;
    .local v2, "locale":Ljava/lang/String;
    .local v3, "mode":Ljava/lang/String;
    .local v4, "extraValue":Ljava/lang/String;
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 955
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static blacklist sort(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 968
    .local p1, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-nez p0, :cond_3

    return-object p1

    .line 969
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 971
    .local v0, "inputSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v1, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 973
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_27

    .line 974
    invoke-virtual {p0, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 975
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 976
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 973
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 982
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 983
    .restart local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2b

    .line 985
    :cond_3b
    return-object v1
.end method


# virtual methods
.method public whitelist containsExtraValueKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 838
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSubtypeNameOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLayoutLabelNonLocalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPkLanguageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPkLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeLanguageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsAuxiliary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOverridesImplicitlyEnabledSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsAsciiCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 874
    instance-of v0, p1, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    .line 875
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 876
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget v2, v0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    const/4 v3, 0x1

    if-nez v2, :cond_76

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v2, :cond_12

    goto :goto_76

    .line 879
    :cond_12
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_74

    .line 880
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 881
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 882
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 883
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 884
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v4

    if-ne v2, v4, :cond_74

    .line 885
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v2

    .line 886
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-ne v2, v4, :cond_74

    .line 887
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v4

    if-ne v2, v4, :cond_74

    move v1, v3

    goto :goto_75

    :cond_74
    nop

    .line 879
    :goto_75
    return v1

    .line 877
    :cond_76
    :goto_76
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_81

    move v1, v3

    :cond_81
    return v1

    .line 889
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_82
    return v1
.end method

.method public blacklist getCanonicalizedLanguageTag()Ljava/lang/String;
    .registers 6

    .line 586
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedCanonicalizedLanguageTag:Ljava/lang/String;

    .line 587
    .local v0, "cachedValue":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 588
    return-object v0

    .line 591
    :cond_5
    const/4 v1, 0x0

    .line 592
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v2

    .line 593
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_22

    .line 594
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "langTag":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 596
    invoke-static {v3}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 599
    .end local v3    # "langTag":Ljava/lang/String;
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedCanonicalizedLanguageTag:Ljava/lang/String;

    .line 601
    return-object v1
.end method

.method public whitelist getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 692
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    if-nez v0, :cond_1f

    .line 693
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 694
    nop

    .line 695
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    .line 694
    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 697
    :cond_1c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 693
    :goto_1e
    return-object v0

    .line 700
    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 702
    .local v0, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_32

    .line 703
    return-object v2

    .line 705
    :cond_32
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "subtypeNameString":Ljava/lang/String;
    const-string v3, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 708
    invoke-virtual {p0, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "replacementString":Ljava/lang/String;
    goto :goto_66

    .line 712
    .end local v3    # "replacementString":Ljava/lang/String;
    :cond_43
    const-string v3, "%s"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 713
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    .local v3, "displayContext":Landroid/icu/text/DisplayContext;
    goto :goto_59

    .line 714
    .end local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    :cond_4e
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 715
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .restart local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    goto :goto_59

    .line 717
    .end local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    :cond_57
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 719
    .restart local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    :goto_59
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    .line 720
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v5

    .line 719
    invoke-static {v4, v5, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 722
    .local v3, "replacementString":Ljava/lang/String;
    :goto_66
    if-nez v3, :cond_6a

    .line 723
    const-string v3, ""

    .line 726
    :cond_6a
    :try_start_6a
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_72
    .catch Ljava/util/IllegalFormatException; {:try_start_6a .. :try_end_72} :catch_73

    return-object v2

    .line 727
    :catch_73
    move-exception v4

    .line 728
    .local v4, "e":Ljava/util/IllegalFormatException;
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found illegal format in subtype name("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-object v2
.end method

.method public whitelist getExtraValue()Ljava/lang/String;
    .registers 2

    .line 636
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 848
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIconResId()I
    .registers 2

    .line 522
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    return v0
.end method

.method public whitelist getLanguageTag()Ljava/lang/String;
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imeAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 754
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevampApi()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 755
    return-object v1

    .line 757
    :cond_9
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 758
    const-string v0, "imeAppInfo cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    if-nez v0, :cond_1a

    .line 760
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    return-object v0

    .line 763
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    invoke-virtual {v0, v2, v3, p2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 765
    .local v0, "subtypeLayoutName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 766
    return-object v1

    .line 768
    :cond_2d
    return-object v0
.end method

.method public whitelist getLayoutLabelNonLocalized()Ljava/lang/CharSequence;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLayoutLabelResource()I
    .registers 2

    .line 484
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLocaleObject()Ljava/util/Locale;
    .registers 3

    .line 557
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v0, :cond_7

    .line 558
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    return-object v0

    .line 560
    :cond_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v1, :cond_12

    .line 562
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    .line 564
    :cond_12
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 565
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    goto :goto_2b

    .line 567
    :cond_23
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    .line 569
    :goto_2b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    .line 570
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist getMode()Ljava/lang/String;
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNameOverride()Ljava/lang/CharSequence;
    .registers 2

    .line 475
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getNameResId()I
    .registers 2

    .line 467
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public whitelist getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public whitelist getPhysicalKeyboardHintLayoutType()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-o getSubtypeId()I
    .registers 2

    .line 869
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    return v0
.end method

.method public final greylist-max-o hasSubtypeId()Z
    .registers 2

    .line 861
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 853
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public whitelist isAsciiCapable()Z
    .registers 2

    .line 669
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    return v0
.end method

.method public whitelist isAuxiliary()Z
    .registers 2

    .line 650
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    return v0
.end method

.method public blacklist isSuitableForPhysicalKeyboardLayoutMapping()Z
    .registers 4

    .line 616
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 617
    return v1

    .line 619
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "keyboard"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 620
    return v1

    .line 622
    :cond_15
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist overridesImplicitlyEnabledSubtype()Z
    .registers 2

    .line 660
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 899
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 901
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 903
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 905
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 910
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    return-void
.end method
