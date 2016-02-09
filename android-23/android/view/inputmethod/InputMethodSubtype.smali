.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;,
        Landroid/view/inputmethod/InputMethodSubtype$1;
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

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeMode:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    #@8
    .line 510
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    #@a
    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    #@d
    .line 509
    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 61
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
    .line 226
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
    .line 225
    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    #@d
    .line 224
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
    .line 263
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
    .line 262
    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    #@12
    .line 261
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
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@b
    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@11
    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 292
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@19
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 294
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1f
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@21
    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 296
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@27
    .end local v0    # "s":Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@29
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    if-ne v1, v2, :cond_3

    #@2f
    move v1, v2

    #@30
    :goto_3
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@32
    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v1

    #@36
    if-ne v1, v2, :cond_4

    #@38
    move v1, v2

    #@39
    :goto_4
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@3b
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v1

    #@3f
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@41
    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v1

    #@45
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@47
    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v1

    #@4b
    if-ne v1, v2, :cond_5

    #@4d
    :goto_5
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@4f
    .line 287
    return-void

    #@50
    .line 292
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@53
    goto :goto_0

    #@54
    .line 294
    :cond_1
    const-string/jumbo v0, ""

    #@57
    goto :goto_1

    #@58
    .line 296
    :cond_2
    const-string/jumbo v0, ""

    #@5b
    goto :goto_2

    #@5c
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    move v1, v3

    #@5d
    .line 297
    goto :goto_3

    #@5e
    :cond_4
    move v1, v3

    #@5f
    .line 298
    goto :goto_4

    #@60
    :cond_5
    move v2, v3

    #@61
    .line 301
    goto :goto_5
.end method

