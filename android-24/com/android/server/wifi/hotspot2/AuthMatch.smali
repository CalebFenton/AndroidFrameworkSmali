.class public abstract Lcom/android/server/wifi/hotspot2/AuthMatch;
.super Ljava/lang/Object;
.source "AuthMatch.java"


# static fields
.field public static final Exact:I = 0x7

.field public static final Indeterminate:I = 0x0

.field public static final Method:I = 0x2

.field public static final MethodParam:I = 0x3

.field public static final None:I = -0x1

.field public static final Param:I = 0x1

.field public static final Realm:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "match"    # I

    #@0
    .prologue
    .line 21
    if-gez p0, :cond_0

    #@2
    .line 22
    const-string/jumbo v1, "None"

    #@5
    return-object v1

    #@6
    .line 24
    :cond_0
    if-nez p0, :cond_1

    #@8
    .line 25
    const-string/jumbo v1, "Indeterminate"

    #@b
    return-object v1

    #@c
    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 29
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x4

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 30
    const-string/jumbo v1, "Realm"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 32
    :cond_2
    and-int/lit8 v1, p0, 0x2

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 33
    const-string/jumbo v1, "Method"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 35
    :cond_3
    and-int/lit8 v1, p0, 0x1

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 36
    const-string/jumbo v1, "Param"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 38
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1
.end method
