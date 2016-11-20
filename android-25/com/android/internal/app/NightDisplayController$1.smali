.class Lcom/android/internal/app/NightDisplayController$1;
.super Landroid/database/ContentObserver;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NightDisplayController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/NightDisplayController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController$1;->this$0:Lcom/android/internal/app/NightDisplayController;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    #@4
    .line 96
    if-nez p2, :cond_1

    #@6
    .line 97
    .local v0, "setting":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 98
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController$1;->this$0:Lcom/android/internal/app/NightDisplayController;

    #@a
    invoke-static {v1, v0}, Lcom/android/internal/app/NightDisplayController;->-wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V

    #@d
    .line 93
    :cond_0
    return-void

    #@e
    .line 96
    .end local v0    # "setting":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method
