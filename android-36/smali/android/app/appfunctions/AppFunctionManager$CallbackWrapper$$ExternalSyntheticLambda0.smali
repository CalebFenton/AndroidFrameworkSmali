.class public final synthetic Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/os/ParcelableException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;Landroid/os/ParcelableException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/ParcelableException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/ParcelableException;

    invoke-static {v0, v1}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->$r8$lambda$Fb95o_RGN_Ad_dFIFUQvYBjTOHI(Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;Landroid/os/ParcelableException;)V

    return-void
.end method
