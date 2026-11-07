.class Landroid/telephony/TelephonyManager$6;
.super Lcom/android/internal/telephony/INumberVerificationCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLjava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/NumberVerificationCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 8653
    iput-object p2, p0, Landroid/telephony/TelephonyManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$6;->val$callback:Landroid/telephony/NumberVerificationCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCallReceived$0(Landroid/telephony/NumberVerificationCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/NumberVerificationCallback;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 8659
    invoke-interface {p0, p1}, Landroid/telephony/NumberVerificationCallback;->onCallReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onVerificationFailed$1(Landroid/telephony/NumberVerificationCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/NumberVerificationCallback;
    .param p1, "reason"    # I

    .line 8670
    invoke-interface {p0, p1}, Landroid/telephony/NumberVerificationCallback;->onVerificationFailed(I)V

    return-void
.end method


# virtual methods
.method public blacklist onCallReceived(Ljava/lang/String;)V
    .registers 7
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 8656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8658
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$6;->val$callback:Landroid/telephony/NumberVerificationCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/NumberVerificationCallback;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 8661
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8662
    nop

    .line 8663
    return-void

    .line 8661
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8662
    throw v2
.end method

.method public blacklist onVerificationFailed(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 8667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8669
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$6;->val$callback:Landroid/telephony/NumberVerificationCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$6$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/NumberVerificationCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 8672
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8673
    nop

    .line 8674
    return-void

    .line 8672
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8673
    throw v2
.end method
