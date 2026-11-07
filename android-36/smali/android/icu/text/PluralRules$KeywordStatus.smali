.class public final enum Landroid/icu/text/PluralRules$KeywordStatus;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeywordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PluralRules$KeywordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum greylist-max-o BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum greylist-max-o INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum greylist-max-o SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum greylist-max-o UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum greylist-max-o UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PluralRules$KeywordStatus;
    .registers 5

    .line 2631
    sget-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    sget-object v2, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    sget-object v3, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    sget-object v4, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/text/PluralRules$KeywordStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2637
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2643
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const-string v1, "SUPPRESSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2649
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const-string v1, "UNIQUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2655
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const-string v1, "BOUNDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2661
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const-string v1, "UNBOUNDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2631
    invoke-static {}, Landroid/icu/text/PluralRules$KeywordStatus;->$values()[Landroid/icu/text/PluralRules$KeywordStatus;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->$VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2631
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$KeywordStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2631
    const-class v0, Landroid/icu/text/PluralRules$KeywordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/PluralRules$KeywordStatus;
    .registers 1

    .line 2631
    sget-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->$VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

    invoke-virtual {v0}, [Landroid/icu/text/PluralRules$KeywordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v0
.end method
