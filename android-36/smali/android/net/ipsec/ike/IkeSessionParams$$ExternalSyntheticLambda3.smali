.class public final synthetic Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;


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
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    move-result-object p1

    return-object p1
.end method
