.class final enum Landroid/media/internal/guava_common/base/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/internal/guava_common/base/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/media/internal/guava_common/base/AbstractIterator$State;

.field public static final enum blacklist DONE:Landroid/media/internal/guava_common/base/AbstractIterator$State;

.field public static final enum blacklist FAILED:Landroid/media/internal/guava_common/base/AbstractIterator$State;

.field public static final enum blacklist NOT_READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

.field public static final enum blacklist READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;


# direct methods
.method private static synthetic blacklist $values()[Landroid/media/internal/guava_common/base/AbstractIterator$State;
    .registers 4

    .line 38
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    sget-object v1, Landroid/media/internal/guava_common/base/AbstractIterator$State;->NOT_READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    sget-object v2, Landroid/media/internal/guava_common/base/AbstractIterator$State;->DONE:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    sget-object v3, Landroid/media/internal/guava_common/base/AbstractIterator$State;->FAILED:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    filled-new-array {v0, v1, v2, v3}, [Landroid/media/internal/guava_common/base/AbstractIterator$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    .line 40
    new-instance v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->NOT_READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    .line 41
    new-instance v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->DONE:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    .line 42
    new-instance v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->FAILED:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    .line 38
    invoke-static {}, Landroid/media/internal/guava_common/base/AbstractIterator$State;->$values()[Landroid/media/internal/guava_common/base/AbstractIterator$State;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->$VALUES:[Landroid/media/internal/guava_common/base/AbstractIterator$State;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/media/internal/guava_common/base/AbstractIterator$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    const-class v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/base/AbstractIterator$State;

    return-object p0
.end method

.method public static blacklist values()[Landroid/media/internal/guava_common/base/AbstractIterator$State;
    .registers 1

    .line 38
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->$VALUES:[Landroid/media/internal/guava_common/base/AbstractIterator$State;

    invoke-virtual {v0}, [Landroid/media/internal/guava_common/base/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/guava_common/base/AbstractIterator$State;

    return-object v0
.end method
