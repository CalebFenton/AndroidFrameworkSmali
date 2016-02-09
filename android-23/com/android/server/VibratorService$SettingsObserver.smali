.class final Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method public constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #@2
    .line 250
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 249
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "SelfChange"    # Z

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;)V

    #@5
    .line 254
    return-void
.end method
