.class Lcom/android/server/content/SyncManager$9;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .locals 11
    .param p1, "type"    # Landroid/content/SyncAdapterType;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 452
    if-nez p3, :cond_0

    #@5
    .line 453
    iget-object v0, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    #@7
    .line 455
    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@9
    .line 453
    const/4 v2, -0x1

    #@a
    .line 454
    const/4 v3, -0x3

    #@b
    .line 456
    const/4 v10, 0x0

    #@c
    move-object v5, v1

    #@d
    move-wide v8, v6

    #@e
    .line 453
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@11
    .line 451
    :cond_0
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    #@0
    .prologue
    .line 451
    check-cast p1, Landroid/content/SyncAdapterType;

    #@2
    .end local p1    # "type":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$9;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    #@5
    return-void
.end method
