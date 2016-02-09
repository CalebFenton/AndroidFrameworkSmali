.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;,
        Landroid/content/ClipboardManager$1;,
        Landroid/content/ClipboardManager$2;
    }
.end annotation


# static fields
.field static final MSG_REPORT_PRIMARY_CLIP_CHANGED:I = 0x1

.field private static sService:Landroid/content/IClipboard;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;


# direct methods
.method static synthetic -get0(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    #@3
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 57
    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@a
    .line 61
    new-instance v0, Landroid/content/ClipboardManager$1;

    #@c
    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    #@f
    .line 60
    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    #@11
    .line 69
    new-instance v0, Landroid/content/ClipboardManager$2;

    #@13
    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$2;-><init>(Landroid/content/ClipboardManager;)V

    #@16
    iput-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    #@18
    .line 109
    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@1a
    .line 108
    return-void
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    #@0
    .prologue
    .line 97
    sget-object v2, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 98
    :try_start_0
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 99
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    return-object v1

    #@b
    .line 101
    :cond_0
    :try_start_1
    const-string/jumbo v1, "clipboard"

    #@e
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v0

    #@12
    .line 102
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    #@15
    move-result-object v1

    #@16
    sput-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    #@18
    .line 103
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    return-object v1

    #@1c
    .line 97
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 5
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    #@0
    .prologue
    .line 163
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 166
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@e
    move-result-object v1

    #@f
    .line 167
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    #@11
    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 166
    invoke-interface {v1, v3, v4}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 171
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    .line 162
    return-void

    #@21
    .line 163
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 168
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 3

    #@0
    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 134
    :catch_0
    move-exception v0

    #@10
    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 3

    #@0
    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 146
    :catch_0
    move-exception v0

    #@10
    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 193
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    #@5
    move-result-object v0

    #@6
    .line 194
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    #@b
    move-result v1

    #@c
    if-lez v1, :cond_0

    #@e
    .line 195
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 197
    :cond_0
    return-object v3
.end method

.method public hasPrimaryClip()Z
    .locals 3

    #@0
    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 157
    :catch_0
    move-exception v0

    #@10
    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public hasText()Z
    .locals 3

    #@0
    .prologue
    .line 214
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 215
    :catch_0
    move-exception v0

    #@10
    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    #@0
    .prologue
    .line 176
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 178
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 180
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@13
    move-result-object v1

    #@14
    .line 181
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    #@16
    .line 180
    invoke-interface {v1, v3}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :cond_0
    :goto_0
    monitor-exit v2

    #@1a
    .line 175
    return-void

    #@1b
    .line 176
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1

    #@1e
    .line 182
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method reportPrimaryClipChanged()V
    .locals 5

    #@0
    .prologue
    .line 223
    iget-object v4, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 224
    :try_start_0
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 225
    .local v0, "N":I
    if-gtz v0, :cond_0

    #@b
    monitor-exit v4

    #@c
    .line 226
    return-void

    #@d
    .line 228
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v2

    #@13
    .local v2, "listeners":[Ljava/lang/Object;
    monitor-exit v4

    #@14
    .line 231
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@16
    if-ge v1, v3, :cond_1

    #@18
    .line 232
    aget-object v3, v2, v1

    #@1a
    check-cast v3, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    #@1c
    invoke-interface {v3}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    #@1f
    .line 231
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 223
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 220
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "listeners":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .param p1, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 120
    if-eqz p1, :cond_0

    #@2
    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    #@5
    .line 123
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    #@8
    move-result-object v1

    #@9
    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, p1, v2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 118
    :goto_0
    return-void

    #@13
    .line 124
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 206
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    #@8
    .line 205
    return-void
.end method
