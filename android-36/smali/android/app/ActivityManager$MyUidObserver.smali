.class final Landroid/app/ActivityManager$MyUidObserver;
.super Landroid/app/UidObserver;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field final blacklist mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "clientContext"    # Landroid/content/Context;

    .line 212
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 213
    iput-object p1, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 214
    iput-object p2, p0, Landroid/app/ActivityManager$MyUidObserver;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist onUidGone(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 225
    iget-object v0, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 226
    return-void
.end method

.method public blacklist onUidStateChanged(IIJI)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 219
    iget-object v0, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object v1, p0, Landroid/app/ActivityManager$MyUidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 221
    return-void
.end method
