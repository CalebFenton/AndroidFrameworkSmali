.class public final enum Landroid/icu/text/PersonNameFormatter$DisplayOrder;
.super Ljava/lang/Enum;
.source "PersonNameFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonNameFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PersonNameFormatter$DisplayOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PersonNameFormatter$DisplayOrder;

.field public static final enum blacklist DEFAULT:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

.field public static final enum blacklist FORCE_GIVEN_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

.field public static final enum blacklist FORCE_SURNAME_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

.field public static final enum blacklist SORTING:Landroid/icu/text/PersonNameFormatter$DisplayOrder;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .registers 4

    .line 152
    sget-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->DEFAULT:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    sget-object v1, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->SORTING:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    sget-object v2, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->FORCE_GIVEN_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    sget-object v3, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->FORCE_SURNAME_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 156
    new-instance v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$DisplayOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->DEFAULT:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 163
    new-instance v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    const-string v1, "SORTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$DisplayOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->SORTING:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 169
    new-instance v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    const-string v1, "FORCE_GIVEN_FIRST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$DisplayOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->FORCE_GIVEN_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 175
    new-instance v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    const-string v1, "FORCE_SURNAME_FIRST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$DisplayOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->FORCE_SURNAME_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 152
    invoke-static {}, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->$values()[Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->$VALUES:[Landroid/icu/text/PersonNameFormatter$DisplayOrder;

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

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/PersonNameFormatter$DisplayOrder;
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

    .line 152
    const-class v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .registers 1

    .line 152
    sget-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->$VALUES:[Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    invoke-virtual {v0}, [Landroid/icu/text/PersonNameFormatter$DisplayOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    return-object v0
.end method
