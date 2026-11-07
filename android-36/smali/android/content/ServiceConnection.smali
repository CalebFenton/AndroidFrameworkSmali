.class public interface abstract Landroid/content/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 74
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 91
    return-void
.end method

.method public abstract whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
