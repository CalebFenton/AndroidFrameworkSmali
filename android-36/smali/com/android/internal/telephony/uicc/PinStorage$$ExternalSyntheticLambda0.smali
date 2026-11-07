.class public final synthetic Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/PinStorage;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/PinStorage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/uicc/PinStorage;

    return-void
.end method


# virtual methods
.method public final whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/uicc/PinStorage;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
