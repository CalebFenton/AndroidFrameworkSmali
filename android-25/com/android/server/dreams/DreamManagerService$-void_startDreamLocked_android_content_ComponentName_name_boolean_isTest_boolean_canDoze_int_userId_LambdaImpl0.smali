.class final synthetic Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$canDoze:Z

.field private synthetic val$isTest:Z

.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic val$newToken:Landroid/os/Binder;

.field private synthetic val$this:Lcom/android/server/dreams/DreamManagerService;

.field private synthetic val$userId:I

.field private synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$this:Lcom/android/server/dreams/DreamManagerService;

    #@5
    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$newToken:Landroid/os/Binder;

    #@7
    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$name:Landroid/content/ComponentName;

    #@9
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$isTest:Z

    #@b
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$canDoze:Z

    #@d
    iput p6, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$userId:I

    #@f
    iput-object p7, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$this:Lcom/android/server/dreams/DreamManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$newToken:Landroid/os/Binder;

    #@4
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$name:Landroid/content/ComponentName;

    #@6
    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$isTest:Z

    #@8
    iget-boolean v4, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$canDoze:Z

    #@a
    iget v5, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$userId:I

    #@c
    iget-object v6, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    #@e
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService;->-com_android_server_dreams_DreamManagerService_lambda$1(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    #@11
    return-void
.end method
