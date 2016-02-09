.class Lcom/android/commands/pm/Pm$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/Pm$LocalIntentReceiver$1;
    }
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mResult:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)Ljava/util/concurrent/SynchronousQueue;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;

    #@2
    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1989
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;

    #@a
    .line 1991
    new-instance v0, Lcom/android/commands/pm/Pm$LocalIntentReceiver$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver$1;-><init>(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)V

    #@f
    iput-object v0, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    #@11
    .line 1988
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    #@0
    .prologue
    .line 2005
    new-instance v0, Landroid/content/IntentSender;

    #@2
    iget-object v1, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    #@4
    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@7
    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 2010
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 2011
    :catch_0
    move-exception v0

    #@a
    .line 2012
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method
