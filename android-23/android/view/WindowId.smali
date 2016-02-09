.class public Landroid/view/WindowId;
.super Ljava/lang/Object;
.source "WindowId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowId$FocusObserver;,
        Landroid/view/WindowId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mToken:Landroid/view/IWindowId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 199
    new-instance v0, Landroid/view/WindowId$1;

    #@2
    invoke-direct {v0}, Landroid/view/WindowId$1;-><init>()V

    #@5
    .line 198
    sput-object v0, Landroid/view/WindowId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    invoke-static {p1}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@9
    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowId;)V
    .locals 0
    .param p1, "target"    # Landroid/view/IWindowId;

    #@0
    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 217
    iput-object p1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@5
    .line 216
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 167
    instance-of v0, p1, Landroid/view/WindowId;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 168
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@6
    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    check-cast p1, Landroid/view/WindowId;

    #@c
    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@e
    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 171
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public getTarget()Landroid/view/IWindowId;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@2
    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isFocused()Z
    .locals 2

    #@0
    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowId;->isFocused()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 123
    :catch_0
    move-exception v0

    #@8
    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public registerFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/WindowId$FocusObserver;

    #@0
    .prologue
    .line 132
    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 133
    :try_start_0
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@5
    iget-object v3, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@7
    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    .line 135
    const-string/jumbo v3, "Focus observer already registered with input token"

    #@16
    .line 134
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 132
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1

    #@1d
    .line 137
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@1f
    iget-object v3, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@21
    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 139
    :try_start_2
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@2a
    iget-object v3, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    #@2c
    invoke-interface {v1, v3}, Landroid/view/IWindowId;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    :goto_0
    monitor-exit v2

    #@30
    .line 131
    return-void

    #@31
    .line 140
    :catch_0
    move-exception v0

    #@32
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "IntentSender{"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 183
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 184
    const-string/jumbo v2, ": "

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 185
    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@21
    if-eqz v2, :cond_0

    #@23
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@25
    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v1

    #@29
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 186
    const/16 v1, 0x7d

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method

.method public unregisterFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/WindowId$FocusObserver;

    #@0
    .prologue
    .line 149
    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 150
    :try_start_0
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@5
    iget-object v3, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@7
    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v3, "Focus observer not registered with input token"

    #@16
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 149
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1

    #@1d
    .line 154
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@1f
    iget-object v3, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    #@21
    invoke-interface {v1, v3}, Landroid/view/IWindowId;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :goto_0
    monitor-exit v2

    #@25
    .line 148
    return-void

    #@26
    .line 155
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    #@2
    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9
    .line 194
    return-void
.end method
