.class public final enum Lcom/sun/nio/file/SensitivityWatchEventModifier;
.super Ljava/lang/Enum;
.source "SensitivityWatchEventModifier.java"

# interfaces
.implements Ljava/nio/file/WatchEvent$Modifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/nio/file/SensitivityWatchEventModifier;",
        ">;",
        "Ljava/nio/file/WatchEvent$Modifier;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/sun/nio/file/SensitivityWatchEventModifier;

.field public static final enum blacklist HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

.field public static final enum blacklist LOW:Lcom/sun/nio/file/SensitivityWatchEventModifier;

.field public static final enum blacklist MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;


# instance fields
.field private final blacklist sensitivity:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/sun/nio/file/SensitivityWatchEventModifier;
    .registers 3

    .line 37
    sget-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    sget-object v1, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    sget-object v2, Lcom/sun/nio/file/SensitivityWatchEventModifier;->LOW:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    filled-new-array {v0, v1, v2}, [Lcom/sun/nio/file/SensitivityWatchEventModifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/nio/file/SensitivityWatchEventModifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 45
    new-instance v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const-string v4, "MEDIUM"

    invoke-direct {v0, v4, v1, v2}, Lcom/sun/nio/file/SensitivityWatchEventModifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 49
    new-instance v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    const-string v1, "LOW"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/nio/file/SensitivityWatchEventModifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->LOW:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 37
    invoke-static {}, Lcom/sun/nio/file/SensitivityWatchEventModifier;->$values()[Lcom/sun/nio/file/SensitivityWatchEventModifier;

    move-result-object v0

    sput-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/SensitivityWatchEventModifier;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "sensitivity"    # I
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
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivity:I

    .line 61
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/sun/nio/file/SensitivityWatchEventModifier;
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

    .line 37
    const-class v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    return-object v0
.end method

.method public static blacklist values()[Lcom/sun/nio/file/SensitivityWatchEventModifier;
    .registers 1

    .line 37
    sget-object v0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->$VALUES:[Lcom/sun/nio/file/SensitivityWatchEventModifier;

    invoke-virtual {v0}, [Lcom/sun/nio/file/SensitivityWatchEventModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/nio/file/SensitivityWatchEventModifier;

    return-object v0
.end method


# virtual methods
.method public blacklist sensitivityValueInSeconds()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivity:I

    return v0
.end method
