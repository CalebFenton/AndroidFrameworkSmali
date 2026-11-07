.class public final enum Landroid/icu/text/Normalizer2$Mode;
.super Ljava/lang/Enum;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/Normalizer2$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/Normalizer2$Mode;

.field public static final enum whitelist test-api COMPOSE:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum whitelist test-api COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum whitelist test-api DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum whitelist test-api FCD:Landroid/icu/text/Normalizer2$Mode;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/Normalizer2$Mode;
    .registers 4

    .line 70
    sget-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    sget-object v2, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    sget-object v3, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/Normalizer2$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 78
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const-string v1, "COMPOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    .line 86
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const-string v1, "DECOMPOSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    .line 98
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const-string v1, "FCD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    .line 107
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const-string v1, "COMPOSE_CONTIGUOUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    .line 70
    invoke-static {}, Landroid/icu/text/Normalizer2$Mode;->$values()[Landroid/icu/text/Normalizer2$Mode;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->$VALUES:[Landroid/icu/text/Normalizer2$Mode;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/Normalizer2$Mode;
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

    .line 70
    const-class v0, Landroid/icu/text/Normalizer2$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Normalizer2$Mode;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/Normalizer2$Mode;
    .registers 1

    .line 70
    sget-object v0, Landroid/icu/text/Normalizer2$Mode;->$VALUES:[Landroid/icu/text/Normalizer2$Mode;

    invoke-virtual {v0}, [Landroid/icu/text/Normalizer2$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/Normalizer2$Mode;

    return-object v0
.end method
