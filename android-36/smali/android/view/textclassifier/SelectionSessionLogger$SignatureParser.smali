.class public final Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;
.super Ljava/lang/Object;
.source "SelectionSessionLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SelectionSessionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureParser"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o getClassifierId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "signature"    # Ljava/lang/String;

    .line 45
    const-string v0, ""

    if-nez p0, :cond_5

    .line 46
    return-object v0

    .line 48
    :cond_5
    const-string/jumbo v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "end":I
    if-ltz v1, :cond_14

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_14
    return-object v0
.end method
