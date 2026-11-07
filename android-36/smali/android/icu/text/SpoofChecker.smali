.class public Landroid/icu/text/SpoofChecker;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$RestrictionLevel;,
        Landroid/icu/text/SpoofChecker$CheckResult;,
        Landroid/icu/text/SpoofChecker$ScriptSet;,
        Landroid/icu/text/SpoofChecker$SpoofData;,
        Landroid/icu/text/SpoofChecker$ConfusableDataUtils;,
        Landroid/icu/text/SpoofChecker$Builder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o ALL_CHECKS:I = -0x1

.field public static final greylist-max-o ANY_CASE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o ASCII:Landroid/icu/text/UnicodeSet;

.field public static final greylist-max-o CHAR_LIMIT:I = 0x40

.field public static final greylist-max-o CONFUSABLE:I = 0x7

.field public static final blacklist HIDDEN_OVERLAY:I = 0x100

.field public static final greylist-max-o INCLUSION:Landroid/icu/text/UnicodeSet;

.field public static final greylist-max-o INVISIBLE:I = 0x20

.field public static final greylist-max-o MIXED_NUMBERS:I = 0x80

.field public static final greylist-max-o MIXED_SCRIPT_CONFUSABLE:I = 0x2

.field public static final greylist-max-o RECOMMENDED:Landroid/icu/text/UnicodeSet;

.field public static final greylist-max-o RESTRICTION_LEVEL:I = 0x10

.field public static final greylist-max-o SINGLE_SCRIPT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SINGLE_SCRIPT_CONFUSABLE:I = 0x1

.field public static final greylist-max-o WHOLE_SCRIPT_CONFUSABLE:I = 0x4

.field private static greylist-max-o nfdNormalizer:Landroid/icu/text/Normalizer2;


# instance fields
.field private greylist-max-o fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o fChecks:I

