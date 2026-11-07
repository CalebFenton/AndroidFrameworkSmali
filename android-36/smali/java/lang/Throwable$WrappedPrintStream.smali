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
.field private final greylist-max-o printStream:Ljava/io/PrintStream;


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 771
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Throwable$PrintStreamOrWriter;-><init>(Ljava/lang/Throwable-IA;)V

    .line 772
    iput-object p1, p0, Ljava/lang/Throwable$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    .line 773
    return-void
.end method


# virtual methods
.method greylist-max-o lock()Ljava/lang/Object;
    .registers 2

    .line 776
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method greylist-max-o println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 781
    return-void
.end method
