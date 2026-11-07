.class public abstract Landroid/app/sdksandbox/SandboxedSdkProvider;
.super Ljava/lang/Object;
.source "SandboxedSdkProvider.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSdkSandboxController:Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist attachContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 54
    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Landroid/app/sdksandbox/SandboxedSdkProvider;->mContext:Landroid/content/Context;

    .line 56
    return-void

    .line 52
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist beforeUnloadSdk()V
    .registers 1

    .line 94
    return-void
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract whitelist getView(Landroid/content/Context;Landroid/os/Bundle;II)Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist onLoadSdk(Landroid/os/Bundle;)Landroid/app/sdksandbox/SandboxedSdk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/sdksandbox/LoadSdkException;
        }
    .end annotation
.end method
