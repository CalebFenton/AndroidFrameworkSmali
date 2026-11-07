.class public final synthetic Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    move-result-object p1

    return-object p1
.end method
