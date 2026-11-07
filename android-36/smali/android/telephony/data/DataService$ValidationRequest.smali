.class final Landroid/telephony/data/DataService$ValidationRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValidationRequest"
.end annotation


# instance fields
.field public final blacklist callback:Lcom/android/internal/telephony/IIntegerConsumer;

.field public final blacklist cid:I

.field public final blacklist executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(ILjava/util/concurrent/Executor;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "cid"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput p1, p0, Landroid/telephony/data/DataService$ValidationRequest;->cid:I

    .line 591
    iput-object p2, p0, Landroid/telephony/data/DataService$ValidationRequest;->executor:Ljava/util/concurrent/Executor;

    .line 592
    iput-object p3, p0, Landroid/telephony/data/DataService$ValidationRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 593
    return-void
.end method
