.class public final enum Landroid/icu/text/DisplayOptions$SubstituteHandling;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubstituteHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$SubstituteHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$SubstituteHandling;

.field public static final enum whitelist test-api NO_SUBSTITUTE:Landroid/icu/text/DisplayOptions$SubstituteHandling;

.field public static final enum whitelist test-api SUBSTITUTE:Landroid/icu/text/DisplayOptions$SubstituteHandling;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$SubstituteHandling;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$SubstituteHandling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$SubstituteHandling;
    .registers 3

    .line 355
    sget-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->UNDEFINED:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    sget-object v1, Landroid/icu/text/DisplayOptions$SubstituteHandling;->SUBSTITUTE:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    sget-object v2, Landroid/icu/text/DisplayOptions$SubstituteHandling;->NO_SUBSTITUTE:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/DisplayOptions$SubstituteHandling;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 360
    new-instance v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$SubstituteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->UNDEFINED:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 365
    new-instance v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;

    const-string v1, "SUBSTITUTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$SubstituteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->SUBSTITUTE:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 370
    new-instance v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;

    const-string v1, "NO_SUBSTITUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$SubstituteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->NO_SUBSTITUTE:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 355
    invoke-static {}, Landroid/icu/text/DisplayOptions$SubstituteHandling;->$values()[Landroid/icu/text/DisplayOptions$SubstituteHandling;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->$VALUES:[Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 376
    invoke-static {}, Landroid/icu/text/DisplayOptions$SubstituteHandling;->values()[Landroid/icu/text/DisplayOptions$SubstituteHandling;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->VALUES:Ljava/util/List;

    .line 375
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

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$SubstituteHandling;
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

    .line 355
    const-class v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$SubstituteHandling;
    .registers 1

    .line 355
    sget-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->$VALUES:[Landroid/icu/text/DisplayOptions$SubstituteHandling;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$SubstituteHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$SubstituteHandling;

    return-object v0
.end method