.field private greylist-max-o fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field private greylist-max-o fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfAllowedCharsSet(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfAllowedLocales(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfChecks(Landroid/icu/text/SpoofChecker;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfRestrictionLevel(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfSpoofData(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputfAllowedCharsSet(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfAllowedLocales(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfChecks(Landroid/icu/text/SpoofChecker;I)V
    .registers 2

    iput p1, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfRestrictionLevel(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfSpoofData(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 278
    nop

    .line 326
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sget-object v1, Landroid/icu/lang/UCharacter$IdentifierType;->INCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 328
    invoke-virtual {v1}, Landroid/icu/lang/UCharacter$IdentifierType;->ordinal()I

    move-result v1

    const/16 v2, 0x7001

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->INCLUSION:Landroid/icu/text/UnicodeSet;

    .line 334
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sget-object v1, Landroid/icu/lang/UCharacter$IdentifierType;->RECOMMENDED:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 336
    invoke-virtual {v1}, Landroid/icu/lang/UCharacter$IdentifierType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->RECOMMENDED:Landroid/icu/text/UnicodeSet;

    .line 445
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->ASCII:Landroid/icu/text/UnicodeSet;

    .line 1764
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/SpoofChecker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker;-><init>()V

    return-void
.end method

.method private static greylist-max-o getAugmentedScriptSet(ILandroid/icu/text/SpoofChecker$ScriptSet;)V
    .registers 6
    .param p0, "codePoint"    # I
    .param p1, "result"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    .line 1599
    invoke-virtual {p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->clear()V

    .line 1600
    invoke-static {p0, p1}, Landroid/icu/lang/UScript;->getScriptExtensions(ILjava/util/BitSet;)I

    .line 1603
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    const/16 v1, 0x77

    const/16 v2, 0xac

    const/16 v3, 0x69

    if-eqz v0, :cond_1d

    .line 1604
    invoke-virtual {p1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1605
    invoke-virtual {p1, v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1606
    invoke-virtual {p1, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1608
    :cond_1d
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1609
    invoke-virtual {p1, v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1611
    :cond_28
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1612
    invoke-virtual {p1, v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1614
    :cond_33
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1615
    invoke-virtual {p1, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1617
    :cond_3e
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1618
    invoke-virtual {p1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(I)V

    .line 1622
    :cond_48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1623
    :cond_56
    invoke-virtual {p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->setAll()V

    .line 1625
    :cond_59
    return-void
.end method

.method private greylist-max-o getNumerics(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .registers 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/icu/text/UnicodeSet;

    .line 1661
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1663
    const/4 v0, 0x0

    .local v0, "utf16Offset":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1664
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1665
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1668
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_24

    .line 1671
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getNumericValue(I)I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1673
    .end local v1    # "codePoint":I
    :cond_24
    goto :goto_4

    .line 1674
    .end local v0    # "utf16Offset":I
    :cond_25
    return-void
.end method

.method private greylist-max-o getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "result"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    .line 1631
    const/16 v0, 0xd0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSetWithout(Ljava/lang/CharSequence;ILandroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1632
    return-void
.end method

.method private greylist-max-o getResolvedScriptSetWithout(Ljava/lang/CharSequence;ILandroid/icu/text/SpoofChecker$ScriptSet;)V
    .registers 8
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "script"    # I
    .param p3, "result"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    .line 1639
    invoke-virtual {p3}, Landroid/icu/text/SpoofChecker$ScriptSet;->setAll()V

    .line 1641
    new-instance v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1642
    .local v0, "temp":Landroid/icu/text/SpoofChecker$ScriptSet;
    const/4 v1, 0x0

    .local v1, "utf16Offset":I
    :goto_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1643
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1644
    .local v2, "codePoint":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1647
    invoke-static {v2, v0}, Landroid/icu/text/SpoofChecker;->getAugmentedScriptSet(ILandroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1651
    const/16 v3, 0xd0

    if-eq p2, v3, :cond_25

    invoke-virtual {v0, p2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1652
    :cond_25
    invoke-virtual {p3, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->and(Ljava/util/BitSet;)V

    .line 1654
    .end local v2    # "codePoint":I
    :cond_28
    goto :goto_9

    .line 1655
    .end local v1    # "utf16Offset":I
    :cond_29
    return-void
.end method

.method private greylist-max-o getRestrictionLevel(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .registers 5
    .param p1, "input"    # Ljava/lang/String;

    .line 1681
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1682
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0

    .line 1686
    :cond_b
    sget-object v0, Landroid/icu/text/SpoofChecker;->ASCII:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1687
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0

    .line 1691
    :cond_16
    new-instance v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1692
    .local v0, "resolvedScriptSet":Landroid/icu/text/SpoofChecker$ScriptSet;
    invoke-direct {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1695
    invoke-virtual {v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1696
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1

    .line 1700
    :cond_27
    new-instance v1, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v1}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1701
    .local v1, "resolvedNoLatn":Landroid/icu/text/SpoofChecker$ScriptSet;
    const/16 v2, 0x19

    invoke-direct {p0, p1, v2, v1}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSetWithout(Ljava/lang/CharSequence;ILandroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1704
    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6d

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1705
    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_6d

    .line 1710
    :cond_4a
    invoke-virtual {v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6a

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1711
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1712
    sget-object v2, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v2

    .line 1716
    :cond_6a
    sget-object v2, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v2

    .line 1706
    :cond_6d
    :goto_6d
    sget-object v2, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v2
.end method


# virtual methods
.method public blacklist areConfusable(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 10
    .param p1, "direction"    # I
    .param p2, "s1"    # Ljava/lang/CharSequence;
    .param p3, "s2"    # Ljava/lang/CharSequence;

    .line 1439
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_44

    .line 1444
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/SpoofChecker;->getBidiSkeleton(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "s1Skeleton":Ljava/lang/String;
    invoke-virtual {p0, p1, p3}, Landroid/icu/text/SpoofChecker;->getBidiSkeleton(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "s2Skeleton":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1447
    const/4 v2, 0x0

    return v2

    .line 1453
    :cond_16
    new-instance v2, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v2}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1454
    .local v2, "s1RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    invoke-direct {p0, p2, v2}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1455
    new-instance v3, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v3}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1456
    .local v3, "s2RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    invoke-direct {p0, p3, v3}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1459
    const/4 v4, 0x0

    .line 1460
    .local v4, "result":I
    invoke-virtual {v2, v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersects(Ljava/util/BitSet;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1461
    or-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1463
    :cond_30
    or-int/lit8 v4, v4, 0x2

    .line 1464
    invoke-virtual {v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    .line 1465
    or-int/lit8 v4, v4, 0x4

    .line 1470
    :cond_40
    :goto_40
    iget v5, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/2addr v4, v5

    .line 1472
    return v4

    .line 1440
    .end local v0    # "s1Skeleton":Ljava/lang/String;
    .end local v1    # "s2Skeleton":Ljava/lang/String;
    .end local v2    # "s1RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    .end local v3    # "s2RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    .end local v4    # "result":I
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No confusable checks are enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o areConfusable(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 1376
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_44

    .line 1381
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, "s1Skeleton":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, "s2Skeleton":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1384
    const/4 v2, 0x0

    return v2

    .line 1390
    :cond_16
    new-instance v2, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v2}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1391
    .local v2, "s1RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    invoke-direct {p0, p1, v2}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1392
    new-instance v3, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v3}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    .line 1393
    .local v3, "s2RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    invoke-direct {p0, p2, v3}, Landroid/icu/text/SpoofChecker;->getResolvedScriptSet(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    .line 1396
    const/4 v4, 0x0

    .line 1397
    .local v4, "result":I
    invoke-virtual {v2, v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersects(Ljava/util/BitSet;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1398
    or-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1400
    :cond_30
    or-int/lit8 v4, v4, 0x2

    .line 1401
    invoke-virtual {v2}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v3}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    .line 1402
    or-int/lit8 v4, v4, 0x4

    .line 1407
    :cond_40
    :goto_40
    iget v5, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/2addr v5, v4

    return v5

    .line 1377
    .end local v0    # "s1Skeleton":Ljava/lang/String;
    .end local v1    # "s2Skeleton":Ljava/lang/String;
    .end local v2    # "s1RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    .end local v3    # "s2RSS":Landroid/icu/text/SpoofChecker$ScriptSet;
    .end local v4    # "result":I
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No confusable checks are enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1559
    instance-of v0, p1, Landroid/icu/text/SpoofChecker;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1560
    return v1

    .line 1562
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/text/SpoofChecker;

    .line 1563
    .local v0, "otherSC":Landroid/icu/text/SpoofChecker;
    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-eq v2, v3, :cond_1e

    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-virtual {v2, v3}, Landroid/icu/text/SpoofChecker$SpoofData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1564
    return v1

    .line 1566
    :cond_1e
    iget v2, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    iget v3, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    if-eq v2, v3, :cond_25

    .line 1567
    return v1

    .line 1569
    :cond_25
    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    if-eq v2, v3, :cond_3a

    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    .line 1570
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1571
    return v1

    .line 1573
    :cond_3a
    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    if-eq v2, v3, :cond_4f

    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 1574
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1575
    return v1

    .line 1577
    :cond_4f
    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    if-eq v2, v3, :cond_56

    .line 1578
    return v1

    .line 1580
    :cond_56
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o failsChecks(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checkResult"    # Landroid/icu/text/SpoofChecker$CheckResult;

    .line 1240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1242
    .local v0, "length":I
    const/4 v1, 0x0

    .line 1243
    .local v1, "result":I
    const/4 v2, 0x0

    if-eqz p2, :cond_f

    .line 1244
    iput v2, p2, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    .line 1245
    const/4 v3, 0x0

    iput-object v3, p2, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    .line 1246
    iput-object v3, p2, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 1249
    :cond_f
    iget v3, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_27

    .line 1250
    invoke-direct {p0, p1}, Landroid/icu/text/SpoofChecker;->getRestrictionLevel(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v3

    .line 1251
    .local v3, "textRestrictionLevel":Landroid/icu/text/SpoofChecker$RestrictionLevel;
    iget-object v4, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v3, v4}, Landroid/icu/text/SpoofChecker$RestrictionLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_23

    .line 1252
    or-int/lit8 v1, v1, 0x10

    .line 1254
    :cond_23
    if-eqz p2, :cond_27

    .line 1255
    iput-object v3, p2, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 1259
    .end local v3    # "textRestrictionLevel":Landroid/icu/text/SpoofChecker$RestrictionLevel;
    :cond_27
    iget v3, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit16 v3, v3, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    .line 1260
    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1261
    .local v3, "numerics":Landroid/icu/text/UnicodeSet;
    invoke-direct {p0, p1, v3}, Landroid/icu/text/SpoofChecker;->getNumerics(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 1262
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v5

    if-le v5, v4, :cond_3e

    .line 1263
    or-int/lit16 v1, v1, 0x80

    .line 1265
    :cond_3e
    if-eqz p2, :cond_42

    .line 1266
    iput-object v3, p2, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    .line 1270
    .end local v3    # "numerics":Landroid/icu/text/UnicodeSet;
    :cond_42
    iget v3, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_51

    .line 1271
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker;->findHiddenOverlay(Ljava/lang/String;)I

    move-result v3

    .line 1272
    .local v3, "index":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_51

    .line 1273
    or-int/lit16 v1, v1, 0x100

    .line 1277
    .end local v3    # "index":I
    :cond_51
    iget v3, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6d

    .line 1280
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_58
    if-ge v3, v0, :cond_6d

    .line 1282
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1283
    .local v5, "c":I
    invoke-static {p1, v3, v4}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 1284
    iget-object v6, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-nez v6, :cond_58

    .line 1285
    or-int/lit8 v1, v1, 0x40

    .line 1286
    nop

    .line 1291
    .end local v3    # "i":I
    .end local v5    # "c":I
    :cond_6d
    iget v3, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b1

    .line 1293
    sget-object v3, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "nfdText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1300
    .local v5, "firstNonspacingMark":I
    const/4 v6, 0x0

    .line 1301
    .local v6, "haveMultipleMarks":Z
    new-instance v7, Landroid/icu/text/UnicodeSet;

    invoke-direct {v7}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1303
    .local v7, "marksSeenSoFar":Landroid/icu/text/UnicodeSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :cond_81
    :goto_81
    if-ge v8, v0, :cond_b1

    .line 1304
    invoke-static {v3, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 1305
    .local v9, "c":I
    invoke-static {v3, v8, v4}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v8

    .line 1306
    invoke-static {v9}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_9a

    .line 1307
    const/4 v5, 0x0

    .line 1308
    if-eqz v6, :cond_81

    .line 1309
    invoke-virtual {v7}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1310
    const/4 v6, 0x0

    goto :goto_81

    .line 1314
    :cond_9a
    if-nez v5, :cond_9e

    .line 1315
    move v5, v9

    .line 1316
    goto :goto_81

    .line 1318
    :cond_9e
    if-nez v6, :cond_a4

    .line 1319
    invoke-virtual {v7, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1320
    const/4 v6, 0x1

    .line 1322
    :cond_a4
    invoke-virtual {v7, v9}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 1325
    or-int/lit8 v1, v1, 0x20

    .line 1326
    goto :goto_b1

    .line 1328
    :cond_ad
    invoke-virtual {v7, v9}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_81

    .line 1331
    .end local v3    # "nfdText":Ljava/lang/String;
    .end local v5    # "firstNonspacingMark":I
    .end local v6    # "haveMultipleMarks":Z
    .end local v7    # "marksSeenSoFar":Landroid/icu/text/UnicodeSet;
    .end local v8    # "i":I
    .end local v9    # "c":I
    :cond_b1
    :goto_b1
    if-eqz p2, :cond_b5

    .line 1332
    iput v1, p2, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    .line 1334
    :cond_b5
    if-eqz v1, :cond_b8

    move v2, v4

    :cond_b8
    return v2
.end method

.method blacklist findHiddenOverlay(Ljava/lang/String;)I
    .registers 8
    .param p1, "input"    # Ljava/lang/String;

    .line 1720
    const/4 v0, 0x0

    .line 1721
    .local v0, "sawLeadCharacter":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1722
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1723
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 1724
    .local v3, "cp":I
    if-eqz v0, :cond_18

    const/16 v4, 0x307

    if-ne v3, v4, :cond_18

    .line 1725
    return v2

    .line 1727
    :cond_18
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v4

    .line 1730
    .local v4, "combiningClass":I
    nop

    .line 1731
    if-eqz v4, :cond_23

    const/16 v5, 0xe6

    if-ne v4, v5, :cond_27

    .line 1732
    :cond_23
    invoke-virtual {p0, v3, v1}, Landroid/icu/text/SpoofChecker;->isIllegalCombiningDotLeadCharacter(ILjava/lang/StringBuilder;)Z

    move-result v0

    .line 1734
    :cond_27
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 1735
    .end local v3    # "cp":I
    .end local v4    # "combiningClass":I
    goto :goto_7

    .line 1736
    .end local v2    # "i":I
    :cond_2d
    const/4 v2, -0x1

    return v2
.end method

.method public greylist-max-o getAllowedChars()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 1141
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public greylist-max-o getAllowedJavaLocales()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1124
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1125
    .local v0, "locales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 1126
    .local v2, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1127
    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    goto :goto_11

    .line 1128
    :cond_25
    return-object v0
.end method

.method public greylist-max-o getAllowedLocales()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBidiSkeleton(ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "direction"    # I
    .param p2, "str"    # Ljava/lang/CharSequence;

    .line 1494
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 1495
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction should be DIRECTION_LEFT_TO_RIGHT or DIRECTION_RIGHT_TO_LEFT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1497
    :cond_e
    :goto_e
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/icu/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1498
    .local v0, "bidi":Landroid/icu/text/Bidi;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getChecks()I
    .registers 2

    .line 1099
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return v0
.end method

.method public greylist-max-o getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1090
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method public greylist-max-o getSkeleton(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1546
    invoke-virtual {p0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSkeleton(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 1517
    sget-object v0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, "nfdId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1519
    .local v1, "normalizedLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .local v2, "skelSB":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "inputIndex":I
    :goto_10
    if-ge v3, v1, :cond_28

    .line 1521
    invoke-static {v0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1522
    .local v4, "c":I
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1523
    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v5

    if-nez v5, :cond_27

    .line 1524
    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-virtual {v5, v4, v2}, Landroid/icu/text/SpoofChecker$SpoofData;->confusableLookup(ILjava/lang/StringBuilder;)V

    .line 1526
    .end local v4    # "c":I
    :cond_27
    goto :goto_10

    .line 1527
    .end local v3    # "inputIndex":I
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, "skelStr":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1529
    return-object v3
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1588
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 1589
    invoke-virtual {v1}, Landroid/icu/text/SpoofChecker$SpoofData;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    .line 1590
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 1591
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 1592
    invoke-virtual {v1}, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ordinal()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1588
    return v0
.end method

.method blacklist isIllegalCombiningDotLeadCharacter(ILjava/lang/StringBuilder;)Z
    .registers 7
    .param p1, "cp"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker;->isIllegalCombiningDotLeadCharacterNoLookup(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1746
    return v1

    .line 1748
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1749
    iget-object v2, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-virtual {v2, p1, p2}, Landroid/icu/text/SpoofChecker$SpoofData;->confusableLookup(ILjava/lang/StringBuilder;)V

    .line 1750
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {p2, v2}, Landroid/icu/lang/UCharacter;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1751
    .local v2, "finalCp":I
    if-eq v2, p1, :cond_22

    invoke-virtual {p0, v2}, Landroid/icu/text/SpoofChecker;->isIllegalCombiningDotLeadCharacterNoLookup(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1752
    return v1

    .line 1754
    :cond_22
    return v0
.end method

.method blacklist isIllegalCombiningDotLeadCharacterNoLookup(I)Z
    .registers 3
    .param p1, "cp"    # I

    .line 1740
    const/16 v0, 0x69

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x131

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x237

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_1f

    .line 1741
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1740
    :goto_20
    return v0
.end method
