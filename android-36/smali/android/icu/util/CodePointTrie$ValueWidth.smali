.class public final enum Landroid/icu/util/CodePointTrie$ValueWidth;
.super Ljava/lang/Enum;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/CodePointTrie$ValueWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/CodePointTrie$ValueWidth;

.field public static final enum blacklist BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

.field public static final enum blacklist BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

.field public static final enum blacklist BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/CodePointTrie$ValueWidth;
    .registers 3

    .line 65
    sget-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    sget-object v1, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    sget-object v2, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/CodePointTrie$ValueWidth;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Landroid/icu/util/CodePointTrie$ValueWidth;

    const-string v1, "BITS_16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointTrie$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 74
    new-instance v0, Landroid/icu/util/CodePointTrie$ValueWidth;

    const-string v1, "BITS_32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointTrie$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 79
    new-instance v0, Landroid/icu/util/CodePointTrie$ValueWidth;

    const-string v1, "BITS_8"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointTrie$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 65
    invoke-static {}, Landroid/icu/util/CodePointTrie$ValueWidth;->$values()[Landroid/icu/util/CodePointTrie$ValueWidth;

    move-result-object v0

    sput-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->$VALUES:[Landroid/icu/util/CodePointTrie$ValueWidth;

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

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/util/CodePointTrie$ValueWidth;
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

    .line 65
    const-class v0, Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointTrie$ValueWidth;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/util/CodePointTrie$ValueWidth;
    .registers 1

    .line 65
    sget-object v0, Landroid/icu/util/CodePointTrie$ValueWidth;->$VALUES:[Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-virtual {v0}, [Landroid/icu/util/CodePointTrie$ValueWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/CodePointTrie$ValueWidth;

    return-object v0
.end method
