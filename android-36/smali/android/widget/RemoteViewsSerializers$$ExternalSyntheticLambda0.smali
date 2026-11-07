.class public final synthetic Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/LongSparseArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;->f$0:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;->f$0:Landroid/util/LongSparseArray;

    check-cast p1, Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/widget/RemoteViewsSerializers;->lambda$createIconFromProto$0(Landroid/util/LongSparseArray;Landroid/content/res/Resources;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method
