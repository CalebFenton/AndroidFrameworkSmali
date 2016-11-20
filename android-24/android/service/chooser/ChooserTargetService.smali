.class public abstract Landroid/service/chooser/ChooserTargetService;
.super Landroid/app/Service;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
    }
.end annotation


# static fields
.field public static final BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_CHOOSER_TARGET_SERVICE"

.field private static final DEBUG:Z = false

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.service.chooser.chooser_target_service"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.chooser.ChooserTargetService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-class v1, Landroid/service/chooser/ChooserTargetService;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 79
    const/16 v1, 0x5b

    #@14
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 79
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTargetService;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 79
    const/16 v1, 0x5d

    #@26
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->TAG:Ljava/lang/String;

    #@30
    .line 101
    const/4 v0, 0x0

    #@31
    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    #@33
    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    const-string/jumbo v0, "android.service.chooser.ChooserTargetService"

    #@4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 128
    return-object v2

    #@f
    .line 131
    :cond_0
    iget-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 132
    new-instance v0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    #@15
    invoke-direct {v0, p0, v2}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;)V

    #@18
    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    #@1a
    .line 134
    :cond_1
    iget-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    #@1c
    return-object v0
.end method

.method public abstract onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end method
