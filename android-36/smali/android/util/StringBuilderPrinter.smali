.class public Landroid/util/StringBuilderPrinter;
.super Ljava/lang/Object;
.source "StringBuilderPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final greylist-max-o mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    .local v0, "len":I
    const/16 v1, 0xa

    if-lez v0, :cond_15

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1a

    .line 40
    :cond_15
    iget-object v2, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_1a
    return-void
.end method
