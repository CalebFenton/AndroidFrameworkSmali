.class final Lcom/android/server/vr/VrManagerService$LocalService;
.super Lcom/android/server/vr/VrManagerInternal;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    #@0
    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 1
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-wrap2(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-wrap1(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    const/4 v5, 0x0

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->-wrap14(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    #@a
    .line 376
    return-void
.end method

.method public setVrModeImmediate(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    const/4 v5, 0x1

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->-wrap14(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    #@a
    .line 382
    return-void
.end method
