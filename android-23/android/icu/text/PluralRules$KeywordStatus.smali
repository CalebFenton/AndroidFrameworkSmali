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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$KeywordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

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
    .line 2266
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@7
    const-string/jumbo v1, "INVALID"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    #@d
    .line 2272
    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    #@f
    .line 2273
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@11
    const-string/jumbo v1, "SUPPRESSED"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    #@17
    .line 2279
    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@19
    .line 2280
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@1b
    const-string/jumbo v1, "UNIQUE"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    #@21
    .line 2286
    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    #@23
    .line 2287
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@25
    const-string/jumbo v1, "BOUNDED"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 2293
    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@2d
    .line 2294
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@2f
    const-string/jumbo v1, "UNBOUNDED"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    #@35
    .line 2300
    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@37
    .line 2265
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/icu/text/PluralRules$KeywordStatus;

    #@3a
    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->$VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 2265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2265
    const-class v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/PluralRules$KeywordStatus;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 1

    #@0
    .prologue
    .line 2265
    sget-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->$VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

    #@2
    return-object v0
.end method
