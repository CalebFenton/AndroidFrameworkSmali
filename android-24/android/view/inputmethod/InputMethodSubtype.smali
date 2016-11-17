.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$1;,
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field private static final SUBTYPE_ID_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAsciiCapable:Z

.field private final mIsAuxiliary:Z

.field private final mOverridesImplicitlyEnabledSubtype:Z

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeIconResId:I

.field private final mSubtypeId:I

.field private final mSubtypeLanguageTag:Ljava/lang/String;

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeMode:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    #@8
    .line 626
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    #@a
    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    #@d
    .line 625
    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 66
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z

    #@0
    .prologue
    .line 243
    const/4 v8, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    move/from16 v7, p7

    #@a
    .line 242
    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    #@d
    .line 241
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 9
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z
    .param p8, "id"    # I

    #@0
    .prologue
    .line 280
    const/4 v8, 0x0

    #@1
    move v0, p1

    #@2
    move v1, p2

    #@3
    move-object v2, p3

    #@4
    move-object v3, p4

    #@5
    move-object v4, p5

    #@6
    move v5, p6

    #@7
    move/from16 v6, p7

    #@9
    move/from16 v7, p8

    #@b
    .line 279
    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    #@12
    .line 278
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@b
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@11
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 313
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@19
    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 315
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1f
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@21
    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 317
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@27
    .end local v0    # "s":Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@29
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 319
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@2f
    .end local v0    # "s":Ljava/lang/String;
    :goto_3
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@31
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    if-ne v1, v2, :cond_4

    #@37
    move v1, v2

    #@38
    :goto_4
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@3a
    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    if-ne v1, v2, :cond_5

    #@40
    move v1, v2

    #@41
    :goto_5
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@43
    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v1

    #@47
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@49
    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v1

    #@4d
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@4f
    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v1

    #@53
    if-ne v1, v2, :cond_6

    #@55
    :goto_6
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@57
    .line 308
    return-void

    #@58
    .line 313
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@5b
    goto :goto_0

    #@5c
    .line 315
    :cond_1
    const-string/jumbo v0, ""

    #@5f
    goto :goto_1

    #@60
    .line 317
    :cond_2
    const-string/jumbo v0, ""

    #@63
    goto :goto_2

    #@64
    .line 319
    :cond_3
    const-string/jumbo v0, ""

    #@67
    goto :goto_3

    #@68
    .end local v0    # "s":Ljava/lang/String;
    :cond_4
    move v1, v3

    #@69
    .line 320
    goto :goto_4

    #@6a
    :cond_5
    move v1, v3

    #@6b
    .line 321
    goto :goto_5

    #@6c
    :cond_6
    move v2, v3

    #@6d
    .line 324
    goto :goto_6
.end method

