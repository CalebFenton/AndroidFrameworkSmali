.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:[B


# direct methods
.method public synthetic constructor blacklist <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;->f$0:[B

    check-cast p1, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->lambda$notifyPreProvisioningReceived$5([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method
