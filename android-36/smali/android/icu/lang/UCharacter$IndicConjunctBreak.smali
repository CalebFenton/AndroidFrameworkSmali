.class public final enum Landroid/icu/lang/UCharacter$IndicConjunctBreak;
.super Ljava/lang/Enum;
.source "UCharacter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicConjunctBreak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/lang/UCharacter$IndicConjunctBreak;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/lang/UCharacter$IndicConjunctBreak;

.field public static final enum blacklist CONSONANT:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

.field public static final enum blacklist EXTEND:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

.field public static final enum blacklist LINKER:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

.field public static final enum blacklist NONE:Landroid/icu/lang/UCharacter$IndicConjunctBreak;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/lang/UCharacter$IndicConjunctBreak;
    .registers 4

    .line 3614
    sget-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->NONE:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    sget-object v1, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->CONSONANT:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    sget-object v2, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->EXTEND:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    sget-object v3, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->LINKER:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3616
    new-instance v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IndicConjunctBreak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->NONE:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    .line 3618
    new-instance v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    const-string v1, "CONSONANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IndicConjunctBreak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->CONSONANT:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    .line 3620
    new-instance v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    const-string v1, "EXTEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IndicConjunctBreak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->EXTEND:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    .line 3622
    new-instance v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    const-string v1, "LINKER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IndicConjunctBreak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->LINKER:Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    .line 3614
    invoke-static {}, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->$values()[Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    move-result-object v0

    sput-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->$VALUES:[Landroid/icu/lang/UCharacter$IndicConjunctBreak;

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

    .line 3614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/lang/UCharacter$IndicConjunctBreak;
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

    .line 3614
    const-class v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/lang/UCharacter$IndicConjunctBreak;
    .registers 1

    .line 3614
    sget-object v0, Landroid/icu/lang/UCharacter$IndicConjunctBreak;->$VALUES:[Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    invoke-virtual {v0}, [Landroid/icu/lang/UCharacter$IndicConjunctBreak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/lang/UCharacter$IndicConjunctBreak;

    return-object v0
.end method
