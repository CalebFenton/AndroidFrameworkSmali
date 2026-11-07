.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/feature/ConnectionFailureInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    iput-object p3, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/ims/feature/ConnectionFailureInfo;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/ims/feature/ConnectionFailureInfo;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->$r8$lambda$enY290okwvAbNiG-0jraGxtUTnw(Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    return-void
.end method
