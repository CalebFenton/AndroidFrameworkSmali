.class public final synthetic Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/OemMetadataServiceWrapper;

.field public final synthetic blacklist f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/OemMetadataServiceWrapper;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/provider/OemMetadataServiceWrapper;

    iput-object p2, p0, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/provider/OemMetadataServiceWrapper;

    iget-object v1, p0, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Landroid/provider/OemMetadataServiceWrapper;->$r8$lambda$1-jn4yCU2i1vFvg99EjUuYJQHks(Landroid/provider/OemMetadataServiceWrapper;Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
