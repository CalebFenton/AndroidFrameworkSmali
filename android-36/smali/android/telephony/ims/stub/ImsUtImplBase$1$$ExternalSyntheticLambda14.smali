.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->$r8$lambda$bIqTUf33J1IU3PjVgV_Vlhu6BUU(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
