.class public final synthetic Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/OemMetadataServiceWrapper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/OemMetadataServiceWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/provider/OemMetadataServiceWrapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/provider/OemMetadataServiceWrapper;

    invoke-static {v0}, Landroid/provider/OemMetadataServiceWrapper;->$r8$lambda$x2gHcyrJyWzxwSk3uAFaW6kXERU(Landroid/provider/OemMetadataServiceWrapper;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
