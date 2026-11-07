.class public final enum Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
.super Ljava/lang/Enum;
.source "DecimalFormatProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/DecimalFormatProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

.field public static final enum blacklist JAVA_COMPATIBILITY:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

.field public static final enum blacklist LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

.field public static final enum blacklist STRICT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    .registers 3

    .line 38
    sget-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    sget-object v1, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    sget-object v2, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->JAVA_COMPATIBILITY:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 68
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    const-string v1, "STRICT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 75
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    const-string v1, "JAVA_COMPATIBILITY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->JAVA_COMPATIBILITY:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 38
    invoke-static {}, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->$values()[Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->$VALUES:[Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
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

    .line 38
    const-class v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    .registers 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->$VALUES:[Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-virtual {v0}, [Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object v0
.end method
