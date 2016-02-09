.class Landroid/app/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2623
    iput-object p1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 2621
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3174
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3175
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3177
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3e

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3171
    return-void
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3108
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3109
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 3111
    if-eqz p2, :cond_1

    #@15
    .line 3112
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 3113
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 3117
    :goto_0
    if-eqz p3, :cond_0

    #@1d
    move v2, v3

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 3118
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x12

    #@25
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 3121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 3105
    return-void

    #@32
    .line 3115
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    goto :goto_0
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3137
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3138
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3140
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x13

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3134
    return-void
.end method

.method public activityResumed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3126
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3127
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3129
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x27

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3123
    return-void
.end method

.method public activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3163
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3164
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3166
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x7b

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3160
    return-void
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3149
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3150
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@14
    .line 3153
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@17
    .line 3154
    const/4 v2, 0x0

    #@18
    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1b
    .line 3155
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x14

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 3156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 3157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 3158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3146
    return-void
.end method

.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3232
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3233
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3235
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 3236
    invoke-virtual {p3, v0, v5}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 3237
    invoke-virtual {p4, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 3238
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xea

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 3239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v2

    #@29
    .line 3241
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 3243
    return v2
.end method

.method public addPackageDependency(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4596
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4597
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4599
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x5f

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4600
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4594
    return-void
.end method

.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3622
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3623
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3625
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb7

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3620
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 2628
    iget-object v0, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public attachApplication(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3096
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3097
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3098
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 3099
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x11

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 3100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3093
    return-void
.end method

.method public backgroundResourcesReleased(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5819
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5820
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5822
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xe4

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5817
    return-void
.end method

.method public backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3860
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3861
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 3863
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 3864
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x5b

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3858
    return-void
.end method

.method public bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupRestoreMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3837
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3838
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3839
    invoke-virtual {p1, v0, v5}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 3840
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3841
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x5a

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 3843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 3844
    .local v2, "success":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 3845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3846
    return v2

    #@2d
    .line 3843
    .end local v2    # "success":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "success":Z
    goto :goto_0
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3744
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3745
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3746
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 3747
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    .line 3748
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 3749
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    .line 3750
    invoke-interface {p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@29
    .line 3751
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 3752
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 3753
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 3754
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@34
    const/16 v4, 0x24

    #@36
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@39
    .line 3755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3c
    .line 3756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v2

    #@40
    .line 3757
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 3758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 3759
    return v2
.end method

.method public bootAnimationComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5855
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5856
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5857
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xee

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5853
    return-void
.end method

.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "serialized"    # Z
    .param p12, "sticky"    # Z
    .param p13, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 3040
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3041
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3042
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 3043
    const/4 v4, 0x0

    #@18
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 3044
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 3045
    if-eqz p4, :cond_1

    #@20
    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v4

    #@24
    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    .line 3046
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 3047
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 3048
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@30
    .line 3049
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@33
    .line 3050
    move/from16 v0, p9

    #@35
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 3051
    move-object/from16 v0, p10

    #@3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3d
    .line 3052
    if-eqz p11, :cond_2

    #@3f
    const/4 v4, 0x1

    #@40
    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 3053
    if-eqz p12, :cond_3

    #@45
    const/4 v4, 0x1

    #@46
    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 3054
    move/from16 v0, p13

    #@4b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 3055
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@50
    const/16 v5, 0xe

    #@52
    const/4 v6, 0x0

    #@53
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@56
    .line 3056
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@59
    .line 3057
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v3

    #@5d
    .line 3058
    .local v3, "res":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@60
    .line 3059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@63
    .line 3060
    return v3

    #@64
    .line 3042
    .end local v3    # "res":I
    :cond_0
    const/4 v4, 0x0

    #@65
    goto :goto_0

    #@66
    .line 3045
    :cond_1
    const/4 v4, 0x0

    #@67
    goto :goto_1

    #@68
    .line 3052
    :cond_2
    const/4 v4, 0x0

    #@69
    goto :goto_2

    #@6a
    .line 3053
    :cond_3
    const/4 v4, 0x0

    #@6b
    goto :goto_3
.end method

.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4026
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4027
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4028
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 4029
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x40

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 4030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 4031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4024
    return-void
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4889
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4890
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 4892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 4893
    invoke-virtual {p3, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 4894
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 4895
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 4896
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x77

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 4897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 4898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v2

    #@2c
    .line 4899
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 4900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 4901
    return v2
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4116
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4117
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4120
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 4121
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x35

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    .line 4124
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 4126
    return v2
.end method

.method public checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4131
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4132
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 4136
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 4137
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0xf2

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 4138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 4139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v2

    #@29
    .line 4140
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 4141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 4142
    return v2
.end method

.method public checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .param p6, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4162
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4163
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4164
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 4165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4166
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4167
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 4168
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 4169
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 4170
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x36

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 4171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 4172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v2

    #@2f
    .line 4173
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 4174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 4175
    return v2
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 4146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 4147
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 4148
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 4149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 4150
    if-eqz p2, :cond_0

    #@15
    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v3

    #@19
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    .line 4151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 4152
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v4, 0x4e

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 4153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 4154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    const/4 v2, 0x1

    #@30
    .line 4155
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 4156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 4157
    return v2

    #@37
    .line 4154
    .end local v2    # "res":Z
    :cond_1
    const/4 v2, 0x0

    #@38
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public clearPendingBackup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3851
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3852
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3853
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xa0

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 3849
    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4621
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4622
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4624
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x61

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4619
    return-void
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4707
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4708
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4710
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0xae

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 4713
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4715
    return v2

    #@2a
    .line 4712
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4721
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4722
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4724
    if-nez p2, :cond_0

    #@14
    .line 4725
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 4730
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xaf

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 4731
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 4732
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    const/4 v2, 0x1

    #@28
    .line 4733
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 4734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 4735
    return v2

    #@2f
    .line 4727
    .end local v2    # "res":Z
    :cond_0
    const/4 v3, 0x1

    #@30
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 4728
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3a
    goto :goto_0

    #@3b
    .line 4732
    :cond_1
    const/4 v2, 0x0

    #@3c
    .restart local v2    # "res":Z
    goto :goto_1
.end method

.method public crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4808
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4809
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4812
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 4813
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 4814
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x72

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 4815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 4816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 4806
    return-void
.end method

.method public createStackOnDisplay(I)Landroid/app/IActivityContainer;
    .locals 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5586
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5587
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5589
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0x11a

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    .line 5593
    .local v3, "result":I
    const/4 v4, 0x1

    #@21
    if-ne v3, v4, :cond_0

    #@23
    .line 5594
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26
    move-result-object v4

    #@27
    invoke-static {v4}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    #@2a
    move-result-object v2

    #@2b
    .line 5598
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 5599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 5600
    return-object v2

    #@32
    .line 5596
    :cond_0
    const/4 v2, 0x0

    #@33
    .local v2, "res":Landroid/app/IActivityContainer;
    goto :goto_0
.end method

.method public createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;
    .locals 7
    .param p1, "parentActivityToken"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5553
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5554
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v5, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5556
    if-nez p2, :cond_0

    #@14
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 5557
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v5, 0xa8

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5559
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    .line 5561
    .local v3, "result":I
    const/4 v4, 0x1

    #@27
    if-ne v3, v4, :cond_1

    #@29
    .line 5562
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v4}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    #@30
    move-result-object v2

    #@31
    .line 5566
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 5567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 5568
    return-object v2

    #@38
    .line 5556
    .end local v3    # "result":I
    :cond_0
    invoke-interface {p2}, Landroid/app/IActivityContainerCallback;->asBinder()Landroid/os/IBinder;

    #@3b
    move-result-object v4

    #@3c
    goto :goto_0

    #@3d
    .line 5564
    .restart local v3    # "result":I
    :cond_1
    const/4 v2, 0x0

    #@3e
    .local v2, "res":Landroid/app/IActivityContainer;
    goto :goto_1
.end method

.method public deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 5
    .param p1, "activityContainer"    # Landroid/app/IActivityContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5574
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5575
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5576
    invoke-interface {p1}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 5577
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xba

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 5578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 5579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5572
    return-void
.end method

.method public dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 6
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "managed"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 4907
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 4908
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 4909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 4910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 4911
    if-eqz p3, :cond_0

    #@18
    move v3, v4

    #@19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 4912
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 4913
    if-eqz p5, :cond_1

    #@21
    .line 4914
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 4915
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 4919
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/16 v4, 0x78

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 4921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_2

    #@37
    const/4 v2, 0x1

    #@38
    .line 4922
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 4923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 4924
    return v2

    #@3f
    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    #@40
    .line 4911
    goto :goto_0

    #@41
    .line 4917
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    goto :goto_1

    #@45
    .line 4921
    :cond_2
    const/4 v2, 0x0

    #@46
    .restart local v2    # "res":Z
    goto :goto_2
.end method

.method public dumpHeapFinished(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5895
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5896
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 5898
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x121

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5893
    return-void
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4351
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IActivityManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 4352
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x42

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x0

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 4353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 4349
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 2911
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 2912
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v5, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 2913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 2914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 2915
    if-eqz p3, :cond_0

    #@18
    .line 2916
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 2917
    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2921
    :goto_0
    if-eqz p4, :cond_1

    #@20
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 2922
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@25
    const/16 v5, 0xb

    #@27
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 2923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 2924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    const/4 v2, 0x1

    #@34
    .line 2925
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 2927
    return v2

    #@3b
    .line 2919
    .end local v2    # "res":Z
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    goto :goto_0

    #@3f
    :cond_1
    move v3, v4

    #@40
    .line 2921
    goto :goto_1

    #@41
    .line 2924
    :cond_2
    const/4 v2, 0x0

    #@42
    .restart local v2    # "res":Z
    goto :goto_2
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2944
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2945
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 2947
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x95

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2948
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 2949
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 2950
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2952
    return v2

    #@2a
    .line 2949
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public finishHeavyWeightApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4696
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4697
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4698
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x6d

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 4701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4694
    return-void
.end method

.method public finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "target"    # Landroid/app/IApplicationThread;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3906
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3907
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3908
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 3909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 3910
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1e
    .line 3911
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x2d

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 3912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 3904
    return-void
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "map"    # Landroid/os/Bundle;
    .param p5, "abortBroadcast"    # Z
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 3079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3080
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3081
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3084
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 3085
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1b
    .line 3086
    if-eqz p5, :cond_0

    #@1d
    move v2, v3

    #@1e
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 3087
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 3088
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v4, 0x10

    #@28
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 3089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 3090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 3077
    return-void

    #@35
    .line 3086
    :cond_0
    const/4 v2, 0x0

    #@36
    goto :goto_0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2932
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2933
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 2935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 2936
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2937
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x20

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 2938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2929
    return-void
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2956
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2957
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2958
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 2959
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xe0

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 2960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 2961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2954
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4500
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4501
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4504
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x4f

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4505
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4498
    return-void
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3966
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3967
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3969
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x31

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3971
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@1f
    move-result-object v2

    #@20
    .line 3972
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3974
    return-object v2
.end method

.method public getActivityDisplayId(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5607
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 5608
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5610
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb9

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5611
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5612
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    .line 5613
    .local v1, "displayId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5614
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5615
    return v1
.end method

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 4740
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v3

    #@8
    .line 4741
    .local v3, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4742
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4743
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v5, 0xdc

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4744
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4745
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1f
    move-result-object v0

    #@20
    .line 4746
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    #@22
    const/4 v2, 0x0

    #@23
    .line 4747
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4748
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4749
    return-object v2

    #@2a
    .line 4746
    :cond_0
    new-instance v2, Landroid/app/ActivityOptions;

    #@2c
    invoke-direct {v2, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@2f
    .local v2, "options":Landroid/app/ActivityOptions;
    goto :goto_0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3450
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3451
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3452
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xab

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3453
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3454
    sget-object v3, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1e
    move-result-object v1

    #@1f
    .line 3455
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3456
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3457
    return-object v1
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3247
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3248
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3249
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xeb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3251
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/graphics/Point;

    #@21
    .line 3252
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 3253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 3254
    return-object v2
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/IAppTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 3210
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v3

    #@9
    .line 3211
    .local v3, "reply":Landroid/os/Parcel;
    const-string/jumbo v5, "android.app.IActivityManager"

    #@c
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3212
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 3213
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v6, 0xdd

    #@16
    invoke-interface {v5, v6, v1, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3214
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3215
    const/4 v2, 0x0

    #@1d
    .line 3216
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    .line 3217
    .local v0, "N":I
    if-ltz v0, :cond_0

    #@23
    .line 3218
    new-instance v2, Ljava/util/ArrayList;

    #@25
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@28
    .line 3219
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    :goto_0
    if-lez v0, :cond_0

    #@2a
    .line 3220
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v5}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    #@31
    move-result-object v4

    #@32
    .line 3221
    .local v4, "task":Landroid/app/IAppTask;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 3222
    add-int/lit8 v0, v0, -0x1

    #@37
    goto :goto_0

    #@38
    .line 3225
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    .end local v4    # "task":Landroid/app/IAppTask;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 3226
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 3227
    return-object v2
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5391
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5392
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5394
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa2

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5396
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1f
    move-result-object v2

    #@20
    .line 5397
    .local v2, "res":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5399
    return-object v2
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3198
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3199
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3201
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x16

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3203
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@1f
    move-result-object v2

    #@20
    .line 3204
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3206
    return-object v2
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3185
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3186
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3188
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x15

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3190
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 3191
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3193
    return-object v2
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3919
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3920
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3921
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x2e

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3922
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3923
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/content/res/Configuration;

    #@21
    .line 3924
    .local v2, "res":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 3925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 3926
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v1

    #@6
    .line 3543
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v2

    #@a
    .line 3544
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v6, "android.app.IActivityManager"

    #@d
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3545
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 3546
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 3547
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 3548
    if-eqz p4, :cond_2

    #@21
    const/4 v4, 0x1

    #@22
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 3549
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v6, 0x1d

    #@29
    invoke-interface {v4, v6, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 3550
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 3551
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    .line 3552
    .local v3, "res":I
    const/4 v0, 0x0

    #@34
    .line 3553
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_1

    #@36
    .line 3554
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    #@3e
    .line 3556
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 3557
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 3558
    return-object v0

    #@45
    .end local v3    # "res":I
    :cond_2
    move v4, v5

    #@46
    .line 3548
    goto :goto_0
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 3563
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 3564
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3565
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 3566
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3567
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 3568
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0x8d

    #@1c
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3569
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3570
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    .line 3571
    .local v3, "res":I
    const/4 v0, 0x0

    #@27
    .line 3572
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    #@29
    .line 3573
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    #@31
    .line 3575
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 3576
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 3577
    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5070
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5071
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5072
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x91

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5074
    sget-object v3, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/content/pm/UserInfo;

    #@21
    .line 5075
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 5076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 5077
    return-object v2
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4526
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4527
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4528
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x54

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4530
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/content/pm/ConfigurationInfo;

    #@21
    .line 4531
    .local v2, "res":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 4532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4533
    return-object v2
.end method

.method public getFocusedStackId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3505
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3506
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3507
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3508
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3509
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    .line 3510
    .local v1, "focusedStackId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 3511
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3512
    return v1
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4955
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 4956
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4957
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x7c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4958
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4959
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    .line 4960
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 4961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4962
    return v1
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5191
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5192
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5193
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 5194
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v4, 0xa1

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 5195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 5196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 5197
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/content/Intent;

    #@2e
    .line 5198
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 5199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 5200
    return-object v2

    #@35
    .line 5197
    :cond_0
    const/4 v2, 0x0

    #@36
    .local v2, "res":Landroid/content/Intent;
    goto :goto_0
.end method

.method public getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 7
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "options"    # Landroid/os/Bundle;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 3994
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3995
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3996
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 3997
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 3998
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 3999
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 4000
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 4001
    if-eqz p6, :cond_0

    #@1f
    .line 4002
    const/4 v4, 0x1

    #@20
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 4003
    const/4 v4, 0x0

    #@24
    invoke-virtual {v1, p6, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@27
    .line 4004
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2a
    .line 4008
    :goto_0
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 4009
    if-eqz p9, :cond_1

    #@2f
    .line 4010
    const/4 v4, 0x1

    #@30
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 4011
    const/4 v4, 0x0

    #@34
    move-object/from16 v0, p9

    #@36
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 4015
    :goto_1
    move/from16 v0, p10

    #@3b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 4016
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@40
    const/16 v5, 0x3f

    #@42
    const/4 v6, 0x0

    #@43
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@46
    .line 4017
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@49
    .line 4019
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4c
    move-result-object v4

    #@4d
    .line 4018
    invoke-static {v4}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@50
    move-result-object v3

    #@51
    .line 4020
    .local v3, "res":Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 4021
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 4022
    return-object v3

    #@58
    .line 4006
    .end local v3    # "res":Landroid/content/IIntentSender;
    :cond_0
    const/4 v4, 0x0

    #@59
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    goto :goto_0

    #@5d
    .line 4013
    :cond_1
    const/4 v4, 0x0

    #@5e
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5330
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5331
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5333
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa4

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5335
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 5336
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5338
    return-object v2
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5317
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5318
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5320
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x96

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v2

    #@20
    .line 5323
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5325
    return v2
.end method

.method public getLockTaskModeState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5691
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 5692
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5693
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x11f

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5694
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5695
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    .line 5696
    .local v1, "lockTaskModeState":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 5697
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5698
    return v1
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4268
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4269
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4270
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x4c

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4272
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@1c
    .line 4273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4266
    return-void
.end method

.method public getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4514
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4515
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4516
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8f

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4517
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4518
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@1c
    .line 4519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4511
    return-void
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 5004
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 5005
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5006
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 5007
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x80

    #@16
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5008
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5009
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    .line 5010
    .local v0, "ask":Z
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5012
    return v0

    #@2a
    .line 5009
    .end local v0    # "ask":Z
    :cond_0
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "ask":Z
    goto :goto_0
.end method

.method public getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4036
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4037
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4038
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 4039
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x41

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 4040
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 4041
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 4042
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 4044
    return-object v2
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3979
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3980
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3982
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x32

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3984
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 3985
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3987
    return-object v2
.end method

.method public getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5947
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5948
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 5950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 5951
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x126

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5952
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v2

    #@23
    .line 5954
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5956
    return v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4978
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 4979
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4981
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x7e

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4982
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4983
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    .line 4984
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4986
    return v1
.end method

.method public getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4241
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 4242
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 4244
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4245
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0xb6

    #@1c
    invoke-interface {v3, v5, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4246
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4247
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@24
    invoke-interface {v3, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/content/pm/ParceledListSlice;

    #@2a
    .line 4249
    .local v1, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 4250
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 4251
    return-object v1

    #@31
    .end local v1    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_0
    move v3, v4

    #@32
    .line 4244
    goto :goto_0
.end method

.method public getProcessLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4091
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4092
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4093
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x34

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 4096
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 4097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4098
    return v2
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4633
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4634
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 4636
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x62

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4638
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/os/Debug$MemoryInfo;

    #@24
    .line 4639
    .local v2, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 4641
    return-object v2
.end method

.method public getProcessPss([I)[J
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5232
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5233
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 5235
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x89

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5237
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    #@1f
    move-result-object v2

    #@20
    .line 5238
    .local v2, "res":[J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5240
    return-object v2
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3340
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3341
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3342
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x4d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3343
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3345
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1e
    move-result-object v1

    #@1f
    .line 3346
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3347
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3348
    return-object v1
.end method

.method public getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4822
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4823
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4824
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 4825
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4826
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x73

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4828
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 4829
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4831
    return-object v2
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3284
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3285
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 3287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 3288
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 3289
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x3c

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3290
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3292
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@27
    move-result-object v1

    #@28
    .line 3293
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 3294
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 3295
    return-object v1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3953
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3954
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3956
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x47

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v2

    #@20
    .line 3959
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3961
    return v2
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3353
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3354
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3355
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x53

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3356
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3358
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1e
    move-result-object v1

    #@1f
    .line 3359
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3360
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3361
    return-object v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3366
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 3367
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3368
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x6c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 3369
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 3371
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1e
    move-result-object v1

    #@1f
    .line 3372
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3373
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3374
    return-object v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3659
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3660
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3661
    invoke-virtual {p1, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 3662
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x21

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3664
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    #@1f
    move-result-object v2

    #@20
    .line 3665
    .local v2, "res":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3667
    return-object v2
.end method

.method public getRunningUserIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5096
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5097
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5098
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9d

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5100
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    #@1c
    move-result-object v2

    #@1d
    .line 5101
    .local v2, "result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 5102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5103
    return-object v2
.end method

.method public getServices(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 3315
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v4

    #@9
    .line 3316
    .local v4, "reply":Landroid/os/Parcel;
    const-string/jumbo v5, "android.app.IActivityManager"

    #@c
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3317
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3318
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3319
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v6, 0x51

    #@19
    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3320
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 3321
    const/4 v3, 0x0

    #@20
    .line 3322
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    .line 3323
    .local v0, "N":I
    if-ltz v0, :cond_0

    #@26
    .line 3324
    new-instance v3, Ljava/util/ArrayList;

    #@28
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 3325
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    if-lez v0, :cond_0

    #@2d
    .line 3327
    sget-object v5, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    #@35
    .line 3329
    .local v2, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 3330
    add-int/lit8 v0, v0, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 3333
    .end local v2    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 3334
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 3335
    return-object v3
.end method

.method public getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 7
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3463
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 3464
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3466
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v5, 0xad

    #@16
    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3467
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3468
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    .line 3469
    .local v3, "res":I
    const/4 v1, 0x0

    #@21
    .line 3470
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_0

    #@23
    .line 3471
    sget-object v4, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    #@2b
    .line 3473
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 3474
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 3475
    return-object v1
.end method

.method public getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5206
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5207
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5208
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 5209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 5210
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xd3

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5212
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 5213
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 5214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 5215
    return-object v2
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5758
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 5759
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 5761
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0xef

    #@16
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5762
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5763
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_0

    #@22
    const/4 v1, 0x0

    #@23
    .line 5764
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5765
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5766
    return-object v1

    #@2a
    .line 5763
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/graphics/Bitmap;

    #@32
    .local v1, "icon":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3529
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3530
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3532
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 3533
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0x1b

    #@1c
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    .line 3536
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 3537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3538
    return v2

    #@2d
    .end local v2    # "res":I
    :cond_0
    move v3, v4

    #@2e
    .line 3532
    goto :goto_0
.end method

.method public getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3299
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3300
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3302
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x52

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3304
    const/4 v2, 0x0

    #@1d
    .line 3305
    .local v2, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 3306
    sget-object v3, Landroid/app/ActivityManager$TaskThumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .end local v2    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    check-cast v2, Landroid/app/ActivityManager$TaskThumbnail;

    #@2b
    .line 3308
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 3310
    return-object v2
.end method

.method public getTasks(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 3259
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v4

    #@9
    .line 3260
    .local v4, "reply":Landroid/os/Parcel;
    const-string/jumbo v5, "android.app.IActivityManager"

    #@c
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3261
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3262
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3263
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v6, 0x17

    #@19
    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3264
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 3265
    const/4 v3, 0x0

    #@20
    .line 3266
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    .line 3267
    .local v0, "N":I
    if-ltz v0, :cond_0

    #@26
    .line 3268
    new-instance v3, Ljava/util/ArrayList;

    #@28
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 3269
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    if-lez v0, :cond_0

    #@2d
    .line 3271
    sget-object v5, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    #@35
    .line 3273
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 3274
    add-int/lit8 v0, v0, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 3277
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 3278
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 3279
    return-object v3
.end method

.method public getUidForIntentSender(Landroid/content/IIntentSender;)I
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4048
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4049
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4050
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 4051
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x5d

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 4052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 4053
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v2

    #@24
    .line 4054
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 4056
    return v2
.end method

.method public grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4180
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4181
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4182
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 4183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 4184
    invoke-virtual {p3, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 4185
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 4186
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 4187
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x37

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 4188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 4189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 4178
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "mode"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4851
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4852
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4855
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 4856
    invoke-virtual {p4, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 4857
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 4858
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 4859
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 4860
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x37

    #@28
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 4861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 4862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 4863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 4849
    return-void
.end method

.method public handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4421
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4422
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4424
    invoke-virtual {p2, v0, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 4425
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x2

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 4426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 4427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 4428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 4418
    return-void
.end method

.method public handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "violationMask"    # I
    .param p3, "info"    # Landroid/os/StrictMode$ViolationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4454
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4455
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4458
    invoke-virtual {p3, v0, v4}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 4459
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x6e

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4451
    return-void
.end method

.method public handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 6
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "system"    # Z
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4435
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4436
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4438
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 4439
    if-eqz p3, :cond_0

    #@17
    const/4 v3, 0x1

    #@18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 4440
    invoke-virtual {p4, v0, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 4441
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v5, 0x66

    #@22
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 4442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 4443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 4444
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 4445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 4446
    return v2

    #@36
    .end local v2    # "res":Z
    :cond_0
    move v3, v4

    #@37
    .line 4439
    goto :goto_0

    #@38
    .line 4443
    :cond_1
    const/4 v2, 0x0

    #@39
    .restart local v2    # "res":Z
    goto :goto_1
.end method

.method public handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "requireFull"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 4061
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 4062
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 4063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 4064
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 4065
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 4066
    if-eqz p4, :cond_0

    #@1b
    move v3, v4

    #@1c
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 4067
    if-eqz p5, :cond_1

    #@21
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 4068
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 4069
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 4070
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/16 v4, 0x5e

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 4071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 4072
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    .line 4073
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 4074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 4075
    return v2

    #@3f
    .end local v2    # "res":I
    :cond_0
    move v3, v5

    #@40
    .line 4066
    goto :goto_0

    #@41
    :cond_1
    move v4, v5

    #@42
    .line 4067
    goto :goto_1
.end method

.method public hang(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "allowRestart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5498
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5499
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5501
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5502
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xa7

    #@1c
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5496
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 5501
    goto :goto_0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .locals 7
    .param p1, "pid"    # I
    .param p2, "aboveSystem"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5376
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5377
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5379
    if-eqz p2, :cond_0

    #@14
    const/4 v4, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5380
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 5381
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v6, 0x9f

    #@1f
    invoke-interface {v4, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 5382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 5383
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v4

    #@29
    int-to-long v2, v4

    #@2a
    .line 5384
    .local v2, "res":J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 5385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 5386
    return-wide v2

    #@31
    .end local v2    # "res":J
    :cond_0
    move v4, v5

    #@32
    .line 5379
    goto :goto_0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5459
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5460
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5461
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@11
    const/16 v4, 0x12c

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 5464
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5466
    return v2

    #@27
    .line 5463
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5805
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5806
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5808
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0xe3

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5809
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5810
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-lez v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 5811
    .local v2, "visible":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5813
    return v2

    #@2a
    .line 5810
    .end local v2    # "visible":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "visible":Z
    goto :goto_0
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4768
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4769
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4771
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x6f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    const/4 v4, 0x1

    #@21
    if-ne v3, v4, :cond_0

    #@23
    const/4 v2, 0x1

    #@24
    .line 4774
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 4776
    return v2

    #@2b
    .line 4773
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2c
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isInHomeStack(I)Z
    .locals 6
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3480
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 3481
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3483
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0xd5

    #@16
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3484
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3485
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-lez v3, :cond_0

    #@22
    const/4 v1, 0x1

    #@23
    .line 3486
    .local v1, "isInHomeStack":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3487
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 3488
    return v1

    #@2a
    .line 3485
    .end local v1    # "isInHomeStack":Z
    :cond_0
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "isInHomeStack":Z
    goto :goto_0
.end method

.method public isInLockTaskMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5678
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 5679
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5680
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5681
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5682
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x1

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    const/4 v1, 0x1

    #@21
    .line 5683
    .local v1, "isInLockTaskMode":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 5684
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 5685
    return v1

    #@28
    .line 5682
    .end local v1    # "isInLockTaskMode":Z
    :cond_0
    const/4 v1, 0x0

    #@29
    .restart local v1    # "isInLockTaskMode":Z
    goto :goto_0
.end method

.method public isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5178
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5179
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5180
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 5181
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v4, 0x98

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 5182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 5183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    const/4 v2, 0x1

    #@27
    .line 5184
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 5185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 5186
    return v2

    #@2e
    .line 5183
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5165
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5166
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5167
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 5168
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v4, 0x87

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 5169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 5170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    const/4 v2, 0x1

    #@27
    .line 5171
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 5172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 5173
    return v2

    #@2e
    .line 5170
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5979
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5980
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5982
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v5, 0x12e

    #@16
    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5984
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v2

    #@20
    .line 5985
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 5986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5987
    if-eqz v2, :cond_0

    #@28
    const/4 v3, 0x1

    #@29
    :cond_0
    return v3
.end method

.method public isTopActivityImmersive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4795
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4796
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4797
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x71

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4799
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x1

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    const/4 v2, 0x1

    #@21
    .line 4800
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 4801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4802
    return v2

    #@28
    .line 4799
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@29
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4781
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4782
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4783
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4784
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe1

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4785
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4786
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    const/4 v4, 0x1

    #@21
    if-ne v3, v4, :cond_0

    #@23
    const/4 v2, 0x1

    #@24
    .line 4787
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 4788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 4789
    return v2

    #@2b
    .line 4786
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2c
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isUserAMonkey()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4673
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4674
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4675
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@11
    const/16 v4, 0x68

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 4678
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4680
    return v2

    #@27
    .line 4677
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public isUserRunning(IZ)Z
    .locals 6
    .param p1, "userid"    # I
    .param p2, "orStopping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5082
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5083
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5085
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5086
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0x7a

    #@1c
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5087
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5088
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 5089
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 5090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 5091
    return v2

    #@30
    .end local v2    # "result":Z
    :cond_0
    move v3, v4

    #@31
    .line 5085
    goto :goto_0

    #@32
    .line 5088
    :cond_1
    const/4 v2, 0x0

    #@33
    .restart local v2    # "result":Z
    goto :goto_1
.end method

.method public keyguardGoingAway(ZZ)V
    .locals 5
    .param p1, "disableWindowAnimations"    # Z
    .param p2, "keyguardGoingToNotificationShade"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 5267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 5268
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 5269
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 5270
    if-eqz p1, :cond_0

    #@12
    move v2, v3

    #@13
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 5271
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 5272
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x129

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 5273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 5274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 5266
    return-void

    #@2c
    :cond_0
    move v2, v4

    #@2d
    .line 5270
    goto :goto_0

    #@2e
    :cond_1
    move v3, v4

    #@2f
    .line 5271
    goto :goto_1
.end method

.method public keyguardWaitingForActivityDrawn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5257
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5258
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5259
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xe8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5255
    return-void
.end method

.method public killAllBackgroundProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4490
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4491
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4492
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x8c

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 4495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4488
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4646
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4647
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4650
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x63

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4651
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4644
    return-void
.end method

.method public killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4608
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4609
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4612
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 4613
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x60

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4606
    return-void
.end method

.method public killBackgroundProcesses(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4478
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4479
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4482
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x67

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4476
    return-void
.end method

.method public killPids([ILjava/lang/String;Z)Z
    .locals 6
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4388
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4389
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@12
    .line 4391
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 4392
    if-eqz p3, :cond_0

    #@17
    const/4 v3, 0x1

    #@18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 4393
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v5, 0x50

    #@1f
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 4394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 4395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 4396
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 4397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 4398
    return v2

    #@33
    .end local v2    # "res":Z
    :cond_0
    move v3, v4

    #@34
    .line 4392
    goto :goto_0

    #@35
    .line 4395
    :cond_1
    const/4 v2, 0x0

    #@36
    .restart local v2    # "res":Z
    goto :goto_1
.end method

.method public killProcessesBelowForeground(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4403
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4404
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 4406
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x90

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 4408
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4410
    return v2

    #@27
    .line 4407
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public killUid(IILjava/lang/String;)V
    .locals 5
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5485
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5486
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 5489
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 5490
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xa5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5483
    return-void
.end method

.method public launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestType"    # I
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "userHandle"    # I
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5442
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5443
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5444
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 5445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 5446
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 5447
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 5448
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1e
    .line 5449
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0xf0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 5450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 5451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 5452
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 5453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 5454
    return v2

    #@36
    .line 5451
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@37
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3397
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3398
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3400
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 3401
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0x4b

    #@1c
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 3404
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 3406
    return v2

    #@30
    .end local v2    # "res":Z
    :cond_0
    move v3, v4

    #@31
    .line 3400
    goto :goto_0

    #@32
    .line 3403
    :cond_1
    const/4 v2, 0x0

    #@33
    .restart local v2    # "res":Z
    goto :goto_1
.end method

.method public moveTaskBackwards(I)V
    .locals 5
    .param p1, "task"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3411
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3412
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 3414
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x1a

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3408
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "task"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3379
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3380
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3383
    if-eqz p3, :cond_0

    #@17
    .line 3384
    const/4 v2, 0x1

    #@18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 3385
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 3389
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x18

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 3390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 3391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 3376
    return-void

    #@2f
    .line 3387
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    goto :goto_0
.end method

.method public moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3423
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3424
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3427
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 3428
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0xa9

    #@1f
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 3429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 3430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 3431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 3420
    return-void

    #@2c
    :cond_0
    move v2, v3

    #@2d
    .line 3427
    goto :goto_0
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "target"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5296
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5297
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5299
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 5300
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5301
    if-eqz p4, :cond_0

    #@1a
    .line 5302
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 5303
    invoke-virtual {p4, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 5307
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v4, 0x93

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 5308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 5309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    const/4 v2, 0x1

    #@32
    .line 5310
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 5311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 5312
    return v2

    #@39
    .line 5305
    .end local v2    # "result":Z
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    goto :goto_0

    #@3d
    .line 5309
    :cond_1
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "result":Z
    goto :goto_1
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4837
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4838
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4840
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x74

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4842
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v2

    #@20
    .line 4843
    .local v2, "res":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4845
    return-object v2
.end method

.method public noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4379
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IActivityManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 4380
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4382
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 4383
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x125

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 4384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4377
    return-void
.end method

.method public noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4369
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IActivityManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 4370
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4371
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4372
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 4373
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x124

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 4374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 4367
    return-void
.end method

.method public noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4358
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IActivityManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 4359
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4361
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 4362
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 4363
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v2, 0x44

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 4364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4356
    return-void
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5521
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5522
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5524
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb0

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5519
    return-void
.end method

.method public notifyCleartextNetwork(I[B)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5866
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5867
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 5870
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x119

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5864
    return-void
.end method

.method public notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5843
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5844
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5846
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xe7

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5841
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5831
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5832
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5834
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xe5

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5829
    return-void
.end method

.method public openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4289
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 4290
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4291
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@11
    const/4 v4, 0x5

    #@12
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 4292
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@18
    .line 4293
    const/4 v1, 0x0

    #@19
    .line 4294
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 4295
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    #@27
    .line 4297
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 4298
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 4299
    return-object v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4659
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4660
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 4662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 4663
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 4664
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 4665
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x65

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 4657
    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 3821
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v2

    #@9
    .line 3822
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3823
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 3824
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 3825
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 3826
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x55

    #@1c
    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3827
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3828
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25
    move-result-object v0

    #@26
    .line 3829
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 3830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3831
    return-object v0
.end method

.method public performIdleMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5542
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5543
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5544
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xb3

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5540
    return-void
.end method

.method public profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z
    .locals 6
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "start"    # Z
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 4540
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 4541
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 4542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 4543
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 4544
    if-eqz p3, :cond_0

    #@18
    move v3, v4

    #@19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 4545
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 4546
    if-eqz p4, :cond_1

    #@21
    .line 4547
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 4548
    invoke-virtual {p4, v0, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 4552
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/16 v4, 0x56

    #@2b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2e
    .line 4553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@31
    .line 4554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_2

    #@37
    const/4 v2, 0x1

    #@38
    .line 4555
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 4556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 4557
    return v2

    #@3f
    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    #@40
    .line 4544
    goto :goto_0

    #@41
    .line 4550
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    goto :goto_1

    #@45
    .line 4554
    :cond_2
    const/4 v2, 0x0

    #@46
    .restart local v2    # "res":Z
    goto :goto_2
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    const/4 v2, 0x0

    #@1
    .line 3582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3583
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3584
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3585
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 3586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b
    .line 3587
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1e

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 3588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 3589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 3590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3580
    return-void
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3778
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3779
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3781
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 3782
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 3783
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x26

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 3776
    return-void
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .locals 6
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # I
    .param p3, "unstable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3595
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3596
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 3599
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 3600
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x1f

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 3603
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 3605
    return v2

    #@30
    .line 3602
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@31
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5121
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5122
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5123
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 5124
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x85

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5119
    return-void
.end method

.method public registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/IIntentReceiver;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "perm"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3003
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v3

    #@a
    .line 3004
    .local v3, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3005
    if-eqz p1, :cond_2

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 3006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 3007
    if-eqz p3, :cond_0

    #@1e
    invoke-interface {p3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v5

    #@22
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 3008
    invoke-virtual {p4, v0, v6}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 3009
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 3010
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 3011
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@30
    const/16 v5, 0xc

    #@32
    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@35
    .line 3012
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    #@38
    .line 3013
    const/4 v2, 0x0

    #@39
    .line 3014
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v1

    #@3d
    .line 3015
    .local v1, "haveIntent":I
    if-eqz v1, :cond_1

    #@3f
    .line 3016
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    .end local v2    # "intent":Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    #@47
    .line 3018
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 3019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 3020
    return-object v2

    #@4e
    .end local v1    # "haveIntent":I
    :cond_2
    move-object v4, v5

    #@4f
    .line 3005
    goto :goto_0
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3518
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3519
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3520
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 3521
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xf3

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3515
    return-void
.end method

.method public registerUidObserver(Landroid/app/IUidObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5143
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5144
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5145
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IUidObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 5146
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x12a

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5141
    return-void
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5343
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5344
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5345
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 5346
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9b

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5341
    return-void
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2966
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2967
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 2969
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0xec

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 2971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 2972
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2974
    return v2

    #@2a
    .line 2971
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4226
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4227
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4228
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 4229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4231
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb5

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4224
    return-void
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2978
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2979
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2980
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 2981
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xed

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 2982
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 2983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2976
    return-void
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3633
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3634
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3636
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 3637
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x45

    #@1c
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 3631
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 3636
    goto :goto_0
.end method

.method public removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3645
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3646
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 3648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 3649
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x8e

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3650
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 3651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3643
    return-void
.end method

.method public removeTask(I)Z
    .locals 6
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5108
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5109
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5111
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x84

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 5114
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5116
    return v2

    #@2a
    .line 5113
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5510
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5511
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5513
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xb1

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5508
    return-void
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "referrer"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5421
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5422
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@15
    .line 5425
    invoke-virtual {p3, v0, v4}, Landroid/app/assist/AssistStructure;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 5426
    invoke-virtual {p4, v0, v4}, Landroid/app/assist/AssistContent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 5427
    if-eqz p5, :cond_0

    #@1d
    .line 5428
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 5429
    invoke-virtual {p5, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 5433
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0xa3

    #@28
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 5434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 5435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 5436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 5419
    return-void

    #@35
    .line 5431
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_0
.end method

.method public requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5405
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5406
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5408
    invoke-interface {p2}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 5409
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c
    .line 5410
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1e
    const/16 v4, 0x11d

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 5411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 5412
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 5413
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 5414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 5415
    return v2

    #@34
    .line 5412
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@35
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public requestBugReport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5365
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5366
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5367
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x9e

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5363
    return-void
.end method

.method public requestVisibleBehind(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5790
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5791
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5793
    if-eqz p2, :cond_0

    #@14
    const/4 v3, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5794
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0xe2

    #@1c
    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-lez v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 5797
    .local v2, "success":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 5798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 5799
    return v2

    #@30
    .end local v2    # "success":Z
    :cond_0
    move v3, v4

    #@31
    .line 5793
    goto :goto_0

    #@32
    .line 5796
    :cond_1
    const/4 v2, 0x0

    #@33
    .restart local v2    # "success":Z
    goto :goto_1
.end method

.method public resizeStack(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackBoxId"    # I
    .param p2, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3437
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3438
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3440
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 3441
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xaa

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 3443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3434
    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5745
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5746
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5748
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 5749
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x11e

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5750
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5742
    return-void
.end method

.method public restart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5532
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5533
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5534
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xb2

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5530
    return-void
.end method

.method public resumeAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4586
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4587
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4588
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x59

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 4591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4584
    return-void
.end method

.method public revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4195
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4196
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4197
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 4198
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 4199
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 4200
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 4201
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x38

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 4202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 4203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 4204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 4193
    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4869
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4870
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4872
    if-eqz p2, :cond_0

    #@14
    .line 4873
    const/4 v2, 0x1

    #@15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4874
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 4878
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 4879
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 4880
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x38

    #@25
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 4881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 4882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 4883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 4867
    return-void

    #@32
    .line 4876
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    goto :goto_0
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3806
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3807
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 3810
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 3811
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 3812
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x3d

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 3813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 3814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 3815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 3804
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 5
    .param p1, "watcher"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4341
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4342
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4343
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IActivityController;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 4344
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x39

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 4345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 4346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4338
    return-void
.end method

.method public setAlwaysFinish(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4330
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4331
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4332
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4333
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x2b

    #@19
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4327
    return-void

    #@26
    :cond_0
    move v2, v3

    #@27
    .line 4332
    goto :goto_0
.end method

.method public setDebugApp(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "waitForDebugger"    # Z
    .param p3, "persistent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 4316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 4317
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 4318
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 4319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 4320
    if-eqz p2, :cond_0

    #@15
    move v2, v3

    #@16
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 4321
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 4322
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x2a

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 4323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 4324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 4314
    return-void

    #@2f
    :cond_0
    move v2, v4

    #@30
    .line 4320
    goto :goto_0

    #@31
    :cond_1
    move v3, v4

    #@32
    .line 4321
    goto :goto_1
.end method

.method public setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5880
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5881
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 5883
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 5884
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 5885
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 5886
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x120

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 5887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 5888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 5878
    return-void
.end method

.method public setFocusedStack(I)V
    .locals 5
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3494
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3495
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 3497
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xac

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3491
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4967
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4968
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4970
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x7d

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4971
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4965
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4755
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4756
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4758
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4759
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x70

    #@1c
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4753
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 4758
    goto :goto_0
.end method

.method public setLockScreenShown(Z)V
    .locals 5
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4304
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4305
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4306
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4307
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x94

    #@19
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4301
    return-void

    #@26
    :cond_0
    move v2, v3

    #@27
    .line 4306
    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5018
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5019
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 5021
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5022
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x81

    #@1c
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5016
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 5021
    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4992
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4993
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 4995
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 4996
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x7f

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4990
    return-void
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4103
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4104
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 4106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4107
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 4108
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x49

    #@1f
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 4109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 4110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 4101
    return-void

    #@2c
    :cond_0
    move v2, v3

    #@2d
    .line 4107
    goto :goto_0
.end method

.method public setProcessLimit(I)V
    .locals 5
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4080
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4081
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4083
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x33

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4077
    return-void
.end method

.method public setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5963
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5964
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5965
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 5966
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 5967
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5968
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v5, 0xbb

    #@1c
    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    .line 5971
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 5973
    if-eqz v2, :cond_0

    #@2e
    const/4 v3, 0x1

    #@2f
    :cond_0
    return v3
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3942
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3943
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 3946
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x46

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 3947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 3948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 3940
    return-void
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 3722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3723
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3724
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3725
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@13
    .line 3726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 3727
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 3728
    if-eqz p4, :cond_0

    #@1b
    .line 3729
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 3730
    invoke-virtual {p4, v0, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 3734
    :goto_0
    if-eqz p5, :cond_1

    #@23
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 3735
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@28
    const/16 v4, 0x4a

    #@2a
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 3736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@30
    .line 3737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 3721
    return-void

    #@37
    .line 3732
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    goto :goto_0

    #@3b
    :cond_1
    move v2, v3

    #@3c
    .line 3734
    goto :goto_1
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "values"    # Landroid/app/ActivityManager$TaskDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5718
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5719
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5721
    invoke-virtual {p2, v0, v4}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 5722
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xda

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5716
    return-void
.end method

.method public setTaskResizeable(IZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "resizeable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5731
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5732
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5734
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5735
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x11c

    #@1c
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5729
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 5734
    goto :goto_0
.end method

.method public setUserIsMonkey(Z)V
    .locals 5
    .param p1, "monkey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4685
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4686
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4687
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4688
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0xa6

    #@19
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 4689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 4690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4683
    return-void

    #@26
    :cond_0
    move v2, v3

    #@27
    .line 4687
    goto :goto_0
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5908
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5909
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5910
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 5911
    if-eqz p2, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 5912
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1e
    const/16 v4, 0x122

    #@20
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 5913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 5914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 5906
    return-void

    #@2d
    :cond_0
    move v2, v3

    #@2e
    .line 5911
    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5281
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5282
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 5285
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x92

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5287
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 5288
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 5290
    return v2

    #@2d
    .line 5287
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5471
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5472
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 5474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@15
    .line 5475
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v4, 0x12d

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5476
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5477
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 5478
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 5480
    return v2

    #@2d
    .line 5477
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5245
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5246
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5247
    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@12
    .line 5248
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 5249
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x8a

    #@1c
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 5250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 5251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 5243
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 5248
    goto :goto_0
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5704
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5705
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5707
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x127

    #@15
    .line 5708
    const/4 v4, 0x1

    #@16
    .line 5707
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5702
    return-void
.end method

.method public showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 5
    .param p1, "who"    # Landroid/app/IApplicationThread;
    .param p2, "waiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4257
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4258
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4259
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 4260
    if-eqz p2, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 4261
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1e
    const/16 v4, 0x3a

    #@20
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 4262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 4263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 4255
    return-void

    #@2d
    :cond_0
    move v2, v3

    #@2e
    .line 4260
    goto :goto_0
.end method

.method public shutdown(I)Z
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4563
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4564
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 4566
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x57

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 4569
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 4570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 4571
    return v2

    #@2a
    .line 4568
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public signalPersistentProcesses(I)V
    .locals 5
    .param p1, "sig"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4467
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4468
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 4470
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3b

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 4471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 4465
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 4930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 4931
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 4932
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 4933
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 4934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 4935
    invoke-virtual {v0, p3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1f
    .line 4936
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@22
    .line 4937
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 4938
    if-eqz p6, :cond_1

    #@27
    .line 4939
    const/4 v3, 0x1

    #@28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 4940
    invoke-virtual {p6, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 4944
    :goto_0
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 4945
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/16 v4, 0x79

    #@35
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@38
    .line 4946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3b
    .line 4947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v2

    #@3f
    .line 4948
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 4949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 4950
    return v2

    #@46
    .line 4942
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    goto :goto_0
.end method

.method public startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2635
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2636
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2637
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 2638
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 2639
    const/4 v4, 0x0

    #@1b
    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2640
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 2641
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 2642
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 2643
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 2644
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 2645
    if-eqz p9, :cond_1

    #@2f
    .line 2646
    const/4 v4, 0x1

    #@30
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 2647
    const/4 v4, 0x1

    #@34
    move-object/from16 v0, p9

    #@36
    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 2651
    :goto_1
    if-eqz p10, :cond_2

    #@3b
    .line 2652
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 2653
    const/4 v4, 0x0

    #@40
    move-object/from16 v0, p10

    #@42
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@45
    .line 2657
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@47
    const/4 v5, 0x3

    #@48
    const/4 v6, 0x0

    #@49
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@4c
    .line 2658
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@4f
    .line 2659
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v3

    #@53
    .line 2660
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 2661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@59
    .line 2662
    return v3

    #@5a
    .line 2637
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    #@5b
    goto :goto_0

    #@5c
    .line 2649
    :cond_1
    const/4 v4, 0x0

    #@5d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    goto :goto_1

    #@61
    .line 2655
    :cond_2
    const/4 v4, 0x0

    #@62
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    goto :goto_2
.end method

.method public startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2741
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2742
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2743
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 2744
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 2745
    const/4 v4, 0x0

    #@1b
    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2746
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 2747
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 2748
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 2749
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 2750
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 2751
    if-eqz p9, :cond_1

    #@2f
    .line 2752
    const/4 v4, 0x1

    #@30
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 2753
    const/4 v4, 0x1

    #@34
    move-object/from16 v0, p9

    #@36
    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 2757
    :goto_1
    if-eqz p10, :cond_2

    #@3b
    .line 2758
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 2759
    const/4 v4, 0x0

    #@40
    move-object/from16 v0, p10

    #@42
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@45
    .line 2763
    :goto_2
    move/from16 v0, p11

    #@47
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 2764
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@4c
    const/16 v5, 0x69

    #@4e
    const/4 v6, 0x0

    #@4f
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@52
    .line 2765
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@55
    .line 2766
    sget-object v4, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57
    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5a
    move-result-object v3

    #@5b
    check-cast v3, Landroid/app/IActivityManager$WaitResult;

    #@5d
    .line 2767
    .local v3, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@60
    .line 2768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@63
    .line 2769
    return-object v3

    #@64
    .line 2743
    .end local v3    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_0
    const/4 v4, 0x0

    #@65
    goto :goto_0

    #@66
    .line 2755
    :cond_1
    const/4 v4, 0x0

    #@67
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    goto :goto_1

    #@6b
    .line 2761
    :cond_2
    const/4 v4, 0x0

    #@6c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    goto :goto_2
.end method

.method public startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "ignoreTargetSecurity"    # Z
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2705
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2706
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2707
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 2708
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 2709
    const/4 v4, 0x0

    #@1b
    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2710
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 2711
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 2712
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 2713
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 2714
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 2715
    if-eqz p9, :cond_1

    #@2f
    .line 2716
    const/4 v4, 0x1

    #@30
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 2717
    const/4 v4, 0x1

    #@34
    move-object/from16 v0, p9

    #@36
    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 2721
    :goto_1
    if-eqz p10, :cond_2

    #@3b
    .line 2722
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 2723
    const/4 v4, 0x0

    #@40
    move-object/from16 v0, p10

    #@42
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@45
    .line 2727
    :goto_2
    if-eqz p11, :cond_3

    #@47
    const/4 v4, 0x1

    #@48
    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 2728
    move/from16 v0, p12

    #@4d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 2729
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@52
    const/16 v5, 0xe9

    #@54
    const/4 v6, 0x0

    #@55
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@58
    .line 2730
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@5b
    .line 2731
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v3

    #@5f
    .line 2732
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@62
    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@65
    .line 2734
    return v3

    #@66
    .line 2707
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    #@67
    goto :goto_0

    #@68
    .line 2719
    :cond_1
    const/4 v4, 0x0

    #@69
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    goto :goto_1

    #@6d
    .line 2725
    :cond_2
    const/4 v4, 0x0

    #@6e
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    goto :goto_2

    #@72
    .line 2727
    :cond_3
    const/4 v4, 0x0

    #@73
    goto :goto_3
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2670
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2671
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2672
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 2673
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 2674
    const/4 v4, 0x0

    #@1b
    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2675
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 2676
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 2677
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 2678
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 2679
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 2680
    if-eqz p9, :cond_1

    #@2f
    .line 2681
    const/4 v4, 0x1

    #@30
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 2682
    const/4 v4, 0x1

    #@34
    move-object/from16 v0, p9

    #@36
    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 2686
    :goto_1
    if-eqz p10, :cond_2

    #@3b
    .line 2687
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 2688
    const/4 v4, 0x0

    #@40
    move-object/from16 v0, p10

    #@42
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@45
    .line 2692
    :goto_2
    move/from16 v0, p11

    #@47
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 2693
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@4c
    const/16 v5, 0x99

    #@4e
    const/4 v6, 0x0

    #@4f
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@52
    .line 2694
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@55
    .line 2695
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v3

    #@59
    .line 2696
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@5c
    .line 2697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5f
    .line 2698
    return v3

    #@60
    .line 2672
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    #@61
    goto :goto_0

    #@62
    .line 2684
    :cond_1
    const/4 v4, 0x0

    #@63
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    goto :goto_1

    #@67
    .line 2690
    :cond_2
    const/4 v4, 0x0

    #@68
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    goto :goto_2
.end method

.method public startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2892
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2893
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 2895
    if-nez p2, :cond_0

    #@14
    .line 2896
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2901
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xe6

    #@1b
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 2903
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v2

    #@25
    .line 2904
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2906
    return v2

    #@2c
    .line 2898
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 2899
    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    goto :goto_0
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "flagsMask"    # I
    .param p9, "flagsValues"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2806
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2807
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2808
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 2809
    const/4 v4, 0x0

    #@18
    invoke-virtual {p2, v1, v4}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 2810
    if-eqz p3, :cond_1

    #@1d
    .line 2811
    const/4 v4, 0x1

    #@1e
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 2812
    const/4 v4, 0x0

    #@22
    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 2816
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 2817
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2b
    .line 2818
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 2819
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 2820
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 2821
    move/from16 v0, p9

    #@36
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 2822
    if-eqz p10, :cond_2

    #@3b
    .line 2823
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 2824
    const/4 v4, 0x0

    #@40
    move-object/from16 v0, p10

    #@42
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@45
    .line 2828
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@47
    const/16 v5, 0x64

    #@49
    const/4 v6, 0x0

    #@4a
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@4d
    .line 2829
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@50
    .line 2830
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v3

    #@54
    .line 2831
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@57
    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5a
    .line 2833
    return v3

    #@5b
    .line 2808
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    #@5c
    goto :goto_0

    #@5d
    .line 2814
    :cond_1
    const/4 v4, 0x0

    #@5e
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_1

    #@62
    .line 2826
    :cond_2
    const/4 v4, 0x0

    #@63
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    goto :goto_2
.end method

.method public startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "config"    # Landroid/content/res/Configuration;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2776
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2777
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2778
    if-eqz p1, :cond_0

    #@10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v4

    #@14
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 2779
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 2780
    const/4 v4, 0x0

    #@1b
    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2781
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 2782
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 2783
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 2784
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 2785
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 2786
    const/4 v4, 0x0

    #@2e
    move-object/from16 v0, p9

    #@30
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 2787
    if-eqz p10, :cond_1

    #@35
    .line 2788
    const/4 v4, 0x1

    #@36
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 2789
    const/4 v4, 0x0

    #@3a
    move-object/from16 v0, p10

    #@3c
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@3f
    .line 2793
    :goto_1
    move/from16 v0, p11

    #@41
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 2794
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@46
    const/4 v5, 0x3

    #@47
    const/4 v6, 0x0

    #@48
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@4b
    .line 2795
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@4e
    .line 2796
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v3

    #@52
    .line 2797
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 2798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 2799
    return v3

    #@59
    .line 2778
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    #@5a
    goto :goto_0

    #@5b
    .line 2791
    :cond_1
    const/4 v4, 0x0

    #@5c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_1
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5773
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5774
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5775
    if-nez p1, :cond_0

    #@11
    .line 5776
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 5781
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xf1

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 5782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 5783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 5784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 5771
    return-void

    #@25
    .line 5778
    :cond_0
    const/4 v2, 0x1

    #@26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 5779
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@30
    goto :goto_0
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "connection"    # Landroid/app/IUiAutomationConnection;
    .param p7, "userId"    # I
    .param p8, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3885
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3886
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3887
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@13
    .line 3888
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 3889
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 3890
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1c
    .line 3891
    if-eqz p5, :cond_1

    #@1e
    invoke-interface {p5}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v3

    #@22
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 3892
    if-eqz p6, :cond_0

    #@27
    invoke-interface {p6}, Landroid/app/IUiAutomationConnection;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v4

    #@2b
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2e
    .line 3893
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 3894
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 3895
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@36
    const/16 v4, 0x2c

    #@38
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3b
    .line 3896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3e
    .line 3897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    const/4 v2, 0x1

    #@45
    .line 3898
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 3899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 3900
    return v2

    #@4c
    .end local v2    # "res":Z
    :cond_1
    move-object v3, v4

    #@4d
    .line 3891
    goto :goto_0

    #@4e
    .line 3897
    :cond_2
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "res":Z
    goto :goto_1
.end method

.method public startLockTaskMode(I)V
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5621
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5622
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5624
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd6

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5619
    return-void
.end method

.method public startLockTaskMode(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5633
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5634
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 5636
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd7

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5631
    return-void
.end method

.method public startLockTaskModeOnCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5645
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5646
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5647
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xde

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5643
    return-void
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 2873
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 2874
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v5, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 2875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 2876
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 2877
    if-eqz p3, :cond_0

    #@18
    .line 2878
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 2879
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 2883
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v6, 0x43

    #@22
    invoke-interface {v5, v6, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 2885
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v2

    #@2c
    .line 2886
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 2887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 2888
    if-eqz v2, :cond_1

    #@34
    :goto_1
    return v3

    #@35
    .line 2881
    .end local v2    # "result":I
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_0

    #@39
    .restart local v2    # "result":I
    :cond_1
    move v3, v4

    #@3a
    .line 2888
    goto :goto_1
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3674
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3675
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3676
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 3677
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 3678
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 3679
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    .line 3680
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 3681
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v4, 0x22

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 3683
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@32
    move-result-object v2

    #@33
    .line 3684
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 3685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 3686
    return-object v2
.end method

.method public startUserInBackground(I)Z
    .locals 6
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5043
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5044
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5046
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0xd4

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5048
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 5049
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5051
    return v2

    #@2a
    .line 5048
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 2840
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 2841
    .local v2, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2842
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 2843
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2844
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2845
    const/4 v4, 0x0

    #@18
    invoke-virtual {p4, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 2846
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 2847
    invoke-interface {p6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 2848
    invoke-interface {p7}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2c
    .line 2849
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 2850
    if-eqz p9, :cond_0

    #@31
    .line 2851
    const/4 v4, 0x1

    #@32
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 2852
    const/4 v4, 0x1

    #@36
    move-object/from16 v0, p9

    #@38
    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3b
    .line 2856
    :goto_0
    if-eqz p10, :cond_1

    #@3d
    .line 2857
    const/4 v4, 0x1

    #@3e
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 2858
    const/4 v4, 0x0

    #@42
    move-object/from16 v0, p10

    #@44
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@47
    .line 2862
    :goto_1
    move/from16 v0, p11

    #@49
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 2863
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@4e
    const/16 v5, 0xdb

    #@50
    const/4 v6, 0x0

    #@51
    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@54
    .line 2864
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    #@57
    .line 2865
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v3

    #@5b
    .line 2866
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 2868
    return v3

    #@62
    .line 2854
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    #@63
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    goto :goto_0

    #@67
    .line 2860
    :cond_1
    const/4 v4, 0x0

    #@68
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    goto :goto_1
.end method

.method public stopAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4576
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4577
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4578
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x58

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 4579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 4580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 4581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 4574
    return-void
.end method

.method public stopLockTaskMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5656
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5657
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5658
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xd8

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5654
    return-void
.end method

.method public stopLockTaskModeOnCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5667
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5668
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5669
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xdf

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 5670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 5671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 5672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5665
    return-void
.end method

.method public stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3692
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3693
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v4, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3694
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 3695
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 3696
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 3697
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 3698
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v4, 0x23

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 3700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v2

    #@30
    .line 3701
    .local v2, "res":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 3703
    return v2
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3708
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3709
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3710
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@12
    .line 3711
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 3712
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 3713
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x30

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 3716
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 3718
    return v2

    #@30
    .line 3715
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@31
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public stopUser(ILandroid/app/IStopUserCallback;)I
    .locals 6
    .param p1, "userid"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5056
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5057
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5059
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@14
    .line 5060
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x9a

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5062
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v2

    #@23
    .line 5063
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5065
    return v2
.end method

.method public switchUser(I)Z
    .locals 6
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5030
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5031
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 5033
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x82

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5034
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5035
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 5036
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5038
    return v2

    #@2a
    .line 5035
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 4211
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 4212
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 4213
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 4214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 4215
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 4216
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xb4

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 4217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 4218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 4219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 4209
    return-void
.end method

.method public testIsSystemReady()Z
    .locals 1

    #@0
    .prologue
    .line 4415
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3871
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3872
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3873
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 3874
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v3, 0x5c

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3875
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3869
    return-void
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3792
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3793
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 3795
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 3796
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 3797
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x48

    #@1f
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 3800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 3790
    return-void

    #@2c
    :cond_0
    move v2, v3

    #@2d
    .line 3796
    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 6
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3764
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3765
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3766
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 3767
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v4, 0x25

    #@1a
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 3768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 3769
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    const/4 v2, 0x1

    #@27
    .line 3770
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 3771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 3772
    return v2

    #@2e
    .line 3769
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "res":Z
    goto :goto_0
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 3066
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 3067
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 3068
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v2

    #@16
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 3069
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 3070
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 3071
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0xf

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 3074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 3063
    return-void
.end method

.method public unhandledBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 4279
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 4280
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 4281
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 4282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 4283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 4284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 4276
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5132
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5133
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5134
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 5135
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x86

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5130
    return-void
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3025
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3026
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3027
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@15
    .line 3028
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xd

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@20
    .line 3030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 3022
    return-void
.end method

.method public unregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5154
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5155
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5156
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IUidObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 5157
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x12b

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5152
    return-void
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5354
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5355
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5356
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 5357
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x9c

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 5358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 5359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 5360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 5352
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 3610
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 3611
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 3612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 3613
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x97

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3608
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 3931
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 3932
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 3933
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 3934
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v3, 0x2f

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 3935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 3936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 3928
    return-void
.end method

.method public updateDeviceOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5934
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5935
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 5937
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x128

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5932
    return-void
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 5920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 5921
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 5922
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 5923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 5925
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x123

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 5926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 5927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 5919
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 5221
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 5222
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 5223
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 5224
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v3, 0x88

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 5225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 5226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 5227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 5218
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2988
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2989
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IActivityManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 2991
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v4, 0x6a

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 2994
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2996
    return v2

    #@2a
    .line 2993
    .end local v2    # "res":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "res":Z
    goto :goto_0
.end method
