.class Lcom/android/server/location/GpsLocationProvider$5;
.super Landroid/location/INetInitiatedListener$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;

    #@0
    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    #@0
    .prologue
    .line 1787
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "GpsLocationProvider"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "sendNiResponse, notifId: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 1788
    const-string/jumbo v2, ", response: "

    #@1c
    .line 1787
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2d
    invoke-static {v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->-wrap24(Lcom/android/server/location/GpsLocationProvider;II)V

    #@30
    .line 1790
    const/4 v0, 0x1

    #@31
    return v0
.end method
