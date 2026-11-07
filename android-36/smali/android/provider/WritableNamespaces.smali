.class final Landroid/provider/WritableNamespaces;
.super Ljava/lang/Object;
.source "WritableNamespaces.java"


# static fields
.field public static final blacklist ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    const-string v14, "tethering_u_or_later_native"

    const-string v15, "thread_network"

    const-string v1, "adservices"

    const-string v2, "autofill"

    const-string v3, "app_compat_overrides"

    const-string v4, "captive_portal_login"

    const-string v5, "connectivity"

    const-string v6, "exo"

    const-string v7, "location"

    const-string v8, "nearby"

    const-string v9, "netd_native"

    const-string v10, "network_security"

    const-string v11, "on_device_personalization"

    const-string v12, "testing"

    const-string v13, "tethering"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/provider/WritableNamespaces;->ALLOWLIST:Ljava/util/Set;

    .line 37
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
