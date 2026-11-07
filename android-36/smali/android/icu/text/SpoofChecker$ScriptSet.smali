.class Landroid/icu/text/SpoofChecker$ScriptSet;
.super Ljava/util/BitSet;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptSet"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# direct methods
.method constructor greylist-max-r <init>()V
    .registers 1

    .line 2083
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 2084
    return-void
.end method


# virtual methods
.method public greylist-max-r and(I)V
    .registers 4
    .param p1, "script"    # I

    .line 2088
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/SpoofChecker$ScriptSet;->clear(II)V

    .line 2089
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0xd0

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->clear(II)V

    .line 2090
    return-void
.end method

.method public greylist-max-o appendStringTo(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2103
    const-string v0, "{ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2105
    const-string v0, "- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 2106
    :cond_11
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2107
    const-string v0, "* "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 2109
    :cond_1d
    const/4 v0, 0x0

    .local v0, "script":I
    :goto_1e
    const/16 v1, 0xd0

    if-ge v0, v1, :cond_37

    .line 2110
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2111
    invoke-static {v0}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 2116
    .end local v0    # "script":I
    :cond_37
    :goto_37
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    return-void
.end method

.method public greylist-max-r isFull()Z
    .registers 3

    .line 2099
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$ScriptSet;->cardinality()I

    move-result v0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-r setAll()V
    .registers 3

    .line 2094
    const/4 v0, 0x0

    const/16 v1, 0xd0

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->set(II)V

    .line 2095
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2122
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<ScriptSet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$ScriptSet;->appendStringTo(Ljava/lang/StringBuilder;)V

    .line 2124
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
