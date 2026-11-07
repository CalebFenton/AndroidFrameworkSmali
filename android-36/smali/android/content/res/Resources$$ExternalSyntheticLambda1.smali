.class public final synthetic Landroid/content/res/Resources$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/Resources$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/res/Resources$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    check-cast p1, Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/content/res/Resources;->lambda$dumpHistory$1(Landroid/util/ArrayMap;Landroid/content/res/Resources;)V

    return-void
.end method
