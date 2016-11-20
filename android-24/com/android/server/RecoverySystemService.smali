.class public final Lcom/android/server/RecoverySystemService;
.super Lcom/android/server/SystemService;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecoverySystemService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 59
    iput-object p1, p0, Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;

    #@5
    .line 57
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 64
    const-string/jumbo v0, "recovery"

    #@3
    new-instance v1, Lcom/android/server/RecoverySystemService$BinderService;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/RecoverySystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 63
    return-void
.end method
