.class public final synthetic Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/vcn/util/PersistableBundleUtils$Serializer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/vcn/util/PersistableBundleUtils;->lambda$static$2(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
