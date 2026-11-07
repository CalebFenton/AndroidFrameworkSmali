.class public final enum Landroid/icu/util/CodePointTrie$Type;
.super Ljava/lang/Enum;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/CodePointTrie$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/CodePointTrie$Type;

.field public static final enum blacklist FAST:Landroid/icu/util/CodePointTrie$Type;

.field public static final enum blacklist SMALL:Landroid/icu/util/CodePointTrie$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/CodePointTrie$Type;
    .registers 2

    .line 41
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    sget-object v1, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    filled-new-array {v0, v1}, [Landroid/icu/util/CodePointTrie$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Landroid/icu/util/CodePointTrie$Type;

    const-string v1, "FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointTrie$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    .line 54
    new-instance v0, Landroid/icu/util/CodePointTrie$Type;

    const-string v1, "SMALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointTrie$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    .line 41
    invoke-static {}, Landroid/icu/util/CodePointTrie$Type;->$values()[Landroid/icu/util/CodePointTrie$Type;

    move-result-object v0

    sput-object v0, Landroid/icu/util/CodePointTrie$Type;->$VALUES:[Landroid/icu/util/CodePointTrie$Type;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/util/CodePointTrie$Type;
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

    .line 41
    const-class v0, Landroid/icu/util/CodePointTrie$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointTrie$Type;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/util/CodePointTrie$Type;
    .registers 1

    .line 41
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->$VALUES:[Landroid/icu/util/CodePointTrie$Type;

    invoke-virtual {v0}, [Landroid/icu/util/CodePointTrie$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/CodePointTrie$Type;

    return-object v0
.end method
