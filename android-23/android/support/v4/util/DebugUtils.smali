.class public Landroid/support/v4/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 28
    if-nez p0, :cond_0

    #@2
    .line 29
    const-string/jumbo v2, "null"

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 27
    :goto_0
    return-void

    #@9
    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 32
    .local v1, "simpleName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    if-gtz v2, :cond_2

    #@19
    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 34
    const/16 v2, 0x2e

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@26
    move-result v0

    #@27
    .line 35
    .local v0, "end":I
    if-lez v0, :cond_2

    #@29
    .line 36
    add-int/lit8 v2, v0, 0x1

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 39
    .end local v0    # "end":I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 40
    const/16 v2, 0x7b

    #@34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 41
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0
.end method
