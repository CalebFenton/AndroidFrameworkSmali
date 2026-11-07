.class public final synthetic Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->lambda$getSpans$0(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
