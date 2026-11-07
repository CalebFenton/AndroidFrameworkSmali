.class public final synthetic Landroid/media/Spatializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/Spatializer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/Spatializer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$$ExternalSyntheticLambda1;->f$0:Landroid/media/Spatializer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/Spatializer$$ExternalSyntheticLambda1;->f$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->$r8$lambda$NJnJ3J_IdFl6yCDK3SddBn_uDFg(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object v0

    return-object v0
.end method
