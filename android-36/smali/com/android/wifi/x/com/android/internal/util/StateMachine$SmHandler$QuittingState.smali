.class Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$QuittingState;
.super Lcom/android/wifi/x/com/android/internal/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 790
    invoke-direct {p0}, Lcom/android/wifi/x/com/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/wifi/x/com/android/internal/util/StateMachine-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 793
    const/4 v0, 0x0

    return v0
.end method
