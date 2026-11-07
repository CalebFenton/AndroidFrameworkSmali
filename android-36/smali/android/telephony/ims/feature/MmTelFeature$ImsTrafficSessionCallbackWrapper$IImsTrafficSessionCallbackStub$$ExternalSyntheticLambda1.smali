.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    invoke-static {v0}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->lambda$onReady$0(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V

    return-void
.end method
