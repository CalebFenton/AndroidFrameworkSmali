.class public Landroid/support/v4/database/DatabaseUtilsCompat;
.super Ljava/lang/Object;
.source "DatabaseUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "originalValues"    # [Ljava/lang/String;
    .param p1, "newValues"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 50
    if-eqz p0, :cond_0

    #@3
    array-length v1, p0

    #@4
    if-nez v1, :cond_1

    #@6
    .line 51
    :cond_0
    return-object p1

    #@7
    .line 53
    :cond_1
    array-length v1, p0

    #@8
    array-length v2, p1

    #@9
    add-int/2addr v1, v2

    #@a
    new-array v0, v1, [Ljava/lang/String;

    #@c
    .line 54
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    #@d
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 55
    array-length v1, p0

    #@11
    array-length v2, p1

    #@12
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 56
    return-object v0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 36
    return-object p1

    #@7
    .line 38
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 39
    return-object p0

    #@e
    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "("

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ") AND ("

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, ")"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method
