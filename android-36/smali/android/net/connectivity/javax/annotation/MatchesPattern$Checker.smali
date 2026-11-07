.class public Landroid/net/connectivity/javax/annotation/MatchesPattern$Checker;
.super Ljava/lang/Object;
.source "MatchesPattern.java"

# interfaces
.implements Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/javax/annotation/MatchesPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator<",
        "Landroid/net/connectivity/javax/annotation/MatchesPattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist forConstantValue(Landroid/net/connectivity/javax/annotation/MatchesPattern;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 5
    .param p1, "annotation"    # Landroid/net/connectivity/javax/annotation/MatchesPattern;
    .param p2, "value"    # Ljava/lang/Object;

    .line 23
    invoke-interface {p1}, Landroid/net/connectivity/javax/annotation/MatchesPattern;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/net/connectivity/javax/annotation/MatchesPattern;->flags()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 24
    .local v0, "p":Ljava/util/regex/Pattern;
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 25
    sget-object v1, Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v1

    .line 26
    :cond_1c
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

    .line 21
    check-cast p1, Landroid/net/connectivity/javax/annotation/MatchesPattern;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/javax/annotation/MatchesPattern$Checker;->forConstantValue(Landroid/net/connectivity/javax/annotation/MatchesPattern;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method
