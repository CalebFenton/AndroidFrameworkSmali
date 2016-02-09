.class public final Lcom/android/server/am/ActivityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2273
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 2274
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    .line 2272
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    .prologue
    .line 2283
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-wrap9(Lcom/android/server/am/ActivityManagerService;)V

    #@5
    .line 2278
    return-void
.end method
