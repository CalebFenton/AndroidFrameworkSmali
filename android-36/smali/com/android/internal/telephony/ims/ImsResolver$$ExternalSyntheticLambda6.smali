.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;->f$0:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;->f$0:Landroid/os/UserHandle;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->$r8$lambda$QuecTillVDFqhJZpSGaWH3KFCTQ(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
