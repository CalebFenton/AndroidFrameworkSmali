.class public final synthetic Landroid/graphics/Typeface$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/Typeface$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/graphics/Typeface$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/graphics/Typeface;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/graphics/Typeface;->lambda$changeDefaultFontForTest$0(Ljava/util/ArrayList;Landroid/graphics/Typeface;Ljava/lang/String;)V

    return-void
.end method
