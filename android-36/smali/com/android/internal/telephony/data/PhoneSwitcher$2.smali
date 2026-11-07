.class Lcom/android/internal/telephony/data/PhoneSwitcher$2;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "PhoneSwitcher.java"


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

    .line 384
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3

    .line 387
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p1

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fputmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;I)V

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1c
    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    .line 397
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fputmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;I)V

    .line 398
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method
