.class public final enum Landroid/processor/immutability/Immutable$Policy$Exception;
.super Ljava/lang/Enum;
.source "Immutable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/processor/immutability/Immutable$Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Exception"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/processor/immutability/Immutable$Policy$Exception;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/processor/immutability/Immutable$Policy$Exception;

.field public static final enum blacklist FINAL_CLASSES_WITH_FINAL_FIELDS:Landroid/processor/immutability/Immutable$Policy$Exception;


# direct methods
.method private static synthetic blacklist $values()[Landroid/processor/immutability/Immutable$Policy$Exception;
    .registers 1

    .line 60
    sget-object v0, Landroid/processor/immutability/Immutable$Policy$Exception;->FINAL_CLASSES_WITH_FINAL_FIELDS:Landroid/processor/immutability/Immutable$Policy$Exception;

    filled-new-array {v0}, [Landroid/processor/immutability/Immutable$Policy$Exception;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Landroid/processor/immutability/Immutable$Policy$Exception;

    const-string v1, "FINAL_CLASSES_WITH_FINAL_FIELDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/processor/immutability/Immutable$Policy$Exception;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/processor/immutability/Immutable$Policy$Exception;->FINAL_CLASSES_WITH_FINAL_FIELDS:Landroid/processor/immutability/Immutable$Policy$Exception;

    .line 60
    invoke-static {}, Landroid/processor/immutability/Immutable$Policy$Exception;->$values()[Landroid/processor/immutability/Immutable$Policy$Exception;

    move-result-object v0

    sput-object v0, Landroid/processor/immutability/Immutable$Policy$Exception;->$VALUES:[Landroid/processor/immutability/Immutable$Policy$Exception;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/processor/immutability/Immutable$Policy$Exception;
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

    .line 60
    const-class v0, Landroid/processor/immutability/Immutable$Policy$Exception;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/processor/immutability/Immutable$Policy$Exception;

    return-object v0
.end method

.method public static blacklist values()[Landroid/processor/immutability/Immutable$Policy$Exception;
    .registers 1

    .line 60
    sget-object v0, Landroid/processor/immutability/Immutable$Policy$Exception;->$VALUES:[Landroid/processor/immutability/Immutable$Policy$Exception;

    invoke-virtual {v0}, [Landroid/processor/immutability/Immutable$Policy$Exception;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/processor/immutability/Immutable$Policy$Exception;

    return-object v0
.end method
