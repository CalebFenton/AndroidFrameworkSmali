.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput-boolean p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget-boolean v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->$r8$lambda$TJ6cH17ghhNxP-L9BWaxgaWpxT8(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
