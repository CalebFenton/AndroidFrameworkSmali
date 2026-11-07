.class public final enum Lcom/android/internal/globalactions/ToggleAction$State;
.super Ljava/lang/Enum;
.source "ToggleAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/globalactions/ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/globalactions/ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist Off:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist On:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;


# instance fields
.field private final blacklist inTransition:Z


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/globalactions/ToggleAction$State;
    .registers 4

    .line 34
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/globalactions/ToggleAction$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 35
    new-instance v0, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 36
    new-instance v0, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v1, "TurningOn"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 37
    new-instance v0, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v1, "TurningOff"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 38
    new-instance v0, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v1, "On"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 34
    invoke-static {}, Lcom/android/internal/globalactions/ToggleAction$State;->$values()[Lcom/android/internal/globalactions/ToggleAction$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->$VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "intermediate"    # Z
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
            "(Z)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-boolean p3, p0, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition:Z

    .line 44
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/globalactions/ToggleAction$State;
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

    .line 34
    const-class v0, Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/globalactions/ToggleAction$State;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->$VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, [Lcom/android/internal/globalactions/ToggleAction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public blacklist inTransition()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition:Z

    return v0
.end method
