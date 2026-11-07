.class public final enum Landroid/icu/util/ULocale$Minimize;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Minimize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/ULocale$Minimize;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/ULocale$Minimize;

.field public static final enum greylist-max-o FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/ULocale$Minimize;
    .registers 2

    .line 2665
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    sget-object v1, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    filled-new-array {v0, v1}, [Landroid/icu/util/ULocale$Minimize;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2672
    new-instance v0, Landroid/icu/util/ULocale$Minimize;

    const-string v1, "FAVOR_SCRIPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$Minimize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    .line 2679
    new-instance v0, Landroid/icu/util/ULocale$Minimize;

    const-string v1, "FAVOR_REGION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$Minimize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    .line 2665
    invoke-static {}, Landroid/icu/util/ULocale$Minimize;->$values()[Landroid/icu/util/ULocale$Minimize;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$Minimize;->$VALUES:[Landroid/icu/util/ULocale$Minimize;

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

    .line 2666
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/ULocale$Minimize;
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

    .line 2665
    const-class v0, Landroid/icu/util/ULocale$Minimize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale$Minimize;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/ULocale$Minimize;
    .registers 1

    .line 2665
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->$VALUES:[Landroid/icu/util/ULocale$Minimize;

    invoke-virtual {v0}, [Landroid/icu/util/ULocale$Minimize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale$Minimize;

    return-object v0
.end method
