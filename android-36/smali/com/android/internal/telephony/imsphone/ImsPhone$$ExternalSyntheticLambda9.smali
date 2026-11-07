.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/os/AsyncResult;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;ZILandroid/os/AsyncResult;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$1:Z

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$3:Landroid/os/AsyncResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$1:Z

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$2:I

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;->f$3:Landroid/os/AsyncResult;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->$r8$lambda$u6tWvwGCsyZAtyZLoAyOHLv4wg8(Lcom/android/internal/telephony/imsphone/ImsPhone;ZILandroid/os/AsyncResult;)V

    return-void
.end method
