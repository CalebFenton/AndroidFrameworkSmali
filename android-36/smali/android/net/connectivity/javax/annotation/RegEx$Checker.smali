.class public Landroid/net/connectivity/javax/annotation/RegEx$Checker;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/javax/annotation/RegEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator<",
        "Landroid/net/connectivity/javax/annotation/RegEx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist forConstantValue(Landroid/net/connectivity/javax/annotation/RegEx;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 5
    .param p1, "annotation"    # Landroid/net/connectivity/javax/annotation/RegEx;
    .param p2, "value"    # Ljava/lang/Object;

    .line 28
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_7

    .line 29
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0

    .line 32
    :cond_7
    :try_start_7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_d
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_7 .. :try_end_d} :catch_11

    .line 35
    nop

    .line 36
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0

    .line 33
    :catch_11
    move-exception v0

    .line 34
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    sget-object v1, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v1
.end method

.method public bridge synthetic blacklist forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 25
    check-cast p1, Landroid/net/connectivity/javax/annotation/RegEx;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/javax/annotation/RegEx$Checker;->forConstantValue(Landroid/net/connectivity/javax/annotation/RegEx;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method
