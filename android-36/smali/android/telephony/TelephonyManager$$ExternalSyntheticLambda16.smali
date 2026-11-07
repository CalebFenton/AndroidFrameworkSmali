.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/telephony/NumberVerificationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/NumberVerificationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/NumberVerificationCallback;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->lambda$requestNumberVerification$10(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    return-void
.end method
