.class Lcom/android/internal/net/ipsec/ike/utils/StateMachine$SmHandler$QuittingState;
.super Lcom/android/internal/net/ipsec/ike/utils/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/utils/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 790
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/StateMachine-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/StateMachine$SmHandler$QuittingState;-><init>()V

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
