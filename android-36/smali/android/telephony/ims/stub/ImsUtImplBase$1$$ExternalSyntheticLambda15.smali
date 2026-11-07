.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$1:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$4:I

    iput p6, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$5:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$1:I

    iget v2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$4:I

    iget v5, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;->f$5:I

    invoke-static/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->$r8$lambda$2K-3YuEDiqqgpPX-OF3WC76paAA(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
