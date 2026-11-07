.class public final Landroid/net/thread/ThreadConfiguration$Builder;
.super Ljava/lang/Object;
.source "ThreadConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBorderRouterEnabled:Z

.field private blacklist mDhcpv6PdEnabled:Z

.field private blacklist mNat64Enabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBorderRouterEnabled(Landroid/net/thread/ThreadConfiguration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mBorderRouterEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDhcpv6PdEnabled(Landroid/net/thread/ThreadConfiguration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mDhcpv6PdEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNat64Enabled(Landroid/net/thread/ThreadConfiguration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mNat64Enabled:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mBorderRouterEnabled:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mNat64Enabled:Z

    .line 165
    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mDhcpv6PdEnabled:Z

    .line 174
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/thread/ThreadConfiguration;)V
    .registers 3
    .param p1, "config"    # Landroid/net/thread/ThreadConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mBorderRouterEnabled:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mNat64Enabled:Z

    .line 165
    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mDhcpv6PdEnabled:Z

    .line 185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {p1}, Landroid/net/thread/ThreadConfiguration;->-$$Nest$fgetmBorderRouterEnabled(Landroid/net/thread/ThreadConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mBorderRouterEnabled:Z

    .line 188
    invoke-static {p1}, Landroid/net/thread/ThreadConfiguration;->-$$Nest$fgetmNat64Enabled(Landroid/net/thread/ThreadConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mNat64Enabled:Z

    .line 189
    invoke-static {p1}, Landroid/net/thread/ThreadConfiguration;->-$$Nest$fgetmDhcpv6PdEnabled(Landroid/net/thread/ThreadConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mDhcpv6PdEnabled:Z

    .line 190
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/thread/ThreadConfiguration;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 245
    new-instance v0, Landroid/net/thread/ThreadConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/thread/ThreadConfiguration;-><init>(Landroid/net/thread/ThreadConfiguration$Builder;Landroid/net/thread/ThreadConfiguration-IA;)V

    return-object v0
.end method

.method public blacklist setBorderRouterEnabled(Z)Landroid/net/thread/ThreadConfiguration$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 202
    iput-boolean p1, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mBorderRouterEnabled:Z

    .line 203
    return-object p0
.end method

.method public blacklist setDhcpv6PdEnabled(Z)Landroid/net/thread/ThreadConfiguration$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 232
    iput-boolean p1, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mDhcpv6PdEnabled:Z

    .line 233
    return-object p0
.end method

.method public whitelist setNat64Enabled(Z)Landroid/net/thread/ThreadConfiguration$Builder;
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 218
    iput-boolean p1, p0, Landroid/net/thread/ThreadConfiguration$Builder;->mNat64Enabled:Z

    .line 219
    return-object p0
.end method
