.class public final synthetic Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsStateCallback;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/ImsStateCallback;

    iput p3, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/ImsStateCallback;

    iget v2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->$r8$lambda$xIOg2gzoj0TB9CpiTwvxaANNGZQ(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V

    return-void
.end method
