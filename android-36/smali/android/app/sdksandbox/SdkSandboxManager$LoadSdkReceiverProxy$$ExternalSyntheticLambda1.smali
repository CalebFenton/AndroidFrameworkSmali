.class public final synthetic Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;

.field public final synthetic blacklist f$1:Landroid/app/sdksandbox/LoadSdkException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;Landroid/app/sdksandbox/LoadSdkException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;

    iput-object p2, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/app/sdksandbox/LoadSdkException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;

    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/app/sdksandbox/LoadSdkException;

    invoke-static {v0, v1}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;->$r8$lambda$xtgSbqSapHP6UbgCyhFfBu66F84(Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;Landroid/app/sdksandbox/LoadSdkException;)V

    return-void
.end method
