.class public final synthetic Landroid/os/UserManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda12;->f$0:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/os/UserManager$$ExternalSyntheticLambda12;->f$0:Landroid/os/UserManager;

    invoke-static {v0}, Landroid/os/UserManager;->$r8$lambda$dcWO8H_vlSLBPbqNUcl_T3Umg50(Landroid/os/UserManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
