.class public abstract Landroid/icu/text/CaseMap;
.super Ljava/lang/Object;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CaseMap$Lower;,
        Landroid/icu/text/CaseMap$Upper;,
        Landroid/icu/text/CaseMap$Title;,
        Landroid/icu/text/CaseMap$Fold;
    }
.end annotation


# instance fields
.field protected greylist-max-o internalOptions:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetCaseLocale(Ljava/util/Locale;)I
    .registers 1

    invoke-static {p0}, Landroid/icu/text/CaseMap;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "opt"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/CaseMap;->internalOptions:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/icu/text/CaseMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/CaseMap;-><init>(I)V

    return-void
.end method

.method public static whitelist test-api fold()Landroid/icu/text/CaseMap$Fold;
    .registers 1

    .line 52
    invoke-static {}, Landroid/icu/text/CaseMap$Fold;->-$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Fold;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCaseLocale(Ljava/util/Locale;)I
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 31
    if-nez p0, :cond_6

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 34
    :cond_6
    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api toLower()Landroid/icu/text/CaseMap$Lower;
    .registers 1

    .line 40
    invoke-static {}, Landroid/icu/text/CaseMap$Lower;->-$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Lower;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toTitle()Landroid/icu/text/CaseMap$Title;
    .registers 1

    .line 48
    invoke-static {}, Landroid/icu/text/CaseMap$Title;->-$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUpper()Landroid/icu/text/CaseMap$Upper;
    .registers 1

    .line 44
    invoke-static {}, Landroid/icu/text/CaseMap$Upper;->-$$Nest$sfgetDEFAULT()Landroid/icu/text/CaseMap$Upper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api omitUnchangedText()Landroid/icu/text/CaseMap;
.end method
