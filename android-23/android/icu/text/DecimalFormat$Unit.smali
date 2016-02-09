.class Landroid/icu/text/DecimalFormat$Unit;
.super Ljava/lang/Object;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Unit"
.end annotation


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 6002
    iput-object p1, p0, Landroid/icu/text/DecimalFormat$Unit;->prefix:Ljava/lang/String;

    #@5
    .line 6003
    iput-object p2, p0, Landroid/icu/text/DecimalFormat$Unit;->suffix:Ljava/lang/String;

    #@7
    .line 6001
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6016
    if-ne p0, p1, :cond_0

    #@3
    .line 6017
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 6019
    :cond_0
    instance-of v2, p1, Landroid/icu/text/DecimalFormat$Unit;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 6020
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 6022
    check-cast v0, Landroid/icu/text/DecimalFormat$Unit;

    #@d
    .line 6023
    .local v0, "other":Landroid/icu/text/DecimalFormat$Unit;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat$Unit;->prefix:Ljava/lang/String;

    #@f
    iget-object v3, v0, Landroid/icu/text/DecimalFormat$Unit;->prefix:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/icu/text/DecimalFormat$Unit;->suffix:Ljava/lang/String;

    #@19
    iget-object v2, v0, Landroid/icu/text/DecimalFormat$Unit;->suffix:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 6027
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/text/DecimalFormat$Unit;->prefix:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "/"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/text/DecimalFormat$Unit;->suffix:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public writePrefix(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 6011
    iget-object v0, p0, Landroid/icu/text/DecimalFormat$Unit;->prefix:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 6010
    return-void
.end method

.method public writeSuffix(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 6007
    iget-object v0, p0, Landroid/icu/text/DecimalFormat$Unit;->suffix:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 6006
    return-void
.end method
