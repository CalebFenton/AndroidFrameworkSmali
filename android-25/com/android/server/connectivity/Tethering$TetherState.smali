.class Lcom/android/server/connectivity/Tethering$TetherState;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetherState"
.end annotation


# instance fields
.field public mLastError:I

.field public mLastState:I

.field public final mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 1
    .param p1, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@5
    .line 138
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@8
    .line 139
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    #@b
    .line 135
    return-void
.end method