.method private constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .locals 6
    .param p1, "builder"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 271
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@9
    .line 272
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@f
    .line 273
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@15
    .line 274
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@1b
    .line 275
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@21
    .line 276
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    #@24
    move-result v0

    #@25
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@27
    .line 277
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    #@2a
    move-result v0

    #@2b
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@2d
    .line 278
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@33
    .line 279
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-get0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    #@36
    move-result v0

    #@37
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@39
    .line 282
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@3b
    if-eqz v0, :cond_0

    #@3d
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@3f
    :goto_0
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@41
    .line 270
    return-void

    #@42
    .line 282
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@44
    .line 283
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@46
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@48
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@4a
    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@4c
    .line 284
    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@4e
    .line 282
    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    #@51
    move-result v0

    #@52
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
    .line 203
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    #@5
    .line 204
    .local v0, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    #@8
    .line 205
    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    #@b
    .line 206
    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@e
    .line 207
    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@11
    .line 208
    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@14
    .line 209
    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    #@17
    .line 210
    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    #@1a
    .line 211
    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    #@1d
    .line 212
    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-set0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    #@20
    .line 213
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
    .line 423
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@3
    if-nez v4, :cond_4

    #@5
    .line 424
    monitor-enter p0

    #@6
    .line 425
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@8
    if-nez v4, :cond_3

    #@a
    .line 426
    new-instance v4, Ljava/util/HashMap;

    #@c
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@11
    .line 427
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@13
    const-string/jumbo v5, ","

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 428
    .local v3, "pairs":[Ljava/lang/String;
    array-length v0, v3

    #@1b
    .line 429
    .local v0, "N":I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@1e
    .line 430
    aget-object v4, v3, v1

    #@20
    const-string/jumbo v5, "="

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 431
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    #@28
    if-ne v4, v7, :cond_1

    #@2a
    .line 432
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
    .line 429
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 433
    :cond_1
    array-length v4, v2

    #@37
    if-le v4, v7, :cond_0

    #@39
    .line 434
    array-length v4, v2

    #@3a
    const/4 v5, 0x2

    #@3b
    if-le v4, v5, :cond_2

    #@3d
    .line 435
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    #@3f
    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    #@42
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 437
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
    .line 424
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
    .line 443
    :cond_4
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@57
    return-object v4
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
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 527
    if-eqz p5, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    .line 528
    .local v0, "needsToCalculateCompatibleHashCode":Z
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 529
    const/4 v1, 0x5

    #@b
    new-array v1, v1, [Ljava/lang/Object;

    #@d
    aput-object p0, v1, v2

    #@f
    aput-object p1, v1, v3

    #@11
    aput-object p2, v1, v4

    #@13
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v1, v5

    #@19
    .line 530
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v2

    #@1d
    aput-object v2, v1, v6

    #@1f
    .line 529
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 527
    .end local v0    # "needsToCalculateCompatibleHashCode":Z
    :cond_0
    const/4 v0, 0x1

    #@25
    .restart local v0    # "needsToCalculateCompatibleHashCode":Z
    goto :goto_0

    #@26
    .line 532
    :cond_1
    const/4 v1, 0x6

    #@27
    new-array v1, v1, [Ljava/lang/Object;

    #@29
    aput-object p0, v1, v2

    #@2b
    aput-object p1, v1, v3

    #@2d
    aput-object p2, v1, v4

    #@2f
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v1, v5

    #@35
    .line 533
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@38
    move-result-object v2

    #@39
    aput-object v2, v1, v6

    #@3b
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v2

    #@3f
    const/4 v3, 0x5

    #@40
    aput-object v2, v1, v3

    #@42
    .line 532
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

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
    .line 547
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-nez p2, :cond_0

    #@2
    return-object p3

    #@3
    .line 548
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    #@5
    invoke-direct {v2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8
    .line 550
    .local v2, "inputSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 551
    .local v3, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@10
    move-result v0

    #@11
    .line 552
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@14
    .line 553
    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@17
    move-result-object v4

    #@18
    .line 554
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 555
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 556
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@24
    .line 552
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 561
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
    .line 562
    .restart local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 564
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
    .line 453
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
    .line 492
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
    .line 473
    instance-of v3, p1, Landroid/view/inputmethod/InputMethodSubtype;

    #@4
    if-eqz v3, :cond_5

    #@6
    move-object v0, p1

    #@7
    .line 474
    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    #@9
    .line 475
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget v3, v0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@b
    if-nez v3, :cond_0

    #@d
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 476
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
    .line 478
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
    .line 479
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
    .line 478
    if-eqz v3, :cond_4

    #@36
    .line 480
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v3

    #@42
    .line 478
    if-eqz v3, :cond_4

    #@44
    .line 481
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    .line 478
    if-eqz v3, :cond_4

    #@52
    .line 482
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@55
    move-result v3

    #@56
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@59
    move-result v4

    #@5a
    if-ne v3, v4, :cond_4

    #@5c
    .line 483
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@5f
    move-result v3

    #@60
    .line 484
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@63
    move-result v4

    #@64
    .line 483
    if-ne v3, v4, :cond_4

    #@66
    .line 485
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    #@69
    move-result v3

    #@6a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    #@6d
    move-result v4

    #@6e
    if-ne v3, v4, :cond_3

    #@70
    .line 478
    :goto_1
    return v1

    #@71
    :cond_3
    move v1, v2

    #@72
    .line 485
    goto :goto_1

    #@73
    :cond_4
    move v1, v2

    #@74
    .line 478
    goto :goto_1

    #@75
    .line 487
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
    .line 398
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    #@3
    move-result-object v1

    #@4
    .line 399
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 400
    .local v2, "localeStr":Ljava/lang/String;
    :goto_0
    iget v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@c
    if-nez v5, :cond_1

    #@e
    .line 401
    return-object v2

    #@f
    .line 399
    .end local v2    # "localeStr":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@11
    .restart local v2    # "localeStr":Ljava/lang/String;
    goto :goto_0

    #@12
    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v5

    #@16
    .line 404
    iget v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@18
    .line 403
    invoke-virtual {v5, p2, v6, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1b
    move-result-object v4

    #@1c
    .line 405
    .local v4, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_4

    #@22
    .line 407
    const-string/jumbo v5, "UntranslatableReplacementStringInSubtypeName"

    #@25
    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_2

    #@2b
    .line 408
    const-string/jumbo v5, "UntranslatableReplacementStringInSubtypeName"

    #@2e
    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 412
    .local v3, "replacementString":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 411
    const/4 v6, 0x1

    #@37
    new-array v6, v6, [Ljava/lang/Object;

    #@39
    .line 412
    if-eqz v3, :cond_3

    #@3b
    .end local v3    # "replacementString":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    #@3c
    aput-object v3, v6, v7

    #@3e
    .line 411
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    return-object v5

    #@43
    .line 409
    :cond_2
    move-object v3, v2

    #@44
    .restart local v3    # "replacementString":Ljava/lang/String;
    goto :goto_1

    #@45
    .line 412
    :cond_3
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    goto :goto_2

    #@49
    .line 413
    .end local v3    # "replacementString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4a
    .line 414
    .local v0, "e":Ljava/util/IllegalFormatException;
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "Found illegal format in subtype name("

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    const-string/jumbo v7, "): "

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 415
    const-string/jumbo v5, ""

    #@71
    return-object v5

    #@72
    .line 418
    .end local v0    # "e":Ljava/util/IllegalFormatException;
    :cond_4
    return-object v2
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
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
    .line 315
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@2
    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    #@0
    .prologue
    .line 308
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 468
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@2
    return v0
.end method

.method public isAsciiCapable()Z
    .locals 1

    #@0
    .prologue
    .line 383
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@2
    return v0
.end method

.method public isAuxiliary()Z
    .locals 1

    #@0
    .prologue
    .line 364
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@2
    return v0
.end method

.method public overridesImplicitlyEnabledSubtype()Z
    .locals 1

    #@0
    .prologue
    .line 374
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
    .line 497
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 498
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 499
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 500
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 501
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 502
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 503
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    move v0, v1

    #@28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 504
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 505
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 506
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    #@37
    if-eqz v0, :cond_2

    #@39
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 496
    return-void

    #@3d
    :cond_0
    move v0, v2

    #@3e
    .line 502
    goto :goto_0

    #@3f
    :cond_1
    move v0, v2

    #@40
    .line 503
    goto :goto_1

    #@41
    :cond_2
    move v1, v2

    #@42
    .line 506
    goto :goto_2
.end method
