.class final enum Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
.super Ljava/lang/Enum;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer$BufferStuffingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RecoveryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

.field public static final enum blacklist DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

.field public static final enum blacklist NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

.field public static final enum blacklist OFFSET:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
    .registers 3

    .line 214
    sget-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    sget-object v1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->OFFSET:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    sget-object v2, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    filled-new-array {v0, v1, v2}, [Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 216
    new-instance v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    .line 218
    new-instance v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    const-string v1, "OFFSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->OFFSET:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    .line 221
    new-instance v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    const-string v1, "DELAY_FRAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    .line 214
    invoke-static {}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->$values()[Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->$VALUES:[Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

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

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
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

    .line 214
    const-class v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
    .registers 1

    .line 214
    sget-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->$VALUES:[Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    invoke-virtual {v0}, [Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object v0
.end method
