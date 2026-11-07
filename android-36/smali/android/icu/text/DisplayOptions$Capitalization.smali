.class public final enum Landroid/icu/text/DisplayOptions$Capitalization;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$Capitalization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$Capitalization;

.field public static final enum whitelist test-api BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayOptions$Capitalization;

.field public static final enum whitelist test-api MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayOptions$Capitalization;

.field public static final enum whitelist test-api STANDALONE:Landroid/icu/text/DisplayOptions$Capitalization;

.field public static final enum whitelist test-api UI_LIST_OR_MENU:Landroid/icu/text/DisplayOptions$Capitalization;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$Capitalization;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$Capitalization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$Capitalization;
    .registers 5

    .line 408
    sget-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->UNDEFINED:Landroid/icu/text/DisplayOptions$Capitalization;

    sget-object v1, Landroid/icu/text/DisplayOptions$Capitalization;->BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayOptions$Capitalization;

    sget-object v2, Landroid/icu/text/DisplayOptions$Capitalization;->MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayOptions$Capitalization;

    sget-object v3, Landroid/icu/text/DisplayOptions$Capitalization;->STANDALONE:Landroid/icu/text/DisplayOptions$Capitalization;

    sget-object v4, Landroid/icu/text/DisplayOptions$Capitalization;->UI_LIST_OR_MENU:Landroid/icu/text/DisplayOptions$Capitalization;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/text/DisplayOptions$Capitalization;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 413
    new-instance v0, Landroid/icu/text/DisplayOptions$Capitalization;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->UNDEFINED:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 419
    new-instance v0, Landroid/icu/text/DisplayOptions$Capitalization;

    const-string v1, "BEGINNING_OF_SENTENCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 425
    new-instance v0, Landroid/icu/text/DisplayOptions$Capitalization;

    const-string v1, "MIDDLE_OF_SENTENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 432
    new-instance v0, Landroid/icu/text/DisplayOptions$Capitalization;

    const-string v1, "STANDALONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->STANDALONE:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 438
    new-instance v0, Landroid/icu/text/DisplayOptions$Capitalization;

    const-string v1, "UI_LIST_OR_MENU"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->UI_LIST_OR_MENU:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 408
    invoke-static {}, Landroid/icu/text/DisplayOptions$Capitalization;->$values()[Landroid/icu/text/DisplayOptions$Capitalization;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->$VALUES:[Landroid/icu/text/DisplayOptions$Capitalization;

    .line 444
    invoke-static {}, Landroid/icu/text/DisplayOptions$Capitalization;->values()[Landroid/icu/text/DisplayOptions$Capitalization;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->VALUES:Ljava/util/List;

    .line 443
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

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$Capitalization;
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

    .line 408
    const-class v0, Landroid/icu/text/DisplayOptions$Capitalization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$Capitalization;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$Capitalization;
    .registers 1

    .line 408
    sget-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->$VALUES:[Landroid/icu/text/DisplayOptions$Capitalization;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$Capitalization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$Capitalization;

    return-object v0
.end method
