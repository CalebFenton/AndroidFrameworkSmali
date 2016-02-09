.class Lcom/android/internal/telephony/dataconnection/DataConnection$1;
.super Ljava/io/PrintWriter;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;->dumpToLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/io/Writer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "$anonymous0"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 2240
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@5
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 2247
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    #@5
    .line 2242
    return-void
.end method
