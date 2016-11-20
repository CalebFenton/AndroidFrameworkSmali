.class Ljava/io/Console$1;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/Console;


# direct methods
.method constructor <init>(Ljava/io/Console;Ljava/io/Writer;Z)V
    .locals 0
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "$anonymous0"    # Ljava/io/Writer;
    .param p3, "$anonymous1"    # Z

    #@0
    .prologue
    .line 552
    iput-object p1, p0, Ljava/io/Console$1;->this$0:Ljava/io/Console;

    #@2
    invoke-direct {p0, p2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 552
    return-void
.end method
