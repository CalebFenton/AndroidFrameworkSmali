.class Lcom/android/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConnectionPool;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/ConnectionPool;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/ConnectionPool;->-wrap0(Lcom/android/okhttp/ConnectionPool;)V

    #@5
    .line 96
    return-void
.end method
