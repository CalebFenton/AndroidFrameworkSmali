.class Lcom/android/server/display/NightDisplayService$2;
.super Landroid/database/ContentObserver;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    iput-object p3, p0, Lcom/android/server/display/NightDisplayService$2;->val$cr:Landroid/content/ContentResolver;

    #@4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->val$cr:Landroid/content/ContentResolver;

    #@2
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    #@4
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get5(Lcom/android/server/display/NightDisplayService;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-wrap0(Landroid/content/ContentResolver;I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 203
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->val$cr:Landroid/content/ContentResolver;

    #@10
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@13
    .line 204
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-set1(Lcom/android/server/display/NightDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    #@19
    .line 206
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    #@1b
    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get2(Lcom/android/server/display/NightDisplayService;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 207
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    #@23
    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-wrap2(Lcom/android/server/display/NightDisplayService;)V

    #@26
    .line 201
    :cond_0
    return-void
.end method
