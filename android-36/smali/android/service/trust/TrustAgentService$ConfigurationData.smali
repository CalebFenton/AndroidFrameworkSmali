.class final Landroid/service/trust/TrustAgentService$ConfigurationData;
.super Ljava/lang/Object;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigurationData"
.end annotation


# instance fields
.field final greylist-max-o options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "t"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 205
    .local p1, "opts":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    .line 207
    iput-object p2, p0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    .line 208
    return-void
.end method
