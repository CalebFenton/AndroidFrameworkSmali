.class Lcom/android/server/location/LocationFudger$1;
.super Landroid/database/ContentObserver;
.source "LocationFudger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationFudger;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationFudger;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/LocationFudger;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/location/LocationFudger$1;->this$0:Lcom/android/server/location/LocationFudger;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/location/LocationFudger$1;->this$0:Lcom/android/server/location/LocationFudger;

    #@2
    iget-object v1, p0, Lcom/android/server/location/LocationFudger$1;->this$0:Lcom/android/server/location/LocationFudger;

    #@4
    invoke-static {v1}, Lcom/android/server/location/LocationFudger;->-wrap0(Lcom/android/server/location/LocationFudger;)F

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/location/LocationFudger;->-wrap1(Lcom/android/server/location/LocationFudger;F)V

    #@b
    .line 146
    return-void
.end method
