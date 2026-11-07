.class public final enum Landroid/icu/text/DisplayOptions$DisplayLength;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayLength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$DisplayLength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$DisplayLength;

.field public static final enum whitelist test-api LENGTH_FULL:Landroid/icu/text/DisplayOptions$DisplayLength;

.field public static final enum whitelist test-api LENGTH_SHORT:Landroid/icu/text/DisplayOptions$DisplayLength;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$DisplayLength;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$DisplayLength;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$DisplayLength;
    .registers 3

    .line 382
    sget-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->UNDEFINED:Landroid/icu/text/DisplayOptions$DisplayLength;

    sget-object v1, Landroid/icu/text/DisplayOptions$DisplayLength;->LENGTH_FULL:Landroid/icu/text/DisplayOptions$DisplayLength;

    sget-object v2, Landroid/icu/text/DisplayOptions$DisplayLength;->LENGTH_SHORT:Landroid/icu/text/DisplayOptions$DisplayLength;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/DisplayOptions$DisplayLength;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 387
    new-instance v0, Landroid/icu/text/DisplayOptions$DisplayLength;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$DisplayLength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->UNDEFINED:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 391
    new-instance v0, Landroid/icu/text/DisplayOptions$DisplayLength;

    const-string v1, "LENGTH_FULL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$DisplayLength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->LENGTH_FULL:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 396
    new-instance v0, Landroid/icu/text/DisplayOptions$DisplayLength;

    const-string v1, "LENGTH_SHORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayOptions$DisplayLength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->LENGTH_SHORT:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 382
    invoke-static {}, Landroid/icu/text/DisplayOptions$DisplayLength;->$values()[Landroid/icu/text/DisplayOptions$DisplayLength;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->$VALUES:[Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 402
    invoke-static {}, Landroid/icu/text/DisplayOptions$DisplayLength;->values()[Landroid/icu/text/DisplayOptions$DisplayLength;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->VALUES:Ljava/util/List;

    .line 401
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

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$DisplayLength;
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

    .line 382
    const-class v0, Landroid/icu/text/DisplayOptions$DisplayLength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$DisplayLength;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$DisplayLength;
    .registers 1

    .line 382
    sget-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->$VALUES:[Landroid/icu/text/DisplayOptions$DisplayLength;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$DisplayLength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$DisplayLength;

    return-object v0
.end method
