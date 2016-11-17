.class Landroid/app/SharedPreferencesImpl$EditorImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl$EditorImpl;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

.field final synthetic val$awaitCommit:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/SharedPreferencesImpl$EditorImpl;
    .param p2, "val$awaitCommit"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 374
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

    #@2
    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5
    .line 377
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    #@7
    invoke-static {v0}, Landroid/app/QueuedWork;->remove(Ljava/lang/Runnable;)V

    #@a
    .line 375
    return-void
.end method
