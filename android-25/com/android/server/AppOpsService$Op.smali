.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public duration:I

.field public mode:I

.field public nesting:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public proxyPackageName:Ljava/lang/String;

.field public proxyUid:I

.field public rejectTime:J

.field public time:J

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "_uid"    # I
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@6
    .line 161
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    #@8
    .line 162
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@a
    .line 163
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    #@c
    .line 164
    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    #@e
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    #@14
    .line 160
    return-void
.end method
