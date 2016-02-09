.class Landroid/location/LocationManager$ListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method static synthetic -wrap0(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/location/LocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 223
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    #@2
    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    #@5
    .line 224
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    #@7
    .line 226
    if-nez p3, :cond_0

    #@9
    .line 227
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$1;

    #@b
    invoke-direct {v0, p0}, Landroid/location/LocationManager$ListenerTransport$1;-><init>(Landroid/location/LocationManager$ListenerTransport;)V

    #@e
    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    #@10
    .line 223
    :goto_0
    return-void

    #@11
    .line 234
    :cond_0
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$2;

    #@13
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$ListenerTransport$2;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;)V

    #@16
    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    #@18
    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 282
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v6, :pswitch_data_0

    #@5
    .line 302
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    #@7
    invoke-static {v6}, Landroid/location/LocationManager;->-get1(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    #@a
    move-result-object v6

    #@b
    invoke-interface {v6, p0}, Landroid/location/ILocationManager;->locationCallbackFinished(Landroid/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 281
    :goto_1
    return-void

    #@f
    .line 284
    :pswitch_0
    new-instance v3, Landroid/location/Location;

    #@11
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    check-cast v6, Landroid/location/Location;

    #@15
    invoke-direct {v3, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@18
    .line 285
    .local v3, "location":Landroid/location/Location;
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    #@1a
    invoke-interface {v6, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    #@1d
    goto :goto_0

    #@1e
    .line 288
    .end local v3    # "location":Landroid/location/Location;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20
    check-cast v0, Landroid/os/Bundle;

    #@22
    .line 289
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "provider"

    #@25
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 290
    .local v4, "provider":Ljava/lang/String;
    const-string/jumbo v6, "status"

    #@2c
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2f
    move-result v5

    #@30
    .line 291
    .local v5, "status":I
    const-string/jumbo v6, "extras"

    #@33
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@36
    move-result-object v2

    #@37
    .line 292
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    #@39
    invoke-interface {v6, v4, v5, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    #@3c
    goto :goto_0

    #@3d
    .line 295
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "status":I
    :pswitch_2
    iget-object v7, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    #@3f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v6, Ljava/lang/String;

    #@43
    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    #@46
    goto :goto_0

    #@47
    .line 298
    :pswitch_3
    iget-object v7, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    #@49
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v6, Ljava/lang/String;

    #@4d
    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    #@50
    goto :goto_0

    #@51
    .line 303
    :catch_0
    move-exception v1

    #@52
    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "LocationManager"

    #@55
    const-string/jumbo v7, "locationCallbackFinished: RemoteException"

    #@58
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_1

    #@5c
    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@5
    iput v1, v0, Landroid/os/Message;->what:I

    #@7
    .line 247
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 248
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 244
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 276
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    #@5
    iput v1, v0, Landroid/os/Message;->what:I

    #@7
    .line 277
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 278
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 274
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 268
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    #@5
    iput v1, v0, Landroid/os/Message;->what:I

    #@7
    .line 269
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 270
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 266
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 253
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v1

    #@4
    .line 254
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    #@5
    iput v2, v1, Landroid/os/Message;->what:I

    #@7
    .line 255
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@c
    .line 256
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "provider"

    #@f
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 257
    const-string/jumbo v2, "status"

    #@15
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 258
    if-eqz p3, :cond_0

    #@1a
    .line 259
    const-string/jumbo v2, "extras"

    #@1d
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@20
    .line 261
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    .line 262
    iget-object v2, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    #@24
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@27
    .line 252
    return-void
.end method
