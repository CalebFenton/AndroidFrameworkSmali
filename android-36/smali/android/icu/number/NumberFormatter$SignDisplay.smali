.class public final enum Landroid/icu/number/NumberFormatter$SignDisplay;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$SignDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum whitelist test-api NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberFormatter$SignDisplay;
    .registers 9

    .line 341
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v3, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v6, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v7, Landroid/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v8, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    filled-new-array/range {v0 .. v8}, [Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 351
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 359
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "ALWAYS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 366
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "NEVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 383
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "ACCOUNTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 393
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "ACCOUNTING_ALWAYS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 401
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "EXCEPT_ZERO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 410
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "ACCOUNTING_EXCEPT_ZERO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 415
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "NEGATIVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 420
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const-string v1, "ACCOUNTING_NEGATIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 341
    invoke-static {}, Landroid/icu/number/NumberFormatter$SignDisplay;->$values()[Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->$VALUES:[Landroid/icu/number/NumberFormatter$SignDisplay;

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

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$SignDisplay;
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

    .line 341
    const-class v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberFormatter$SignDisplay;
    .registers 1

    .line 341
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->$VALUES:[Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$SignDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0
.end method
