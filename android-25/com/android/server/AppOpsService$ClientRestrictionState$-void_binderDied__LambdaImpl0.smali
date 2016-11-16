.class final synthetic Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService$ClientRestrictionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_binderDied__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$changedCode:I

.field private synthetic val$this:Lcom/android/server/AppOpsService$ClientRestrictionState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$this:Lcom/android/server/AppOpsService$ClientRestrictionState;

    #@5
    iput p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$changedCode:I

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$this:Lcom/android/server/AppOpsService$ClientRestrictionState;

    #@2
    iget v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;->val$changedCode:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->-com_android_server_AppOpsService$ClientRestrictionState_lambda$1(I)V

    #@7
    return-void
.end method
