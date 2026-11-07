.class public Landroid/util/PrintStreamPrinter;
.super Ljava/lang/Object;
.source "PrintStreamPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final greylist-max-o mPS:Ljava/io/PrintStream;


# direct methods
.method public constructor whitelist <init>(Ljava/io/PrintStream;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintStream;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/util/PrintStreamPrinter;->mPS:Ljava/io/PrintStream;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .registers 3
    .param p1, "x"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Landroid/util/PrintStreamPrinter;->mPS:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    return-void
.end method
