.class final enum Landroid/icu/util/StringTrieBuilder$State;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/StringTrieBuilder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum greylist-max-o ADDING:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum greylist-max-o BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum greylist-max-o BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum greylist-max-o BUILT:Landroid/icu/util/StringTrieBuilder$State;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/StringTrieBuilder$State;
    .registers 4

    .line 875
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v2, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v3, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/util/StringTrieBuilder$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 876
    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string v1, "ADDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string v1, "BUILDING_FAST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string v1, "BUILDING_SMALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string v1, "BUILT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    .line 875
    invoke-static {}, Landroid/icu/util/StringTrieBuilder$State;->$values()[Landroid/icu/util/StringTrieBuilder$State;

    move-result-object v0

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->$VALUES:[Landroid/icu/util/StringTrieBuilder$State;

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

    .line 875
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/StringTrieBuilder$State;
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

    .line 875
    const-class v0, Landroid/icu/util/StringTrieBuilder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$State;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/StringTrieBuilder$State;
    .registers 1

    .line 875
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->$VALUES:[Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v0}, [Landroid/icu/util/StringTrieBuilder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/StringTrieBuilder$State;

    return-object v0
.end method
