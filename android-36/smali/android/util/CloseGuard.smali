.class public final Landroid/util/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# instance fields
.field private final blacklist mImpl:Ldalvik/system/CloseGuard;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-direct {p0}, Landroid/util/CloseGuard;->getImpl()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    .line 133
    return-void
.end method

.method public static blacklist get()Landroid/util/CloseGuard;
    .registers 1

    .line 124
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    return-object v0
.end method

.method private blacklist getImpl()Ldalvik/system/CloseGuard;
    .registers 2

    .line 137
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getImpl$ravenwood()Ldalvik/system/CloseGuard;
    .registers 2

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist close()V
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 162
    :cond_9
    return-void
.end method

.method public whitelist open(Ljava/lang/String;)V
    .registers 3
    .param p1, "closeMethodName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 155
    :cond_9
    return-void
.end method

.method public whitelist warnIfOpen()V
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 172
    :cond_9
    return-void
.end method
