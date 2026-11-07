.class public final enum Landroid/icu/util/StringTrieBuilder$Option;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/StringTrieBuilder$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

.field public static final enum greylist-max-o FAST:Landroid/icu/util/StringTrieBuilder$Option;

.field public static final enum greylist-max-o SMALL:Landroid/icu/util/StringTrieBuilder$Option;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/StringTrieBuilder$Option;
    .registers 2

    .line 31
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    filled-new-array {v0, v1}, [Landroid/icu/util/StringTrieBuilder$Option;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/icu/util/StringTrieBuilder$Option;

    const-string v1, "FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    .line 45
    new-instance v0, Landroid/icu/util/StringTrieBuilder$Option;

    const-string v1, "SMALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    .line 31
    invoke-static {}, Landroid/icu/util/StringTrieBuilder$Option;->$values()[Landroid/icu/util/StringTrieBuilder$Option;

    move-result-object v0

    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->$VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/StringTrieBuilder$Option;
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

    .line 31
    const-class v0, Landroid/icu/util/StringTrieBuilder$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Option;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/StringTrieBuilder$Option;
    .registers 1

    .line 31
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->$VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v0}, [Landroid/icu/util/StringTrieBuilder$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/StringTrieBuilder$Option;

    return-object v0
.end method
