.class public final synthetic Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/prediction/AppPredictor$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/prediction/AppPredictor$CallbackWrapper;Landroid/content/pm/ParceledListSlice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictor$CallbackWrapper;

    iput-object p2, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictor$CallbackWrapper;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0, v1}, Landroid/app/prediction/AppPredictor$CallbackWrapper;->$r8$lambda$FBKIE-Z6gEZZW3x7W8tsnhbZ7TY(Landroid/app/prediction/AppPredictor$CallbackWrapper;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method
