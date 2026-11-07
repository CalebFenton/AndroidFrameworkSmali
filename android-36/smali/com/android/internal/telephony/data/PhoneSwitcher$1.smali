.class Lcom/android/internal/telephony/data/PhoneSwitcher$1;
.super Ljava/lang/Object;
.source "PhoneSwitcher.java"

# interfaces
.implements Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onNetworkAvailable(Landroid/net/Network;I)V
    .registers 5

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 v0, 0x76

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onValidationDone(ZI)V
    .registers 4

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 v0, 0x6e

    invoke-static {p0, v0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
