.class public final enum Landroid/icu/text/SpoofChecker$RestrictionLevel;
.super Ljava/lang/Enum;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RestrictionLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/SpoofChecker$RestrictionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum greylist-max-o ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum greylist-max-o HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum greylist-max-o MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum greylist-max-o MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum greylist-max-o SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum greylist-max-o UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .registers 6

    .line 285
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    sget-object v2, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    sget-object v3, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    sget-object v4, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    sget-object v5, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 290
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 295
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const-string v1, "SINGLE_SCRIPT_RESTRICTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 305
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const-string v1, "HIGHLY_RESTRICTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 311
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const-string v1, "MODERATELY_RESTRICTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 316
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const-string v1, "MINIMALLY_RESTRICTIVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 320
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const-string v1, "UNRESTRICTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 285
    invoke-static {}, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$values()[Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

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

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
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

    .line 285
    const-class v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .registers 1

    .line 285
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v0}, [Landroid/icu/text/SpoofChecker$RestrictionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method
