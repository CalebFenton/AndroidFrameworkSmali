.class Ljava/lang/Throwable$WrappedPrintWriter;
.super Ljava/lang/Throwable$PrintStreamOrWriter;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPrintWriter"
.end annotation


# instance fields
.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 746
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/lang/Throwable$PrintStreamOrWriter;-><init>(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    #@4
    .line 747
    iput-object p1, p0, Ljava/lang/Throwable$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    #@6
    .line 746
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    #@2
    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5
    .line 754
    return-void
.end method
