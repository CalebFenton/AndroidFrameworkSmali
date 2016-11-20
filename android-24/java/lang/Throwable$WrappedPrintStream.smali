.class Ljava/lang/Throwable$WrappedPrintStream;
.super Ljava/lang/Throwable$PrintStreamOrWriter;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPrintStream"
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 730
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/lang/Throwable$PrintStreamOrWriter;-><init>(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    #@4
    .line 731
    iput-object p1, p0, Ljava/lang/Throwable$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    #@6
    .line 730
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 735
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    #@2
    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@5
    .line 738
    return-void
.end method
