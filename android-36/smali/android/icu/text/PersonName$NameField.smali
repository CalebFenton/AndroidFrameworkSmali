.class public final enum Landroid/icu/text/PersonName$NameField;
.super Ljava/lang/Enum;
.source "PersonName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PersonName$NameField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist CREDENTIALS:Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist GENERATION:Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist GIVEN:Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist GIVEN2:Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist SURNAME:Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist SURNAME2:Landroid/icu/text/PersonName$NameField;

.field public static final enum blacklist TITLE:Landroid/icu/text/PersonName$NameField;


# instance fields
.field private final blacklist name:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PersonName$NameField;
    .registers 7

    .line 27
    sget-object v0, Landroid/icu/text/PersonName$NameField;->TITLE:Landroid/icu/text/PersonName$NameField;

    sget-object v1, Landroid/icu/text/PersonName$NameField;->GIVEN:Landroid/icu/text/PersonName$NameField;

    sget-object v2, Landroid/icu/text/PersonName$NameField;->GIVEN2:Landroid/icu/text/PersonName$NameField;

    sget-object v3, Landroid/icu/text/PersonName$NameField;->SURNAME:Landroid/icu/text/PersonName$NameField;

    sget-object v4, Landroid/icu/text/PersonName$NameField;->SURNAME2:Landroid/icu/text/PersonName$NameField;

    sget-object v5, Landroid/icu/text/PersonName$NameField;->GENERATION:Landroid/icu/text/PersonName$NameField;

    sget-object v6, Landroid/icu/text/PersonName$NameField;->CREDENTIALS:Landroid/icu/text/PersonName$NameField;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/text/PersonName$NameField;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 32
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x0

    const-string v2, "title"

    const-string v3, "TITLE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->TITLE:Landroid/icu/text/PersonName$NameField;

    .line 37
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x1

    const-string v2, "given"

    const-string v3, "GIVEN"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->GIVEN:Landroid/icu/text/PersonName$NameField;

    .line 43
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x2

    const-string v2, "given2"

    const-string v3, "GIVEN2"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->GIVEN2:Landroid/icu/text/PersonName$NameField;

    .line 48
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x3

    const-string v2, "surname"

    const-string v3, "SURNAME"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->SURNAME:Landroid/icu/text/PersonName$NameField;

    .line 55
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x4

    const-string v2, "surname2"

    const-string v3, "SURNAME2"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->SURNAME2:Landroid/icu/text/PersonName$NameField;

    .line 61
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x5

    const-string v2, "generation"

    const-string v3, "GENERATION"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->GENERATION:Landroid/icu/text/PersonName$NameField;

    .line 67
    new-instance v0, Landroid/icu/text/PersonName$NameField;

    const/4 v1, 0x6

    const-string v2, "credentials"

    const-string v3, "CREDENTIALS"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/PersonName$NameField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/PersonName$NameField;->CREDENTIALS:Landroid/icu/text/PersonName$NameField;

    .line 27
    invoke-static {}, Landroid/icu/text/PersonName$NameField;->$values()[Landroid/icu/text/PersonName$NameField;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PersonName$NameField;->$VALUES:[Landroid/icu/text/PersonName$NameField;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Landroid/icu/text/PersonName$NameField;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static blacklist forString(Ljava/lang/String;)Landroid/icu/text/PersonName$NameField;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-static {}, Landroid/icu/text/PersonName$NameField;->values()[Landroid/icu/text/PersonName$NameField;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 91
    .local v3, "field":Landroid/icu/text/PersonName$NameField;
    iget-object v4, v3, Landroid/icu/text/PersonName$NameField;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 92
    return-object v3

    .line 90
    .end local v3    # "field":Landroid/icu/text/PersonName$NameField;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 95
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid field name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/PersonName$NameField;
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

    .line 27
    const-class v0, Landroid/icu/text/PersonName$NameField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PersonName$NameField;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/PersonName$NameField;
    .registers 1

    .line 27
    sget-object v0, Landroid/icu/text/PersonName$NameField;->$VALUES:[Landroid/icu/text/PersonName$NameField;

    invoke-virtual {v0}, [Landroid/icu/text/PersonName$NameField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PersonName$NameField;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/icu/text/PersonName$NameField;->name:Ljava/lang/String;

    return-object v0
.end method
