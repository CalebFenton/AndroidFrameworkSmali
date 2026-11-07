.class Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private final blacklist mAuthRequestId:J

.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 4
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-wide p2, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mAuthRequestId:J

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel fingerprint authentication requested for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-wide v1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$mcancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager;J)V

    .line 208
    return-void
.end method
