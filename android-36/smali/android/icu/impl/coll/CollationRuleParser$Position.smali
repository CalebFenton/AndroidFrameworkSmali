.class final enum Landroid/icu/impl/coll/CollationRuleParser$Position;
.super Ljava/lang/Enum;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/coll/CollationRuleParser$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum blacklist LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/coll/CollationRuleParser$Position;
    .registers 14

    .line 35
    sget-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v2, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v4, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v5, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v6, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v7, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v8, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v9, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v10, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v11, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v12, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v13, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    filled-new-array/range {v0 .. v13}, [Landroid/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_TERTIARY_IGNORABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 37
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_TERTIARY_IGNORABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 38
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_SECONDARY_IGNORABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 39
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_SECONDARY_IGNORABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 40
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_PRIMARY_IGNORABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 41
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_PRIMARY_IGNORABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 42
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_VARIABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 43
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_VARIABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 44
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_REGULAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 45
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_REGULAR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 46
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_IMPLICIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 47
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_IMPLICIT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 48
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "FIRST_TRAILING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 49
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "LAST_TRAILING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 35
    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->$values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/CollationRuleParser$Position;
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

    .line 35
    const-class v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/coll/CollationRuleParser$Position;
    .registers 1

    .line 35
    sget-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v0}, [Landroid/icu/impl/coll/CollationRuleParser$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-object v0
.end method
