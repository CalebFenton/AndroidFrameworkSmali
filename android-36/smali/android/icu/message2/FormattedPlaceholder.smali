.class public Landroid/icu/message2/FormattedPlaceholder;
.super Ljava/lang/Object;
.source "FormattedPlaceholder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist formattedValue:Landroid/icu/text/FormattedValue;

.field private final blacklist inputValue:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V
    .registers 5
    .param p1, "inputValue"    # Ljava/lang/Object;
    .param p2, "formattedValue"    # Landroid/icu/text/FormattedValue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p2, :cond_a

    .line 37
    iput-object p1, p0, Landroid/icu/message2/FormattedPlaceholder;->inputValue:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Landroid/icu/message2/FormattedPlaceholder;->formattedValue:Landroid/icu/text/FormattedValue;

    .line 39
    return-void

    .line 35
    :cond_a
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Should not try to wrap a null formatted value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getFormattedValue()Landroid/icu/text/FormattedValue;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/icu/message2/FormattedPlaceholder;->formattedValue:Landroid/icu/text/FormattedValue;

    return-object v0
.end method

.method public blacklist getInput()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/icu/message2/FormattedPlaceholder;->inputValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/icu/message2/FormattedPlaceholder;->formattedValue:Landroid/icu/text/FormattedValue;

    invoke-interface {v0}, Landroid/icu/text/FormattedValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
