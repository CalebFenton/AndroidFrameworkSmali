.class public final synthetic Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .registers 3

    .line 0
    new-instance v0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;

    invoke-direct {v0, p1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method