.method private constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .locals 6
    .param p1, "builder"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@0
    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 288
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get9(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@9
    .line 289
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@f
    .line 290
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@15
    .line 291
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@1b
    .line 292
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@21
    .line 293
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@27
    .line 294
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    #@2a
    move-result v0

    #@2b
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@2d
    .line 295
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    #@30
    move-result v0

    #@31
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@33
    .line 296
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@39
    .line 297
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    #@3c
    move-result v0

    #@3d
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@3f
    .line 300
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@41
    if-eqz v0, :cond_0

    #@43
    .line 301
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@45
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@47
    .line 287
    :goto_0
    return-void

    #@48
    .line 303
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@4a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@4c
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@4e
    .line 304
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@50
    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@52
    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@54
    .line 303
    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@5a
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "builder"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    #@3
    return-void
.end method

.method private static getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p0, "nameId"    # I
    .param p1, "iconId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "isAuxiliary"    # Z
    .param p6, "overridesImplicitlyEnabledSubtype"    # Z
    .param p7, "id"    # I
    .param p8, "isAsciiCapable"    # Z

    #@0
    .prologue
    .line 220
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    #@5
    .line 221
    .local v0, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    #@8
    .line 222
    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    #@b
    .line 223
    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@e
    .line 224
    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@11
    .line 225
    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@14
    .line 226
    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    #@17
    .line 227
    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    #@1a
    .line 228
    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    #@1d
    .line 229
    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    #@20
    .line 230
    return-object v0
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 521
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@3
    if-nez v4, :cond_4

    #@5
    .line 522
    monitor-enter p0

    #@6
    .line 523
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@8
    if-nez v4, :cond_3

    #@a
    .line 524
    new-instance v4, Ljava/util/HashMap;

    #@c
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@11
    .line 525
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@13
    const-string/jumbo v5, ","

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 526
    .local v3, "pairs":[Ljava/lang/String;
    array-length v0, v3

    #@1b
    .line 527
    .local v0, "N":I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@1e
    .line 528
    aget-object v4, v3, v1

    #@20
    const-string/jumbo v5, "="

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 529
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    #@28
    if-ne v4, v7, :cond_1

    #@2a
    .line 530
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@2c
    const/4 v5, 0x0

    #@2d
    aget-object v5, v2, v5

    #@2f
    const/4 v6, 0x0

    #@30
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 527
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 531
    :cond_1
    array-length v4, v2

    #@37
    if-le v4, v7, :cond_0

    #@39
    .line 532
    array-length v4, v2

    #@3a
    const/4 v5, 0x2

    #@3b
    if-le v4, v5, :cond_2

    #@3d
    .line 533
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    #@3f
    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    #@42
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 535
    :cond_2
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@47
    const/4 v5, 0x0

    #@48
    aget-object v5, v2, v5

    #@4a
    const/4 v6, 0x1

    #@4b
    aget-object v6, v2, v6

    #@4d
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 522
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "pairs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@52
    monitor-exit p0

    #@53
    throw v4

    #@54
    :cond_3
    monitor-exit p0

    #@55
    .line 541
    :cond_4
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@57
    return-object v4
.end method

.method private static getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 3
    .param p0, "displayLocale"    # Ljava/util/Locale;
    .param p1, "localeToDisplay"    # Ljava/util/Locale;
    .param p2, "displayContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 510
    if-nez p1, :cond_0

    #@2
    .line 511
    const-string/jumbo v1, ""

    #@5
    return-object v1

    #@6
    .line 514
    :cond_0
    if-eqz p0, :cond_1

    #@8
    move-object v0, p0

    #@9
    .line 515
    .local v0, "nonNullDisplayLocale":Ljava/util/Locale;
    :goto_0
    const/4 v1, 0x1

    #@a
    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    #@c
    .line 516
    const/4 v2, 0x0

    #@d
    aput-object p2, v1, v2

    #@f
    .line 515
    invoke-static {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 514
    .end local v0    # "nonNullDisplayLocale":Ljava/util/Locale;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1b
    move-result-object v0

    #@1c
    .restart local v0    # "nonNullDisplayLocale":Ljava/util/Locale;
    goto :goto_0
.end method

.method private static getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 486
    if-nez p0, :cond_0

    #@3
    .line 487
    return-object v2

    #@4
    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 490
    return-object v2

    #@b
    .line 492
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@12
    move-result-object v0

    #@13
    .line 493
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    #@15
    .line 494
    return-object v2

    #@16
    .line 496
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .locals 7
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "extraValue"    # Ljava/lang/String;
    .param p3, "isAuxiliary"    # Z
    .param p4, "overridesImplicitlyEnabledSubtype"    # Z
    .param p5, "isAsciiCapable"    # Z

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 643
    if-eqz p5, :cond_0

    #@7
    move v0, v1

    #@8
    .line 644
    .local v0, "needsToCalculateCompatibleHashCode":Z
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 645
    const/4 v3, 0x5

    #@b
    new-array v3, v3, [Ljava/lang/Object;

    #@d
    aput-object p0, v3, v1

    #@f
    aput-object p1, v3, v2

    #@11
    aput-object p2, v3, v4

    #@13
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v1

    #@17
    aput-object v1, v3, v5

    #@19
    .line 646
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v1

    #@1d
    aput-object v1, v3, v6

    #@1f
    .line 645
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .end local v0    # "needsToCalculateCompatibleHashCode":Z
    :cond_0
    move v0, v2

    #@25
    .line 643
    goto :goto_0

    #@26
    .line 648
    .restart local v0    # "needsToCalculateCompatibleHashCode":Z
    :cond_1
    const/4 v3, 0x6

    #@27
    new-array v3, v3, [Ljava/lang/Object;

    #@29
    aput-object p0, v3, v1

    #@2b
    aput-object p1, v3, v2

    #@2d
    aput-object p2, v3, v4

    #@2f
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v1

    #@33
    aput-object v1, v3, v5

    #@35
    .line 649
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@38
    move-result-object v1

    #@39
    aput-object v1, v3, v6

    #@3b
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v1

    #@3f
    const/4 v2, 0x5

    #@40
    aput-object v1, v3, v2

    #@42
    .line 648
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@45
    move-result v1

    #@46
    return v1
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 663
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-nez p2, :cond_0

    #@2
    return-object p3

    #@3
    .line 664
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    #@5
    invoke-direct {v2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8
    .line 666
    .local v2, "inputSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 667
    .local v3, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@10
    move-result v0

    #@11
    .line 668
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@14
    .line 669
    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@17
    move-result-object v4

    #@18
    .line 670
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 671
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 672
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@24
    .line 668
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 677
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v5

    #@2b
    .local v5, "subtype$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_3

    #@31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@37
    .line 678
    .restart local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 680
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    return-object v3
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 607
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 587
    instance-of v3, p1, Landroid/view/inputmethod/InputMethodSubtype;

    #@4
    if-eqz v3, :cond_5

    #@6
    move-object v0, p1

    #@7
    .line 588
    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    #@9
    .line 589
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget v3, v0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@b
    if-nez v3, :cond_0

    #@d
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 590
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@14
    move-result v3

    #@15
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@18
    move-result v4

    #@19
    if-ne v3, v4, :cond_1

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_1
    move v1, v2

    #@1d
    goto :goto_0

    #@1e
    .line 592
    :cond_2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@21
    move-result v3

    #@22
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@25
    move-result v4

    #@26
    if-ne v3, v4, :cond_4

    #@28
    .line 593
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    .line 592
    if-eqz v3, :cond_4

    #@36
    .line 594
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v3

    #@42
    .line 592
    if-eqz v3, :cond_4

    #@44
    .line 595
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    .line 592
    if-eqz v3, :cond_4

    #@52
    .line 596
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    .line 592
    if-eqz v3, :cond_4

    #@60
    .line 597
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@63
    move-result v3

    #@64
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@67
    move-result v4

    #@68
    if-ne v3, v4, :cond_4

    #@6a
    .line 598
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@6d
    move-result v3

    #@6e
    .line 599
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@71
    move-result v4

    #@72
    .line 598
    if-ne v3, v4, :cond_4

    #@74
    .line 600
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    #@77
    move-result v3

    #@78
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    #@7b
    move-result v4

    #@7c
    if-ne v3, v4, :cond_3

    #@7e
    .line 592
    :goto_1
    return v1

    #@7f
    :cond_3
    move v1, v2

    #@80
    .line 600
    goto :goto_1

    #@81
    :cond_4
    move v1, v2

    #@82
    .line 592
    goto :goto_1

    #@83
    .line 602
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    return v2
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 446
    iget v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@2
    if-nez v5, :cond_0

    #@4
    .line 447
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    #@b
    move-result-object v6

    #@c
    .line 448
    sget-object v7, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@e
    .line 447
    invoke-static {v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    return-object v5

    #@13
    .line 451
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v5

    #@17
    .line 452
    iget v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@19
    .line 451
    invoke-virtual {v5, p2, v6, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1c
    move-result-object v3

    #@1d
    .line 453
    .local v3, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 454
    const-string/jumbo v5, ""

    #@26
    return-object v5

    #@27
    .line 456
    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 458
    .local v4, "subtypeNameString":Ljava/lang/String;
    const-string/jumbo v5, "UntranslatableReplacementStringInSubtypeName"

    #@2e
    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_3

    #@34
    .line 460
    const-string/jumbo v5, "UntranslatableReplacementStringInSubtypeName"

    #@37
    .line 459
    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 473
    .local v2, "replacementString":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    #@3d
    .line 474
    const-string/jumbo v2, ""

    #@40
    .line 477
    :cond_2
    const/4 v5, 0x1

    #@41
    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    #@43
    const/4 v6, 0x0

    #@44
    aput-object v2, v5, v6

    #@46
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    move-result-object v5

    #@4a
    return-object v5

    #@4b
    .line 463
    .end local v2    # "replacementString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "%s"

    #@4e
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_4

    #@54
    .line 464
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@56
    .line 470
    .local v0, "displayContext":Landroid/icu/text/DisplayContext;
    :goto_1
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    #@59
    move-result-object v5

    #@5a
    .line 471
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    #@5d
    move-result-object v6

    #@5e
    .line 470
    invoke-static {v5, v6, v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .restart local v2    # "replacementString":Ljava/lang/String;
    goto :goto_0

    #@63
    .line 465
    .end local v0    # "displayContext":Landroid/icu/text/DisplayContext;
    .end local v2    # "replacementString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "%s"

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v5

    #@6a
    if-eqz v5, :cond_5

    #@6c
    .line 466
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@6e
    .restart local v0    # "displayContext":Landroid/icu/text/DisplayContext;
    goto :goto_1

    #@6f
    .line 468
    .end local v0    # "displayContext":Landroid/icu/text/DisplayContext;
    :cond_5
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@71
    .restart local v0    # "displayContext":Landroid/icu/text/DisplayContext;
    goto :goto_1

    #@72
    .line 478
    .end local v0    # "displayContext":Landroid/icu/text/DisplayContext;
    .restart local v2    # "replacementString":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@73
    .line 479
    .local v1, "e":Ljava/util/IllegalFormatException;
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    #@75
    new-instance v6, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v7, "Found illegal format in subtype name("

    #@7d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    const-string/jumbo v7, "): "

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 480
    const-string/jumbo v5, ""

    #@9a
    return-object v5
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    #@0
    .prologue
    .line 338
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@2
    return v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 374
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@a
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 376
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@11
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    #@0
    .prologue
    .line 331
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@2
    return v0
.end method

.method public final getSubtypeId()I
    .locals 1

    #@0
    .prologue
    .line 582
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@2
    return v0
.end method

.method public final hasSubtypeId()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 574
    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 566
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@2
    return v0
.end method

.method public isAsciiCapable()Z
    .locals 1

    #@0
    .prologue
    .line 423
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@2
    return v0
.end method

.method public isAuxiliary()Z
    .locals 1

    #@0
    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@2
    return v0
.end method

.method public overridesImplicitlyEnabledSubtype()Z
    .locals 1

    #@0
    .prologue
    .line 414
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 612
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 613
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 614
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 615
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 616
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 617
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 618
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@22
    if-eqz v0, :cond_0

    #@24
    move v0, v1

    #@25
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 619
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@2a
    if-eqz v0, :cond_1

    #@2c
    move v0, v1

    #@2d
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 620
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 621
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 622
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@3c
    if-eqz v0, :cond_2

    #@3e
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 611
    return-void

    #@42
    :cond_0
    move v0, v2

    #@43
    .line 618
    goto :goto_0

    #@44
    :cond_1
    move v0, v2

    #@45
    .line 619
    goto :goto_1

    #@46
    :cond_2
    move v1, v2

    #@47
    .line 622
    goto :goto_2
.end method
