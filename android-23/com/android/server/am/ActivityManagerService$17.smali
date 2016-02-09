.class Lcom/android/server/am/ActivityManagerService$17;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$app:Landroid/os/IBinder;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$callingUid"    # I
    .param p3, "val$callingPid"    # I
    .param p4, "val$app"    # Landroid/os/IBinder;
    .param p5, "val$tag"    # Ljava/lang/String;
    .param p6, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    #@0
    .prologue
    .line 12260
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingUid:I

    #@4
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingPid:I

    #@6
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$app:Landroid/os/IBinder;

    #@8
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$tag:Ljava/lang/String;

    #@a
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 12262
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingUid:I

    #@4
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingPid:I

    #@6
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$app:Landroid/os/IBinder;

    #@8
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$tag:Ljava/lang/String;

    #@a
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->handleApplicationWtfInner(IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/android/server/am/ProcessRecord;

    #@f
    .line 12261
    return-void
.end method
