.class public final enum Landroid/icu/text/PersonName$FieldModifier;
.super Ljava/lang/Enum;
.source "PersonName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldModifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PersonName$FieldModifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist ALL_CAPS:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist CORE:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist GENITIVE:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist INFORMAL:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist INITIAL:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist INITIAL_CAP:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist MONOGRAM:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist PREFIX:Landroid/icu/text/PersonName$FieldModifier;

.field public static final enum blacklist RETAIN:Landroid/icu/text/PersonName$FieldModifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist VOCATIVE:Landroid/icu/text/PersonName$FieldModifier;


# instance fields
.field private final blacklist name:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PersonName$FieldModifier;
    .registers 10

    .line 102
    sget-object v0, Landroid/icu/text/PersonName$FieldModifier;->INFORMAL:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v1, Landroid/icu/text/PersonName$FieldModifier;->PREFIX:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v2, Landroid/icu/text/PersonName$FieldModifier;->CORE:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v3, Landroid/icu/text/PersonName$FieldModifier;->INITIAL:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v4, Landroid/icu/text/PersonName$FieldModifier;->MONOGRAM:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v5, Landroid/icu/text/PersonName$FieldModifier;->ALL_CAPS:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v6, Landroid/icu/text/PersonName$FieldModifier;->RETAIN:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v7, Landroid/icu/text/PersonName$FieldModifier;->INITIAL_CAP:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v8, Landroid/icu/text/PersonName$FieldModifier;->GENITIVE:Landroid/icu/text/PersonName$FieldModifier;

    sget-object v9, Landroid/icu/text/PersonName$FieldModifier;->VOCATIVE:Landroid/icu/text/PersonName$FieldModifier;

    filled-new-array/range {v0 .. v9}, [Landroid/icu/text/PersonName$FieldModifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 109
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x0

    const-string v2, "informal"

    const-string v3, "INFORMAL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->INFORMAL:Landroid/icu/text/PersonName$FieldModifier;

    .line 117
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x1

    const-string v2, "prefix"

    const-string v3, "PREFIX"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->PREFIX:Landroid/icu/text/PersonName$FieldModifier;

    .line 125
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x2

    const-string v2, "core"

    const-string v3, "CORE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->CORE:Landroid/icu/text/PersonName$FieldModifier;

    .line 132
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x3

    const-string v2, "initial"

    const-string v3, "INITIAL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->INITIAL:Landroid/icu/text/PersonName$FieldModifier;

    .line 140
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x4

    const-string v2, "monogram"

    const-string v3, "MONOGRAM"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->MONOGRAM:Landroid/icu/text/PersonName$FieldModifier;

    .line 146
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x5

    const-string v2, "allCaps"

    const-string v3, "ALL_CAPS"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->ALL_CAPS:Landroid/icu/text/PersonName$FieldModifier;

    .line 155
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x6

    const-string v2, "retain"

    const-string v3, "RETAIN"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->RETAIN:Landroid/icu/text/PersonName$FieldModifier;

    .line 163
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/4 v1, 0x7

    const-string v2, "initialCap"

    const-string v3, "INITIAL_CAP"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->INITIAL_CAP:Landroid/icu/text/PersonName$FieldModifier;

    .line 170
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/16 v1, 0x8

    const-string v2, "genitive"

    const-string v3, "GENITIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->GENITIVE:Landroid/icu/text/PersonName$FieldModifier;

    .line 177
    new-instance v0, Landroid/icu/text/PersonName$FieldModifier;

    const/16 v1, 0x9

    const-string v2, "vocative"

    const-string v3, "VOCATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$FieldModifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->VOCATIVE:Landroid/icu/text/PersonName$FieldModifier;

    .line 102
    invoke-static {}, Landroid/icu/text/PersonName$FieldModifier;->$values()[Landroid/icu/text/PersonName$FieldModifier;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PersonName$FieldModifier;->$VALUES:[Landroid/icu/text/PersonName$FieldModifier;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput-object p3, p0, Landroid/icu/text/PersonName$FieldModifier;->name:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public static blacklist forString(Ljava/lang/String;)Landroid/icu/text/PersonName$FieldModifier;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Landroid/icu/text/PersonName$FieldModifier;->values()[Landroid/icu/text/PersonName$FieldModifier;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 198
    .local v3, "modifier":Landroid/icu/text/PersonName$FieldModifier;
    iget-object v4, v3, Landroid/icu/text/PersonName$FieldModifier;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 199
    return-object v3

    .line 197
    .end local v3    # "modifier":Landroid/icu/text/PersonName$FieldModifier;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 202
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modifier name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/PersonName$FieldModifier;
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

    .line 102
    const-class v0, Landroid/icu/text/PersonName$FieldModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PersonName$FieldModifier;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/PersonName$FieldModifier;
    .registers 1

    .line 102
    sget-object v0, Landroid/icu/text/PersonName$FieldModifier;->$VALUES:[Landroid/icu/text/PersonName$FieldModifier;

    invoke-virtual {v0}, [Landroid/icu/text/PersonName$FieldModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PersonName$FieldModifier;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/icu/text/PersonName$FieldModifier;->name:Ljava/lang/String;

    return-object v0
.end method
