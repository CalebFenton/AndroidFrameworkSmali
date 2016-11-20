.class public Landroid/util/StringBuilderPrinter;
.super Ljava/lang/Object;
.source "StringBuilderPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 36
    iget-object v1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 38
    .local v0, "len":I
    if-lez v0, :cond_0

    #@d
    add-int/lit8 v1, v0, -0x1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    if-eq v1, v2, :cond_1

    #@15
    .line 39
    :cond_0
    iget-object v1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 35
    :cond_1
    return-void
.end method
