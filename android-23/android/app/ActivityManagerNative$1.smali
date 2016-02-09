.class final Landroid/app/ActivityManagerNative$1;
.super Landroid/util/Singleton;
.source "ActivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Landroid/app/IActivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2604
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected create()Landroid/app/IActivityManager;
    .locals 3

    #@0
    .prologue
    .line 2606
    const-string/jumbo v2, "activity"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 2610
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    #@a
    move-result-object v0

    #@b
    .line 2614
    .local v0, "am":Landroid/app/IActivityManager;
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2605
    invoke-virtual {p0}, Landroid/app/ActivityManagerNative$1;->create()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
