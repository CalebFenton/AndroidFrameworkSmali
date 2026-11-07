.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;

.field public final synthetic blacklist f$1:Landroid/view/ViewGroup;

.field public final synthetic blacklist f$2:Ljava/io/BufferedWriter;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$2:Ljava/io/BufferedWriter;

    iput p4, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$3:I

    iput-boolean p5, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$4:Z

    iput-boolean p6, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$5:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$2:Ljava/io/BufferedWriter;

    iget v3, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$3:I

    iget-boolean v4, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$4:Z

    iget-boolean v5, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;->f$5:Z

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->lambda$dumpViewHierarchy$5(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    return-void
.end method
