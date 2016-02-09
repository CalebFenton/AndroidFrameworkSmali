.class Lcom/android/uiautomator/core/Tracer$FileSink;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Lcom/android/uiautomator/core/Tracer$TracerSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileSink"
.end annotation


# instance fields
.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mOut:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/uiautomator/core/Tracer;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/uiautomator/core/Tracer;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->this$0:Lcom/android/uiautomator/core/Tracer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 67
    new-instance v0, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    #@a
    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    #@c
    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@e
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    #@11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@13
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@16
    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    #@18
    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@5
    .line 75
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "%s %s\n"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    iget-object v3, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    #@a
    new-instance v4, Ljava/util/Date;

    #@c
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #@f
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    const/4 v4, 0x0

    #@14
    aput-object v3, v2, v4

    #@16
    const/4 v3, 0x1

    #@17
    aput-object p1, v2, v3

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1c
    .line 71
    return-void
.end method
