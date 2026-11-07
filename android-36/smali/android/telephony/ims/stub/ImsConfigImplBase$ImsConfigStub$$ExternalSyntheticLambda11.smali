.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/aidl/IImsConfigCallback;

.field public final synthetic blacklist f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/ims/aidl/IImsConfigCallback;

    iput-object p3, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/ims/aidl/IImsConfigCallback;

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->$r8$lambda$LbMfnvOi1uAfnnvmU5XCdunHRZo(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
