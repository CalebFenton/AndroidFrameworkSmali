.class public Landroid/util/PrefixPrinter;
.super Ljava/lang/Object;
.source "PrefixPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final greylist-max-o mPrefix:Ljava/lang/String;

.field private final greylist-max-o mPrinter:Landroid/util/Printer;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/util/PrefixPrinter;->mPrinter:Landroid/util/Printer;

    .line 45
    iput-object p2, p0, Landroid/util/PrefixPrinter;->mPrefix:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static greylist-max-o create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;
    .registers 3
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 37
    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 40
    :cond_b
    new-instance v0, Landroid/util/PrefixPrinter;

    invoke-direct {v0, p0, p1}, Landroid/util/PrefixPrinter;-><init>(Landroid/util/Printer;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_11
    :goto_11
    return-object p0
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Landroid/util/PrefixPrinter;->mPrinter:Landroid/util/Printer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/util/PrefixPrinter;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method
