.class Lcom/android/server/content/SyncStorageEngine$AccountInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountInfo"
.end annotation


# instance fields
.field final accountAndUser:Landroid/accounts/AccountAndUser;

.field final authorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/accounts/AccountAndUser;)V
    .locals 1
    .param p1, "accountAndUser"    # Landroid/accounts/AccountAndUser;

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 153
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@a
    .line 157
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@c
    .line 156
    return-void
.end method
