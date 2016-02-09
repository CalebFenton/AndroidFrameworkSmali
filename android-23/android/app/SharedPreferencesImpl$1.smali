.class Landroid/app/SharedPreferencesImpl$1;
.super Ljava/lang/Thread;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 90
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    #@2
    monitor-enter v1

    #@3
    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    #@5
    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-wrap1(Landroid/app/SharedPreferencesImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 89
    return-void

    #@a
    .line 90
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
