.class synthetic Landroid/icu/impl/locale/LocaleValidityChecker$1;
.super Ljava/lang/Object;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LocaleValidityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$icu$impl$ValidIdentifiers$Datatype:[I

.field static final synthetic blacklist $SwitchMap$android$icu$impl$locale$KeyTypeData$ValueType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 191
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->values()[Landroid/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$ValueType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$ValueType:[I

    sget-object v2, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-virtual {v2}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$ValueType:[I

    sget-object v3, Landroid/icu/impl/locale/KeyTypeData$ValueType;->incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-virtual {v3}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$ValueType:[I

    sget-object v4, Landroid/icu/impl/locale/KeyTypeData$ValueType;->multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-virtual {v4}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    .line 107
    :goto_30
    invoke-static {}, Landroid/icu/impl/ValidIdentifiers$Datatype;->values()[Landroid/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$ValidIdentifiers$Datatype:[I

    :try_start_39
    sget-object v3, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$ValidIdentifiers$Datatype:[I

    sget-object v4, Landroid/icu/impl/ValidIdentifiers$Datatype;->x:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v4}, Landroid/icu/impl/ValidIdentifiers$Datatype;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v0

    :goto_45
    :try_start_45
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$ValidIdentifiers$Datatype:[I

    sget-object v3, Landroid/icu/impl/ValidIdentifiers$Datatype;->t:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v3}, Landroid/icu/impl/ValidIdentifiers$Datatype;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$ValidIdentifiers$Datatype:[I

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datatype;->u:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v1}, Landroid/icu/impl/ValidIdentifiers$Datatype;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v0

    :goto_5d
    return-void
.end method
