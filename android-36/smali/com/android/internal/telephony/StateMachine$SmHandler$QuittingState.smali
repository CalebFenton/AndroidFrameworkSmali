.class Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;
.super Lcom/android/internal/telephony/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 790
    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/StateMachine-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
