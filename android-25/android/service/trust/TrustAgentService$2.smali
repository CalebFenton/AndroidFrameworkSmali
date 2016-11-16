.class Landroid/service/trust/TrustAgentService$2;
.super Ljava/lang/Object;
.source "TrustAgentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;

.field final synthetic val$durationMs:J

.field final synthetic val$flags:I

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JI)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/trust/TrustAgentService;
    .param p2, "val$message"    # Ljava/lang/CharSequence;
    .param p3, "val$durationMs"    # J
    .param p5, "val$flags"    # I

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$2;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    iput-object p2, p0, Landroid/service/trust/TrustAgentService$2;->val$message:Ljava/lang/CharSequence;

    #@4
    iput-wide p3, p0, Landroid/service/trust/TrustAgentService$2;->val$durationMs:J

    #@6
    iput p5, p0, Landroid/service/trust/TrustAgentService$2;->val$flags:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$2;->this$0:Landroid/service/trust/TrustAgentService;

    #@2
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$2;->val$message:Ljava/lang/CharSequence;

    #@4
    iget-wide v2, p0, Landroid/service/trust/TrustAgentService$2;->val$durationMs:J

    #@6
    iget v4, p0, Landroid/service/trust/TrustAgentService$2;->val$flags:I

    #@8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    #@b
    .line 308
    return-void
.end method
