.class final Lcom/android/server/CountryDetectorService$Receiver;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CountryDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private final mKey:Landroid/os/IBinder;

.field private final mListener:Landroid/location/ICountryListener;

.field final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/CountryDetectorService;
    .param p2, "listener"    # Landroid/location/ICountryListener;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 55
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    #@7
    .line 56
    invoke-interface {p2}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    #@d
    .line 54
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    #@2
    iget-object v1, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/CountryDetectorService;->-wrap0(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V

    #@7
    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 65
    instance-of v0, p1, Lcom/android/server/CountryDetectorService$Receiver;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 66
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    #@6
    check-cast p1, Lcom/android/server/CountryDetectorService$Receiver;

    #@8
    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 68
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getListener()Landroid/location/ICountryListener;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
