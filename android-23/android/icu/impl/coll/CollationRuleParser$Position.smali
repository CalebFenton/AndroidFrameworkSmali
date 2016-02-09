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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/coll/CollationRuleParser$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 30
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@7
    const-string/jumbo v1, "FIRST_TERTIARY_IGNORABLE"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@f
    .line 31
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@11
    const-string/jumbo v1, "LAST_TERTIARY_IGNORABLE"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@19
    .line 32
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@1b
    const-string/jumbo v1, "FIRST_SECONDARY_IGNORABLE"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@23
    .line 33
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@25
    const-string/jumbo v1, "LAST_SECONDARY_IGNORABLE"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@2d
    .line 34
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@2f
    const-string/jumbo v1, "FIRST_PRIMARY_IGNORABLE"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@37
    .line 35
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@39
    const-string/jumbo v1, "LAST_PRIMARY_IGNORABLE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@42
    .line 36
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@44
    const-string/jumbo v1, "FIRST_VARIABLE"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@4d
    .line 37
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@4f
    const-string/jumbo v1, "LAST_VARIABLE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@58
    .line 38
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@5a
    const-string/jumbo v1, "FIRST_REGULAR"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@64
    .line 39
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@66
    const-string/jumbo v1, "LAST_REGULAR"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@70
    .line 40
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@72
    const-string/jumbo v1, "FIRST_IMPLICIT"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@7c
    .line 41
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@7e
    const-string/jumbo v1, "LAST_IMPLICIT"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@88
    .line 42
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@8a
    const-string/jumbo v1, "FIRST_TRAILING"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@94
    .line 43
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@96
    const-string/jumbo v1, "LAST_TRAILING"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@a0
    .line 29
    const/16 v0, 0xe

    #@a2
    new-array v0, v0, [Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@a4
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@a6
    aput-object v1, v0, v3

    #@a8
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@aa
    aput-object v1, v0, v4

    #@ac
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@ae
    aput-object v1, v0, v5

    #@b0
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@b2
    aput-object v1, v0, v6

    #@b4
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@b6
    aput-object v1, v0, v7

    #@b8
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@ba
    const/4 v2, 0x5

    #@bb
    aput-object v1, v0, v2

    #@bd
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@bf
    const/4 v2, 0x6

    #@c0
    aput-object v1, v0, v2

    #@c2
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@c4
    const/4 v2, 0x7

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@c9
    const/16 v2, 0x8

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@cf
    const/16 v2, 0x9

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@d5
    const/16 v2, 0xa

    #@d7
    aput-object v1, v0, v2

    #@d9
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@db
    const/16 v2, 0xb

    #@dd
    aput-object v1, v0, v2

    #@df
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@e1
    const/16 v2, 0xc

    #@e3
    aput-object v1, v0, v2

    #@e5
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@e7
    const/16 v2, 0xd

    #@e9
    aput-object v1, v0, v2

    #@eb
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@ed
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/CollationRuleParser$Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@2
    return-object v0
.end method
