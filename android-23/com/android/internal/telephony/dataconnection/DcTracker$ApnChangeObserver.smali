.class Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    .line 108
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    #@4
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    .line 107
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4
    const v2, 0x42013

    #@7
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 112
    return-void
.end method
