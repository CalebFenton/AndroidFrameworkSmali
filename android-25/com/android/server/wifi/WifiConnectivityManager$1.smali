.class Lcom/android/server/wifi/WifiConnectivityManager$1;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$1;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$1;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap5(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    #@6
    .line 174
    return-void
.end method
