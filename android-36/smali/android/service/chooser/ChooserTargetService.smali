.class public abstract Landroid/service/chooser/ChooserTargetService;
.super Landroid/app/Service;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_CHOOSER_TARGET_SERVICE"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist META_DATA_NAME:Ljava/lang/String; = "android.service.chooser.chooser_target_service"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.chooser.ChooserTargetService"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->TAG:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 132
    const-string v0, "android.service.chooser.ChooserTargetService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 134
    return-object v1

    .line 137
    :cond_e
    iget-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    if-nez v0, :cond_19

    .line 138
    new-instance v0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    invoke-direct {v0, p0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService-IA;)V

    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 140
    :cond_19
    iget-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end method
