.class final Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper$H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigMessageData"
.end annotation


# instance fields
.field public final config:Landroid/service/notification/ZenModeConfig;

.field public final reason:Ljava/lang/String;

.field public final setRingerMode:Z

.field final synthetic this$1:Lcom/android/server/notification/ZenModeHelper$H;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/notification/ZenModeHelper$H;
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->this$1:Lcom/android/server/notification/ZenModeHelper$H;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1089
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    #@7
    .line 1090
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    #@9
    .line 1091
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    #@c
    .line 1088
    return-void
.end method

.method constructor <init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/ZenModeHelper$H;
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "setRingerMode"    # Z

    #@0
    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->this$1:Lcom/android/server/notification/ZenModeHelper$H;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1095
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    #@7
    .line 1096
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    #@9
    .line 1097
    iput-boolean p4, p0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    #@b
    .line 1094
    return-void
.end method
