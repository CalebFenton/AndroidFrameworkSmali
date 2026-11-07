.class final Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
.super Landroid/permission/IOnPermissionsChangeListener$Stub;
.source "PermissionManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPermissionsChangeListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# direct methods
.method public constructor blacklist <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    .registers 4
    .param p2, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2156
    invoke-direct {p0}, Landroid/permission/IOnPermissionsChangeListener$Stub;-><init>()V

    .line 2157
    iput-object p2, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 2158
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 2159
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 2177
    const/4 v0, 0x0

    return v0

    .line 2171
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2172
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2173
    .local v1, "persistentDeviceId":Ljava/lang/String;
    iget-object v2, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/PackageManager$OnPermissionsChangedListener;->onPermissionsChanged(ILjava/lang/String;)V

    .line 2174
    const/4 v2, 0x1

    return v2

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist onPermissionsChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "persistentDeviceId"    # Ljava/lang/String;

    .line 2163
    iget-object v0, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2165
    return-void
.end method
