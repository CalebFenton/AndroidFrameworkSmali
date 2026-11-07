.class public final synthetic Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/os/ParcelableException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/os/ParcelableException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;->f$0:Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    iput-object p2, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;->f$1:Landroid/os/ParcelableException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;->f$0:Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    iget-object v1, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;->f$1:Landroid/os/ParcelableException;

    invoke-static {v0, v1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->$r8$lambda$wxSDcLsq7LLgC9a3Dzg8ypq5JjE(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/os/ParcelableException;)V

    return-void
.end method
