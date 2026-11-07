.class final enum Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
.super Ljava/lang/Enum;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DTPGflags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum greylist-max-o FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum greylist-max-o SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
    .registers 2

    .line 2214
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    filled-new-array {v0, v1}, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2215
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    const-string v1, "FIX_FRACTIONAL_SECONDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    .line 2216
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    const-string v1, "SKELETON_USES_CAP_J"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    .line 2214
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$values()[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

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

    .line 2214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
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

    .line 2214
    const-class v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
    .registers 1

    .line 2214
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v0}, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    return-object v0
.end method
