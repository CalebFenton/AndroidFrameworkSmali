.class public final enum Landroid/icu/text/PluralRules$SampleType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PluralRules$SampleType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PluralRules$SampleType;

.field public static final enum greylist-max-o DECIMAL:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o INTEGER:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PluralRules$SampleType;
    .registers 2

    .line 1133
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    filled-new-array {v0, v1}, [Landroid/icu/text/PluralRules$SampleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1139
    new-instance v0, Landroid/icu/text/PluralRules$SampleType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    .line 1145
    new-instance v0, Landroid/icu/text/PluralRules$SampleType;

    const-string v1, "DECIMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    .line 1133
    invoke-static {}, Landroid/icu/text/PluralRules$SampleType;->$values()[Landroid/icu/text/PluralRules$SampleType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->$VALUES:[Landroid/icu/text/PluralRules$SampleType;

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

    .line 1134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$SampleType;
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

    .line 1133
    const-class v0, Landroid/icu/text/PluralRules$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$SampleType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/PluralRules$SampleType;
    .registers 1

    .line 1133
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->$VALUES:[Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v0}, [Landroid/icu/text/PluralRules$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PluralRules$SampleType;

    return-object v0
.end method
