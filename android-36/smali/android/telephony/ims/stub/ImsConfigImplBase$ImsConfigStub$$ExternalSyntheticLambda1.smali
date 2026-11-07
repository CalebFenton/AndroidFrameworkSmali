.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Supplier;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$executeMethodAsyncForResult$16(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
