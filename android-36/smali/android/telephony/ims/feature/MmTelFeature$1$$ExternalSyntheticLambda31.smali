.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/os/Message;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;->f$2:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda31;->f$2:Landroid/os/Message;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->$r8$lambda$VYHm_zpoFh1HitFcVC398jcfdbE(Landroid/telephony/ims/feature/MmTelFeature$1;ILandroid/os/Message;)V

    return-void
.end method
