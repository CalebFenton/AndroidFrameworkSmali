.class Lcom/android/server/content/SyncManager$AuthoritySyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthoritySyncStats"
.end annotation


# instance fields
.field accountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncManager$AccountSyncStats;",
            ">;"
        }
    .end annotation
.end field

.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2017
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    #@9
    .line 2020
    iput-object p1, p0, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    #@b
    .line 2019
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method
