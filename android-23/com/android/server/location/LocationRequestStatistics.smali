.class public Lcom/android/server/location/LocationRequestStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;,
        Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationStats"


# instance fields
.field public final statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
            "Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 17
    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    #@a
    .line 13
    return-void
.end method


# virtual methods
.method public startRequesting(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "intervalMs"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 28
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    #@3
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 29
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    #@e
    .line 30
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-nez v1, :cond_0

    #@10
    .line 31
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    #@12
    .end local v1    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    invoke-direct {v1, v3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    #@15
    .line 32
    .restart local v1    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    #@17
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 34
    :cond_0
    invoke-static {v1, p3, p4}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->-wrap0(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V

    #@1d
    .line 27
    return-void
.end method

.method public stopRequesting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 45
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    #@7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    #@d
    .line 46
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_0

    #@f
    .line 47
    invoke-static {v1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->-wrap1(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    #@12
    .line 43
    :goto_0
    return-void

    #@13
    .line 50
    :cond_0
    const-string/jumbo v2, "LocationStats"

    #@16
    const-string/jumbo v3, "Couldn\'t find package statistics when removing location request."

    #@19
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method
