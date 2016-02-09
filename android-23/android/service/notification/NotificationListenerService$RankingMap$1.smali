.class final Landroid/service/notification/NotificationListenerService$RankingMap$1;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService$RankingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/service/notification/NotificationListenerService$RankingMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 995
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    #@7
    .line 996
    .local v0, "rankingUpdate":Landroid/service/notification/NotificationRankingUpdate;
    new-instance v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    #@9
    invoke-direct {v1, v0, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    #@c
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 994
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationListenerService$RankingMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1001
    new-array v0, p1, [Landroid/service/notification/NotificationListenerService$RankingMap;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap$1;->newArray(I)[Landroid/service/notification/NotificationListenerService$RankingMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
