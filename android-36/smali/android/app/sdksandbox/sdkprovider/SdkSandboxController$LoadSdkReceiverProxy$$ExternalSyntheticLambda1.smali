.class public final synthetic Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;

.field public final synthetic blacklist f$1:Landroid/app/sdksandbox/SandboxedSdk;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;Landroid/app/sdksandbox/SandboxedSdk;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;

    iput-object p2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/app/sdksandbox/SandboxedSdk;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$0:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;

    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy$$ExternalSyntheticLambda1;->f$1:Landroid/app/sdksandbox/SandboxedSdk;

    invoke-static {v0, v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;->$r8$lambda$4hcrI2WB3Jyz7P05rrjgITwG6NY(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;Landroid/app/sdksandbox/SandboxedSdk;)V

    return-void
.end method
