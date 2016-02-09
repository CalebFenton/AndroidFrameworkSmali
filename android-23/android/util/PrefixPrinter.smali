.class public Landroid/util/PrefixPrinter;
.super Ljava/lang/Object;
.source "PrefixPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mPrefix:Ljava/lang/String;

.field private final mPrinter:Landroid/util/Printer;


# direct methods
.method private constructor <init>(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Landroid/util/PrefixPrinter;->mPrinter:Landroid/util/Printer;

    #@5
    .line 44
    iput-object p2, p0, Landroid/util/PrefixPrinter;->mPrefix:Ljava/lang/String;

    #@7
    .line 42
    return-void
.end method

.method public static create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;
    .locals 1
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 37
    :cond_0
    return-object p0

    #@c
    .line 39
    :cond_1
    new-instance v0, Landroid/util/PrefixPrinter;

    #@e
    invoke-direct {v0, p0, p1}, Landroid/util/PrefixPrinter;-><init>(Landroid/util/Printer;Ljava/lang/String;)V

    #@11
    return-object v0
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/util/PrefixPrinter;->mPrinter:Landroid/util/Printer;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Landroid/util/PrefixPrinter;->mPrefix:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@18
    .line 47
    return-void
.end method
