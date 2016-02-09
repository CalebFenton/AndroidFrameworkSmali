.class final enum Lcom/android/server/policy/GlobalActions$ToggleAction$State;
.super Ljava/lang/Enum;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/GlobalActions$ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 806
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@6
    const-string/jumbo v1, "Off"

    #@9
    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    #@c
    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@e
    .line 807
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@10
    const-string/jumbo v1, "TurningOn"

    #@13
    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    #@16
    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@18
    .line 808
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@1a
    const-string/jumbo v1, "TurningOff"

    #@1d
    invoke-direct {v0, v1, v4, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    #@20
    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@22
    .line 809
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@24
    const-string/jumbo v1, "On"

    #@27
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    #@2a
    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2c
    .line 805
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2f
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "intermediate"    # Z

    #@0
    .prologue
    .line 813
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 814
    iput-boolean p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition:Z

    #@5
    .line 813
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 805
    const-class v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    #@0
    .prologue
    .line 805
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .locals 1

    #@0
    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition:Z

    #@2
    return v0
.end method
