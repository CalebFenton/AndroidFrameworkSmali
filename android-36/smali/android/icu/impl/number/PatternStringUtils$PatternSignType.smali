.class public final enum Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
.super Ljava/lang/Enum;
.source "PatternStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PatternSignType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/PatternStringUtils$PatternSignType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final enum blacklist NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final enum blacklist POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final enum blacklist POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final blacklist VALUES:[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    .registers 3

    .line 24
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    sget-object v1, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    sget-object v2, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    const-string v1, "POS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 28
    new-instance v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    const-string v1, "POS_SIGN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 30
    new-instance v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    const-string v1, "NEG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 24
    invoke-static {}, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->$values()[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->$VALUES:[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 32
    invoke-static {}, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->values()[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->VALUES:[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
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

    .line 24
    const-class v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    .registers 1

    .line 24
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->$VALUES:[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    invoke-virtual {v0}, [Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0
.end method
