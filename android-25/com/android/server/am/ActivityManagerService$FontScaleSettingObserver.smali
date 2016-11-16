.class final Lcom/android/server/am/ActivityManagerService$FontScaleSettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FontScaleSettingObserver"
.end annotation


# instance fields
.field private final mFontScaleUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    .line 1085
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@4
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    .line 1082
    const-string/jumbo v1, "font_scale"

    #@a
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    #@10
    .line 1086
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v0

    #@16
    .line 1087
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    #@18
    const/4 v2, 0x0

    #@19
    const/4 v3, -0x1

    #@1a
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1d
    .line 1084
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1093
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a
    invoke-static {v0, p3}, Lcom/android/server/am/ActivityManagerService;->-wrap15(Lcom/android/server/am/ActivityManagerService;I)V

    #@d
    .line 1091
    :cond_0
    return-void
.end method
