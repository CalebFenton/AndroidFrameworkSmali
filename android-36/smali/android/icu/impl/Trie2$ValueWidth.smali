.class final enum Landroid/icu/impl/Trie2$ValueWidth;
.super Ljava/lang/Enum;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/Trie2$ValueWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/Trie2$ValueWidth;

.field public static final enum greylist-max-o BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

.field public static final enum greylist-max-o BITS_32:Landroid/icu/impl/Trie2$ValueWidth;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/Trie2$ValueWidth;
    .registers 2

    .line 625
    sget-object v0, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    filled-new-array {v0, v1}, [Landroid/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 626
    new-instance v0, Landroid/icu/impl/Trie2$ValueWidth;

    const-string v1, "BITS_16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Trie2$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    .line 627
    new-instance v0, Landroid/icu/impl/Trie2$ValueWidth;

    const-string v1, "BITS_32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Trie2$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    .line 625
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->$values()[Landroid/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/Trie2$ValueWidth;->$VALUES:[Landroid/icu/impl/Trie2$ValueWidth;

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

    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/impl/Trie2$ValueWidth;
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

    .line 625
    const-class v0, Landroid/icu/impl/Trie2$ValueWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$ValueWidth;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/impl/Trie2$ValueWidth;
    .registers 1

    .line 625
    sget-object v0, Landroid/icu/impl/Trie2$ValueWidth;->$VALUES:[Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v0}, [Landroid/icu/impl/Trie2$ValueWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/Trie2$ValueWidth;

    return-object v0
.end method
