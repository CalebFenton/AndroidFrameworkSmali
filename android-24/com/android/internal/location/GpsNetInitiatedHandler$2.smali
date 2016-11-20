.class Lcom/android/internal/location/GpsNetInitiatedHandler$2;
.super Landroid/telephony/PhoneStateListener;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 197
    const-string/jumbo v0, "GpsNetInitiatedHandler"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "onCallStateChanged(): state is "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 199
    if-nez p1, :cond_0

    #@1d
    .line 200
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    #@1f
    invoke-virtual {v0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setInEmergency(Z)V

    #@22
    .line 196
    :cond_0
    return-void
.end method
