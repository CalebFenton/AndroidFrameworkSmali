.class public Landroid/net/connectivity/javax/annotation/Nonnull$Checker;
.super Ljava/lang/Object;
.source "Nonnull.java"

# interfaces
.implements Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/javax/annotation/Nonnull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator<",
        "Landroid/net/connectivity/javax/annotation/Nonnull;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist forConstantValue(Landroid/net/connectivity/javax/annotation/Nonnull;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 4
    .param p1, "qualifierqualifierArgument"    # Landroid/net/connectivity/javax/annotation/Nonnull;
    .param p2, "value"    # Ljava/lang/Object;

    .line 21
    if-nez p2, :cond_5

    .line 22
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0

    .line 23
    :cond_5
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0
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

    .line 17
    check-cast p1, Landroid/net/connectivity/javax/annotation/Nonnull;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/javax/annotation/Nonnull$Checker;->forConstantValue(Landroid/net/connectivity/javax/annotation/Nonnull;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method
