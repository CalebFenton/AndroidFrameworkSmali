.class Landroid/service/trust/TrustAgentService$2;
.super Ljava/lang/Object;
.source "TrustAgentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/trust/TrustAgentService;

.field final synthetic blacklist val$durationMs:J

.field final synthetic blacklist val$flags:I

.field final synthetic blacklist val$message:Ljava/lang/CharSequence;

.field final synthetic blacklist val$resultCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V
    .registers 7
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 502
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$2;->this$0:Landroid/service/trust/TrustAgentService;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$2;->val$message:Ljava/lang/CharSequence;

    iput-wide p3, p0, Landroid/service/trust/TrustAgentService$2;->val$durationMs:J

    iput p5, p0, Landroid/service/trust/TrustAgentService$2;->val$flags:I

    iput-object p6, p0, Landroid/service/trust/TrustAgentService$2;->val$resultCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 505
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$2;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$2;->val$message:Ljava/lang/CharSequence;

    iget-wide v2, p0, Landroid/service/trust/TrustAgentService$2;->val$durationMs:J

    iget v4, p0, Landroid/service/trust/TrustAgentService$2;->val$flags:I

    iget-object v5, p0, Landroid/service/trust/TrustAgentService$2;->val$resultCallback:Ljava/util/function/Consumer;

    invoke-virtual/range {v0 .. v5}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    .line 506
    return-void
.end method
