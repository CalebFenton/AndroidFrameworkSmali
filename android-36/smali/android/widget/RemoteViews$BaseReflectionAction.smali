.class abstract Landroid/widget/RemoteViews$BaseReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseReflectionAction"
.end annotation


# static fields
.field static final blacklist BITMAP:I = 0xc

.field static final blacklist BLEND_MODE:I = 0x11

.field static final blacklist BOOLEAN:I = 0x1

.field static final blacklist BUNDLE:I = 0xd

.field static final blacklist BYTE:I = 0x2

.field static final blacklist CHAR:I = 0x8

.field static final blacklist CHAR_SEQUENCE:I = 0xa

.field static final blacklist COLOR_STATE_LIST:I = 0xf

.field static final blacklist DOUBLE:I = 0x7

.field static final blacklist FLOAT:I = 0x6

.field static final blacklist ICON:I = 0x10

.field static final blacklist INT:I = 0x4

.field static final blacklist INTENT:I = 0xe

.field static final blacklist LONG:I = 0x5

.field static final blacklist SHORT:I = 0x3

.field static final blacklist STRING:I = 0x9

.field static final blacklist URI:I = 0xb


# instance fields
.field greylist mMethodName:Ljava/lang/String;

.field blacklist mType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 2700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2701
    iput p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    .line 2702
    iput-object p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    .line 2703
    iput p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    .line 2704
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2706
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    .line 2708
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    .line 2709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    .line 2715
    return-void
.end method


# virtual methods
.method public final blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 2735
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2736
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 2738
    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 2739
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_29

    .line 2742
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    .line 2744
    .local v2, "value":Ljava/lang/Object;
    :try_start_15
    iget-object v3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Landroid/widget/RemoteViews;->-$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-polymorphic {v3, v0, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_22

    .line 2747
    nop

    .line 2748
    return-void

    .line 2745
    :catchall_22
    move-exception v3

    .line 2746
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2740
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_29
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public final blacklist getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 11
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 2753
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2754
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_d

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1

    .line 2756
    :cond_d
    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 2757
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_79

    .line 2761
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    .line 2763
    .local v2, "value":Ljava/lang/Object;
    :try_start_19
    iget-object v3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4}, Landroid/widget/RemoteViews;->-$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 2767
    .local v3, "method":Ljava/lang/invoke/MethodHandle;
    instance-of v5, v2, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2a

    move-object v5, v2

    check-cast v5, Landroid/graphics/Bitmap;

    .line 2768
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 2771
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2a
    instance-of v5, v2, Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_47

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 2772
    .local v5, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    if-eq v6, v4, :cond_3e

    .line 2773
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_47

    .line 2774
    :cond_3e
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2775
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_47

    .line 2776
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 2780
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "icon":Landroid/graphics/drawable/Icon;
    :cond_47
    if-eqz v3, :cond_70

    .line 2781
    invoke-polymorphic {v3, v0, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v4

    .line 2782
    .local v4, "endAction":Ljava/lang/Runnable;
    if-nez v4, :cond_55

    .line 2783
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v5

    return-object v5

    .line 2786
    :cond_55
    instance-of v5, v4, Landroid/view/ViewStub$ViewReplaceRunnable;

    if-eqz v5, :cond_6a

    .line 2787
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2789
    iget v5, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, v5}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Landroid/view/ViewStub$ViewReplaceRunnable;

    iget-object v6, v6, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViews$ViewTree;->replaceView(Landroid/view/View;)V

    .line 2792
    :cond_6a
    new-instance v5, Landroid/widget/RemoteViews$RunnableAction;

    invoke-direct {v5, v4}, Landroid/widget/RemoteViews$RunnableAction;-><init>(Ljava/lang/Runnable;)V
    :try_end_6f
    .catchall {:try_start_19 .. :try_end_6f} :catchall_72

    return-object v5

    .line 2796
    .end local v3    # "method":Ljava/lang/invoke/MethodHandle;
    .end local v4    # "endAction":Ljava/lang/Runnable;
    :cond_70
    nop

    .line 2798
    return-object p0

    .line 2794
    :catchall_72
    move-exception v3

    .line 2795
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v4, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2758
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_79
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final blacklist mergeBehavior()I
    .registers 3

    .line 2803
    iget-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    const-string/jumbo v1, "smoothScrollBy"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2804
    const/4 v0, 0x1

    return v0

    .line 2806
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist prefersAsyncApply()Z
    .registers 3

    .line 2819
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 2839
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/Icon;>;"
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 2840
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2842
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_14
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2824
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_20

    goto :goto_1e

    .line 2830
    :sswitch_7
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 2831
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_1e

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    goto :goto_1e

    .line 2826
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :sswitch_13
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2827
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1e

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2835
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1e
    :goto_1e
    return-void

    nop

    :sswitch_data_20
    .sparse-switch
        0xb -> :sswitch_13
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2718
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2719
    iget-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2720
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    return-void
.end method
