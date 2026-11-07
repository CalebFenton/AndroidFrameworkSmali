.class public final enum Landroid/icu/util/GenderInfo$Gender;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/GenderInfo$Gender;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/GenderInfo$Gender;

.field public static final enum greylist-max-o FEMALE:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o MALE:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o OTHER:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/GenderInfo$Gender;
    .registers 3

    .line 42
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/GenderInfo$Gender;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    .line 54
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    const-string v1, "FEMALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    .line 60
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    .line 42
    invoke-static {}, Landroid/icu/util/GenderInfo$Gender;->$values()[Landroid/icu/util/GenderInfo$Gender;

    move-result-object v0

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->$VALUES:[Landroid/icu/util/GenderInfo$Gender;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$Gender;
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

    .line 42
    const-class v0, Landroid/icu/util/GenderInfo$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/GenderInfo$Gender;
    .registers 1

    .line 42
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->$VALUES:[Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v0}, [Landroid/icu/util/GenderInfo$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/GenderInfo$Gender;

    return-object v0
.end method
