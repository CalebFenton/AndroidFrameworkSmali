.class Lcom/android/internal/telephony/dataconnection/DctController$2;
.super Landroid/database/ContentObserver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 99
    const-string/jumbo v0, "Settings change"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap4(Ljava/lang/String;)V

    #@6
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@8
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap5(Lcom/android/internal/telephony/dataconnection/DctController;)V

    #@b
    .line 98
    return-void
.end method
