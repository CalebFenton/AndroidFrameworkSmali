.class public Landroid/util/PrintWriterPrinter;
.super Ljava/lang/Object;
.source "PrintWriterPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final greylist-max-o mPW:Ljava/io/PrintWriter;


# direct methods
.method public constructor whitelist <init>(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/util/PrintWriterPrinter;->mPW:Ljava/io/PrintWriter;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .registers 3
    .param p1, "x"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Landroid/util/PrintWriterPrinter;->mPW:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    return-void
.end method
