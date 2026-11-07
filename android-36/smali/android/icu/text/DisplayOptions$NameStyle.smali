.class public final enum Landroid/icu/text/DisplayOptions$NameStyle;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$NameStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$NameStyle;

.field public static final enum whitelist test-api DIALECT_NAMES:Landroid/icu/text/DisplayOptions$NameStyle;

.field public static final enum whitelist test-api STANDARD_NAMES:Landroid/icu/text/DisplayOptions$NameStyle;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$NameStyle;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$NameStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$NameStyle;
    .registers 3

    .line 328
    sget-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->UNDEFINED:Landroid/icu/text/DisplayOptions$NameStyle;

    sget-object v1, Landroid/icu/text/DisplayOptions$NameStyle;->STANDARD_NAMES:Landroid/icu/text/DisplayOptions$NameStyle;

    sget-object v2, Landroid/icu/text/DisplayOptions$NameStyle;->DIALECT_NAMES:Landroid/icu/text/DisplayOptions$NameStyle;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/DisplayOptions$NameStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 333
    new-instance v0, Landroid/icu/text/DisplayOptions$NameStyle;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->UNDEFINED:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 338
    new-instance v0, Landroid/icu/text/DisplayOptions$NameStyle;

    const-string v1, "STANDARD_NAMES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->STANDARD_NAMES:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 343
    new-instance v0, Landroid/icu/text/DisplayOptions$NameStyle;

    const-string v1, "DIALECT_NAMES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->DIALECT_NAMES:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 328
    invoke-static {}, Landroid/icu/text/DisplayOptions$NameStyle;->$values()[Landroid/icu/text/DisplayOptions$NameStyle;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->$VALUES:[Landroid/icu/text/DisplayOptions$NameStyle;

    .line 349
    invoke-static {}, Landroid/icu/text/DisplayOptions$NameStyle;->values()[Landroid/icu/text/DisplayOptions$NameStyle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->VALUES:Ljava/util/List;

    .line 348
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

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$NameStyle;
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

    .line 328
    const-class v0, Landroid/icu/text/DisplayOptions$NameStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$NameStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$NameStyle;
    .registers 1

    .line 328
    sget-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->$VALUES:[Landroid/icu/text/DisplayOptions$NameStyle;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$NameStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$NameStyle;

    return-object v0
.end method
