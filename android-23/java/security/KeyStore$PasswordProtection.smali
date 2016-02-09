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
.field private isDestroyed:Z

.field private password:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "password"    # [C

    #@0
    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1110
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    #@6
    .line 1121
    if-eqz p1, :cond_0

    #@8
    .line 1122
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [C

    #@e
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    #@10
    .line 1120
    :cond_0
    return-void
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
    .line 1147
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    #@4
    .line 1148
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1149
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@e
    .line 1150
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 1146
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public declared-synchronized getPassword()[C
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1134
    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1135
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Password was destroyed"

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
    .line 1137
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
    .line 1161
    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z
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
