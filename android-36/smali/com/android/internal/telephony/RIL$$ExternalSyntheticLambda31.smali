.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioDataProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/net/KeepalivePacketData;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$3:Landroid/net/KeepalivePacketData;

    iput p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$4:I

    iput-object p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$5:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$3:Landroid/net/KeepalivePacketData;

    iget v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$4:I

    iget-object v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;->f$5:Landroid/os/Message;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->$r8$lambda$z_4-DkJt-IMTmPGnp6CRqMA9SDg(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    return-void
.end method
