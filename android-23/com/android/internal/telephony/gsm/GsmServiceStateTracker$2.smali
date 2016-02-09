.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;
.super Landroid/database/ContentObserver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "GsmServiceStateTracker"

    #@3
    const-string/jumbo v1, "Auto time state changed"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    #@e
    .line 193
    return-void
.end method
