.class public Ljava/security/KeyStore$PasswordProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordProtection"
.end annotation


# instance fields
.field private volatile destroyed:Z

.field private final password:[C


# direct methods
.method public constructor <init>([C)V
    .locals 2
    .param p1, "password"    # [C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 286
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    #@7
    .line 297
    if-nez p1, :cond_0

    #@9
    :goto_0
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    #@b
    .line 296
    return-void

    #@c
    .line 297
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [C

    #@12
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 328
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    #@4
    .line 329
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 330
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    #@a
    const/16 v1, 0x20

    #@c
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 327
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public declared-synchronized getPassword()[C
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 314
    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "password has been cleared"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 317
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return-object v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 340
    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
