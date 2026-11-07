.class public final synthetic Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsUt$IImsUtListenerProxy;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsSsData;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    iput-object p2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/ImsSsData;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/ImsSsData;

    invoke-static {v0, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->$r8$lambda$x0bnHCbXRVm0_UlgkeTr7u00Nd8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V

    return-void
.end method
